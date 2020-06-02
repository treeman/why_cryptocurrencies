◊(local-require pollen/tag)
<?xml version="1.0" encoding="utf-8" standalone="no"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
  "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="main.css" />
        <title>Table of Contents</title>
    </head>
    <body>
      <div class="homepage" xmlns:epub="http://www.idpf.org/2007/ops" epub:type="frontmatter toc">
        <div class="header">
          <h1>Contents</h1>
        </div>

        ◊(->html doc #:splice #t)
      </div>
    </body>
</html>
