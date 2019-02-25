◊(local-require pollen/tag)
◊(define title (select-from-metas 'title here))
◊(define subtitle (select-from-metas 'subtitle here))
◊(define prev-page (previous here))
◊(define next-page (next here))
◊(define parent-page (parent here))
◊(define here-children (children here))
◊(define (make-subnav children)
  (->html
    (nav #:class "subnav"
      (apply ul
        (for/list ([child (in-list children)])
          (li (link (symbol->string child) (select-from-metas 'title child))))))))
◊(define (page-ref page)
  (->html
    (link (symbol->string page) (select-from-metas 'title page))))
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>◊|title|</title>
        <link rel="stylesheet" type="text/css" href="/css/main.css" />
        <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
    </head>
    <body>
      <article class="chapter">
        <header>
            <h1>◊|title|</h1>
            <h2>◊|subtitle|</h2>
        </header>

        ◊(->html doc #:splice? #t)

        ◊when/splice[here-children]{
            ◊(make-subnav here-children)
        }

        <nav class="movenav">
          ◊when/splice[prev-page]{
            <span class="prev">
              ← ◊page-ref{◊|prev-page|}
            </span>
          }
          ◊when/splice[next-page]{
            <span class="next">
              ◊page-ref{◊|next-page|} →
            </span>
          }
          ◊when/splice[parent-page]{
            <span class="parent">
              ◊page-ref{◊|parent-page|}
            </span>
          }
        </nav>
      </article>

    </body>
</html>
◊;←
◊;→
◊;↑
◊;↓
