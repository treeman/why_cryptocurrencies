◊(local-require pollen/tag)
◊(define title (select-from-metas 'title here))
◊(define head-title
   (if title
     (string-append main-title ": " title)
     (error (format "unknown title for ~v~n" here))))
◊(define subtitle (select-from-metas 'subtitle here))
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
<?xml version="1.0" encoding="utf-8" standalone="no"?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xmlns:epub="http://www.idpf.org/2007/ops">
    <head>
        <link rel="stylesheet" type="text/css" href="main.css" />
        <title>◊|head-title|</title>
    </head>

    <body>
      <article class="◊|article-class|">
        <div class="header">
          <h1>◊|title|</h1>
          <div class="subtitle">◊|subtitle|</div>
        </div>

        ◊(->html doc #:splice? #t)

        ◊(->html (make-section-nav #:section-header? section-chapters-headers?
                                    here))
      </article>
    </body>
</html>
◊;←
◊;→
◊;↑
◊;↓

