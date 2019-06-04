#lang racket/base

(require txexpr pollen/decode pollen/template/html pollen/core)
(require racket/match racket/list)
(require racket/pretty)
(require "post-process.rkt")

(provide feed-summary)

(define (feed-summary post)
  ; Remove some elements that don't render so well in feed context.
  (define html
    (->html (decode-elements
              (summary (get-doc post))
              #:txexpr-elements-proc (elem-remover '("donations"
                                                     "margin-toggle"
                                                     "sidenote"
                                                     "marginnote"
                                                     "subscribe")))
      #:splice? #t))
  ; Wrap html in CDATA tag as it might ge interpreted as XML tags.
  (string-append
    "<![CDATA["
    html
    "]]>"))

; Define the summary of a post as everything up until the first h2 tag
(define (summary post)
  (match post
    [(cons 'root xs)
       (append
         '(root)
         (takef xs (λ (x)
                      (match x
                        [(cons 'h2 _) #f]
                        [else #t])))
         `((p "...")))]
    [else (error "Expected root to begin post")]))

(module+ test
  (require rackunit)
  (define post `(root (div "x")
                      (div (h1 "title") (h2 "subtitle"))
                      (p "some stuff")
                      (h2 "TITLE")
                      (p "rest of stuff")))

  (define expected `(root (div "x")
                          (div (h1 "title") (h2 "subtitle"))
                          (p "some stuff")
                          (p "...")))
  (check-equal? (summary post) expected)
  )

