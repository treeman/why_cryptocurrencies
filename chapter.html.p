◊(local-require pollen/tag)
◊(define title (select-from-metas 'title here))
◊(define head-title
   (if title
     (string-append main-title ": " title)
     (error (format "unknown title for ~v~n" here))))
◊(define (str->date-display text x)
  (if x
    (string-append text " " (~t (iso8601->date x) "MMMM d, y"))
    ""))
◊(define subtitle (select-from-metas 'subtitle here))
◊(define published-date (select-from-metas 'published here))
◊(define published (str->date-display "Published" published-date))
◊(define updated-date (select-from-metas 'updated here))
◊(define updated
   (if (or (not updated-date) (string=? published-date updated-date))
       #f
       (str->date-display "Updated" (select-from-metas 'updated here))))
◊(define side-space? (not (select-from-metas 'no-side-space here)))
◊(define section-chapters-headers? (not (select-from-metas 'no-section-chapters-header here)))
◊(define article-class
   ; This used to be on <article> but is now on main. Meh.
   (let ((extra (select-from-metas 'extra-article-class here)))
     (if extra
         (string-append "chapter " extra)
         "chapter")))
◊(define article-type
  (let ((type (select-from-metas 'article-type here)))
    (if type
      type
      "chapter")))

◊(define prev-page
   (let ((p (previous here)))
     (if (equal? p 'index.html)
         #f
         p)))
◊(define prev-title
   (if prev-page
     (select-from-metas 'title prev-page)
     #f))
◊(define next-page (next here))
◊(define next-title
   (if next-page
     (select-from-metas 'title next-page)
     #f))
◊(define parent-page (parent here))
◊(define parent-title
   (if parent-page
     (select-from-metas 'title parent-page)
     #f))
◊(define (ref page title txt)
  (->html
    (make-link #:title title (string-append "/" (symbol->string page)) txt)))
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xmlns:epub="http://www.idpf.org/2007/ops">
    <head>
        <meta charset="utf-8" />
        <title>◊|head-title|</title>
        <link rel="stylesheet" type="text/css" href="main.css"></link>
        <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
        <meta name="keywords" content="◊|keywords|" />
    </head>
    <body>
      <main class="◊|article-class|">
        <nav class="where">
          <a href="/toc.xhtml" title="Table of contents" class="home">Why Cryptocurrencies?</a>
          ◊when/splice[parent-page]{
            <span class="divider">/</span>
            ◊(ref parent-page parent-title parent-title)
          }
        </nav>
        <article epub:type="◊|article-type|">
          <header>
            <h1 epub:type="title">◊|title|</h1>
            <h2 epub:type="subtitle">◊|subtitle|</h2>
          </header>

          ◊(->html doc #:splice? #t)
        </article>

        ◊(->html (make-section-nav #:section-header? section-chapters-headers?
                                    here))
      </main>

      ◊(when side-space? (->html `(div ((class "side-space")))))

      <footer>
        <nav class="movenav">
          ◊when/splice[prev-page]{
            <span class="prev">
              ◊(ref prev-page prev-title (string-append  "← " prev-title))
              ◊;(ref prev-page "← Previous page")
            </span>
          }
          <span class="middle">
            ◊when/splice[parent-page]{
              <span class="parent">
                ◊;(ref parent-page "Chapter")
                ◊(ref parent-page parent-title "↑ Part")
              </span>
            }
            <span class="home">
              <a href="/toc.xhtml" title="Table of contents">~ Home</a>
            </span>
          </span>

          ◊when/splice[next-page]{
            <span class="next">
              ◊;(ref next-page "Next page →")
              ◊(ref next-page next-title (string-append next-title " →"))
            </span>
          }
        </nav>

        ◊;<div class="buy-wrapper">
          ◊;<div class="buy">
            ◊;<p>This is a book that tries to explain the utility of cryptocurrencies in a beginner-friendly manner.</p>

            ◊;<p><a href="/" title="Print or ebook">Check out the print or ebook!</a></p>
          ◊;</div>
        ◊;</div>

        ◊;<div class="follow-wrapper">
          ◊;◊(->html follow-section)
        ◊;</div>

      </footer>

    </body>
</html>
◊;←
◊;→
◊;↑
◊;↓

