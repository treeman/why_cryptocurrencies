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
          <span class="">
            There's a mailing list if you want to get updated:
          </span>
          <form id="f-subscribe">
            <input id="email" class="email" value="" name="email" placeholder="Your email address"/>
            <input id="subscribe" class="submit" type="submit" value="Sign me up!" name="subscribe"/>
          </form>
          <span class="">
            Or you can use the ◊(->html ◊link[rss-feed]{RSS feed}).
          </span>
          <span class="">
            The source code for this site is ◊(->html ◊link[source-code]{on Github}). New chapters will get added via pull requests which is another way to get updates.
          </span>
        </footer>
      </div
    </body>
</html>
