◊(local-require pollen/tag)
◊(define title (select-from-metas 'title here))
◊(define head-title (string-append main-title ": " title))
◊(define subtitle (select-from-metas 'subtitle here))
◊(define side-space? (not (select-from-metas 'no-side-space here)))
◊(define section-chapters-headers? (not (select-from-metas 'no-section-chapters-header here)))
◊(define article-class
   (let ((extra (select-from-metas 'extra-article-class here)))
     (if extra
         (string-append "chapter " extra)
         "chapter")))
◊(define prev-page
   (let ((p (previous here)))
     (if (equal? p 'index.html)
         #f
         p)))
◊(define next-page (next here))
◊(define parent-page (parent here))
◊(define (ref page txt)
  (->html
    (link (string-append "/" (symbol->string page)) txt)))
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>◊|head-title|</title>
        <link rel="stylesheet" type="text/css" href="/css/main.css" />
        <link rel="alternate" type="application/atom+xml" title="Atom 0.3" href="/feed.xml" />
        <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
        <meta name="keywords" content=◊|keywords|>
    </head>
    <body>
      <article class="◊|article-class|">
        <nav class="where">
          <a href="/" class="home">Why Cryptocurrencies?</a>
          ◊when/splice[parent-page]{
            <span class="divider">/</span>
            ◊(ref parent-page (select-from-metas 'title parent-page))
          }
        </nav>
        <header>
          <h1>◊|title|</h1>
          <h2>◊|subtitle|</h2>
        </header>

        ◊(->html doc #:splice? #t)

        ◊(->html (make-section-nav #:section-header? section-chapters-headers?
                                    here))
      </article>

      ◊(when side-space? (->html `(div ((class "side-space")))))

      <nav class="edge-wrapper">
        ◊when/splice[prev-page]{
          <a class="prev-pan" href="/◊(symbol->string prev-page)">
            <span class="content"> ‹ </span>
          </a>
        }
        ◊when/splice[next-page]{
          <a class="next-pan" href="/◊(symbol->string next-page)">
            <span class="content"> › </span>
          </a>
        }
      </nav>

      <footer>
        <nav class="movenav">
          ◊when/splice[prev-page]{
            <span class="prev">
              ◊(ref prev-page (string-append  "← " (select-from-metas 'title prev-page)))
              ◊;(ref prev-page "← Previous page")
            </span>
          }
          <span class="middle">
            ◊when/splice[parent-page]{
              <span class="parent">
                ◊;(ref parent-page "Chapter")
                ◊(ref parent-page "↑ Section")
              </span>
            }
            <span class="home">
              <a href="/">~ Home</a>
            </span>
          </span>

          ◊when/splice[next-page]{
            <span class="next">
              ◊;(ref next-page "Next page →")
              ◊(ref next-page (string-append (select-from-metas 'title next-page) " →"))
            </span>
          }
        </nav>

        <div class="follow-wrapper">
          ◊(->html follow-section)
        </div>

      </footer>

    </body>
</html>
◊;←
◊;→
◊;↑
◊;↓

