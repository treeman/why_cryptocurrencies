◊(local-require pollen/tag)
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xmlns:epub="http://www.idpf.org/2007/ops">
    <head>
        <meta charset="utf-8" />
        <title>◊|main-title|</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
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
