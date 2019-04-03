◊(define posts (pagetree->list (get-pagetree "index.ptree")))
◊(define (skip-feed post)
  (select-from-metas 'skip-feed post))
◊(define (title post)
  (select-from-metas 'title post))
◊(define (subtitle post)
  (select-from-metas 'subtitle post))
◊(define (uuid post)
  (select-from-metas 'uuid post))
◊(define (updated post)
  (select-from-metas 'updated post))
◊(define (summary post)
  ; Wrap html in CDATA tag as it might ge interpreted as XML tags.
  ; Also yes we embedd the full post in our RSS.
  (string-append
    "<![CDATA["
    (->html (get-doc post) #:splice? #t)
    "]]>"))
◊(define (entry post)
  (if (skip-feed post)
    `()
    (->html
      `((entry
         ,@(entry-content post)
         "\n")
        "\n"))))
◊(define (entry-content post)
  (add-between
    (filter-entry-content
      `((title ,(title post))
        (subtitle ,(subtitle post))
        (updated ,(updated post))
        (id ,(uuid post))
        (link ((href ,(abs-url post))))
        (summary [[type "html"]] ,(summary post))))
    "\n\t"))
◊(define (filter-entry-content cs)
  ; We don't require subtitles be in all posts, this is a general implementation.
  ; But maybe we should disallow missing uuid and updated date?
  (filter (λ (x)
             (cadr x))
    cs))
<?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom">
  <title>◊|main-title|</title>
  <link href="◊(abs-url here)" rel="self"/>
  <link href="◊|root-url|"/>
  <author>
    <name>Jonas Hietala</name>
    <email>◊|email|</email>
  </author>
  <id>◊(uuid here)</id>
  <updated></updated>
  ◊(map entry posts)
</feed>

