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
      <div class="homepage">
        <header>
          <h1>Why Cryptocurrencies?</h1>
          <h2>Jonas Hietala</h2>
        </header>

        ◊(->html doc #:splice #t)

        <footer>
          Free from trackers, ads and any other cost.
        </footer>
      </div
    </body>
</html>
