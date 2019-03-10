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

        <section class="follow">
          <div class="wip">
            The book is a work in progress. If you want to keep up to date:
          </div>
          ◊(->html subscription-form)
          <div class="links">
            See the ◊(->html ◊link[rss-feed]{RSS feed}), source code on ◊(->html ◊link[source-code]{Github}) or ◊(->html ◊link[mailto]{contact me}).
          </div>
        </section>
      </div
    </body>
</html>
