◊(local-require pollen/tag)
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>◊|main-title|</title>
        <link rel="stylesheet" type="text/css" href="/css/main.css" />
        <link rel="alternate" type="application/atom+xml" title="Atom 0.3" href="/feed.xml" />
        <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
        <meta name="description" content="An explanation on why cryptocurrencies were created, what they do differently and why they matter. Instead of focusing on the speculative side, we focus on actual use cases of cryptocurrencies and what they can do for us.">
        <meta name="keywords" content=◊|keywords|>
    </head>
    <body>
      <div class="homepage">
        <header>
          <h1>Why Cryptocurrencies?</h1>
          <h2>Why they exist, what they do and why they matter</h2>
        </header>

        ◊(->html doc #:splice #t)

        ◊(->html follow-section)
      </div>
    </body>
</html>
