#lang racket/base

(require txexpr pollen/decode pollen/misc/tutorial pollen/tag)

(provide (all-defined-out))


(require racket/list
         racket/match
         sugar/list
         sugar/define
         sugar/test)

;(define+provide/contract (replace-notes x)
(define (replace-notes x)
  ;(txexpr-elements? . -> . txexpr-elements?)
  ;(let loop ([x x])
    ;(match x
      ;[(? pair? x) #:when (not (attrs? x))
                   ;(define xs (map loop (filter-not empty-string? x)))
                   ;(append-map merge-newline-slice x)]
      ;[_ x])))
  (match x
    [(? symbol?) 
       (if (equal? x 'mn-wp)
           "FOUND IT!"
           x)]
    [else x]))


; Replace "/index.html" with ""
; Replace "..." with ellipsis
(define (root . args)
  (txexpr 'root empty (decode-elements args
    #:txexpr-elements-proc decode-paragraphs
    #:entity-proc replace-notes
    #:string-proc (compose1 smart-quotes smart-dashes))))

