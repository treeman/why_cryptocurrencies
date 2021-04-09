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
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    </head>
    <body>
      <div class="landing">
        ◊(->html doc #:splice #t)
      </div>
    </body>
</html>
