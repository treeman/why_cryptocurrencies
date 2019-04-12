#lang racket/base

(require txexpr pollen/decode pollen/template/html pollen/core)
(require "post-process.rkt")

(provide (all-defined-out))

(define (feed-content post)
  ; Remove some elements that don't render so well in feed context.
  (define html
    (->html (decode-elements
              (get-doc post)
              #:txexpr-elements-proc (elem-remover '("donations"
                                                     "margin-toggle"
                                                     "sidenote"
                                                     "marginnote")))
      #:splice? #t))
  ; Wrap html in CDATA tag as it might ge interpreted as XML tags.
  (string-append
    "<![CDATA["
    html
    "]]>"))

