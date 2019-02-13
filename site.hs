{-# LANGUAGE OverloadedStrings #-}
-- Workaround for new ghc features.
-- I'm not smart enough to figure out how to modify the code for this.
{-# LANGUAGE FlexibleContexts #-}

--import Control.Applicative ((<$>))
--import Data.Monoid (mappend, mconcat, (<>))
--import Data.Char (toLower)
import Data.List (isSuffixOf)
--import Data.List.Utils (replace)
--import Data.Ord (comparing)
import System.FilePath  (dropExtension)

import Hakyll
import Text.Sass.Options


main :: IO ()
main = hakyllWith defaultConfiguration $ do
    match ("images/**" .||. "fonts/**") $ do
        route   idRoute
        compile copyFileCompiler

    match "templates/*" $ compile templateCompiler

    match "css/*.scss" $ do
        compile getResourceBody

    -- Enable hot reload when changing an imported stylesheet
    scssDependencies <- makePatternDependency "css/*.scss"
    rulesExtraDependencies [scssDependencies] $ do
        create ["css/main.css"] $ do
            route   idRoute
            compile sassCompiler

    match "chapters/*.markdown" $ do
        route   chapterRoute
        compile $ pandocCompiler
            >>= return . fmap demoteHeaders
            >>= loadAndApplyTemplate "templates/chapter.html" chapterCtx
            >>= loadAndApplyTemplate "templates/site.html" siteCtx
            >>= deIndexUrls

    create ["index.html"] $ do
        let pattern = "chapters/*.markdown"

        route idRoute
        compile $ do
            chapters <- renderChapterList pattern
            let ctx = mconcat
                    [ constField "chapters" chapters
                    , siteCtx
                    ]

            makeItem ""
                >>= loadAndApplyTemplate "templates/homepage.html" ctx
                >>= loadAndApplyTemplate "templates/site.html" siteCtx
                >>= deIndexUrls


sassCompiler :: Compiler (Item String)
sassCompiler = loadBody "css/main.scss"
                >>= makeItem
                >>= withItemBody (unixFilter "sassc" args)
    where args = ["-s", "-I", "css/", "--style", "compressed"]


siteCtx :: Context String
siteCtx = mconcat
    [ defaultContext
    --, constField "mail" mail
    --, constField "name" name
    --, constField "gpg" "http://pgp.mit.edu/pks/lookup?op=get&search=0x48347567AD15CC54"
    --, metaKeywordCtx
    ]


chapterCtx :: Context String
chapterCtx = mconcat
    [ siteCtx
    , dateField "date" "%B %e, %Y"
    , dateField "ymd" "%F"
    ]


chapterRoute :: Routes
chapterRoute = replaceChapters `composeRoutes`
               dropIndexRoute


replaceChapters :: Routes
replaceChapters = gsubRoute "chapters/" (const "")


-- Move to subdirectories to avoid extensions in links.
dropIndexRoute :: Routes
dropIndexRoute = customRoute $
     (++ "/index.html") . dropExtension . toFilePath


deIndexUrls :: Item String -> Compiler (Item String)
deIndexUrls item = return $ fmap (withUrls stripIndex) item


stripIndex :: String -> String
stripIndex url =
    if "index.html" `isSuffixOf` url && elem (head url) ['/', '.']
    then take (length url - 10) url
    else url


renderChapterList :: Pattern -> Compiler String
renderChapterList pattern = do
    chapters <- loadAll pattern -- fixme sort somehow
    loadAndApplyTemplateList "templates/chapter-item.html" chapterCtx chapters


loadAndApplyTemplateList :: Identifier
                         -> Context a
                         -> [Item a]
                         -> Compiler String
loadAndApplyTemplateList i c is = do
    t <- loadBody i
    applyTemplateList t c is

