◊(local-require pollen/tag)
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>◊|main-title|</title>
        <link rel="stylesheet" type="text/css" href="/css/main.css" />
        <link rel="alternate" type="application/atom+xml" title="Atom 0.3" href="/feed.xml" />
        <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
        <meta name="description" content="◊|description|">
        <meta name="keywords" content="◊|keywords|">
    </head>
    <body>
      <div class="homepage">
        <header>
          <h1>◊|main-title|</h1>
          <h2>◊|subtitle|</h2>
        </header>

        ◊(->html doc #:splice #t)
      </div>

      <footer class="homepage-footer">
        <nav class="buy">
          <a href="/" title="Print or ebook">Check out the print or ebook!</a>
        </nav>

        ◊(->html follow-section)
      </footer>
    </body>
</html>
