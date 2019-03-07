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
          <form id="f-subscribe" class="subscribe">
            <input id="email" class="email" value="" name="email"
                   placeholder="Enter your email to join the mailing list"/>
            <input id="subscribe" class="submit" type="submit" value="Subscribe"
                   name="subscribe"/>
          </form>
          <div class="links">
            See the ◊(->html ◊link[rss-feed]{RSS feed}) and source code on ◊(->html ◊link[source-code]{Github}).
          </div>
        </section>
      </div
    </body>
</html>
