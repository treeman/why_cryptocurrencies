◊(local-require pollen/tag)
<?xml version="1.0" encoding="utf-8" standalone="no"?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xmlns:epub="http://www.idpf.org/2007/ops">
    <head>
        <link rel="stylesheet" type="text/css" href="main.css" />
        <title>Table of Contents</title>
    </head>
    <body>
      <nav class="toc" epub:type="toc">
        <h1>Contents</h1>

        ◊(->html doc #:splice #t)
      </nav>
    </body>
</html>

