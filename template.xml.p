◊(define (skip-feed post)
  (select-from-metas 'skip-feed post))
◊(define (title post)
  (select-from-metas 'title post))
◊(define (subtitle post)
  (select-from-metas 'subtitle post))
◊(define (uuid post)
  (string-append
    "urn:uuid:"
    (select-from-metas 'uuid post)))
◊(define (updated post)
  (select-from-metas 'updated post))
◊(define (validate post)
  (check-meta 'title post)
  (check-meta 'uuid post)
  (check-meta 'updated post)
  post)
◊(define (check-meta sym post)
  (when (not (select-from-metas sym post))
    (printf "MISSING REQUIRED META '~a from ~a\n" sym post)))
◊(define posts
  (map validate
    (filter (λ (post)
               (not (skip-feed post)))
      (pagetree->list (get-pagetree "index.ptree")))))
◊(define (entry post)
  (->html
    `((entry
       ,@(entry-content post)
       "\n")
      "\n")))
◊(define (entry-content post)
  (add-between
    (filter-entry-content
      `((title ,(title post))
        (subtitle ,(subtitle post))
        (updated ,(updated post))
        (id ,(uuid post))
        (link ((href ,(abs-url post))))
        (content [[type "html"]] ,(feed-content post))))
    "\n\t"))
◊(define (filter-entry-content cs)
  ; We don't require subtitles be in all posts, this is a general implementation.
  (filter (λ (x)
             (cadr x))
    cs))
◊(define latest-update
   (foldr (λ (a b)
             (if (string>? a b)
                 a
                 b))
     ""
     (map updated posts)))
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
  <updated>◊|latest-update|</updated>
  ◊(map entry posts)
</feed>

