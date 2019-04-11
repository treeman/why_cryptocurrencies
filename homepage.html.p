◊(local-require pollen/tag)
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>◊|main-title|</title>
        <link rel="stylesheet" type="text/css" href="/css/main.css" />
        <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
        <link rel="alternate" type="application/atom+xml" title="Atom 0.3" href="/feed.xml" />
    </head>
    <body>
      <div class="homepage">
        <header>
          <h1>Why Cryptocurrencies?</h1>
          <h2>Jonas Hietala</h2>
        </header>

        ◊(->html doc #:splice #t)

        ◊(->html follow-section)
      </div>
    </body>
</html>
