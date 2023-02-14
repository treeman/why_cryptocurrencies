◊(local-require pollen/tag)
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xmlns:epub="http://www.idpf.org/2007/ops">
    <head>
        <meta charset="utf-8" />
        <title>Table of Contents</title>
        <link rel="stylesheet" type="text/css" href="main.css"></link>
        <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
        <meta name="description" content="◊|description|" />
        <meta name="keywords" content="◊|keywords|" />
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png"></link>
        <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png"></link>
    </head>
    <body>
      ◊(->html doc #:splice #t)
    </body>
</html>
