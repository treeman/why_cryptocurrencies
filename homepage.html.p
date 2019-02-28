◊(local-require pollen/tag)
◊(define title (select-from-metas 'title here))
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>◊|title|</title>
        <link rel="stylesheet" type="text/css" href="/css/main.css" />
        <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
    </head>
    <body>
      ◊;(->html doc #:splice? #t)
      ◊;(format "DOC ~v~n" doc)
      ◊;(define html (->html doc))
      ◊;(format "HTML ~v~n" html)
      ◊(->html doc #:splice #t)
    </body>
</html>
