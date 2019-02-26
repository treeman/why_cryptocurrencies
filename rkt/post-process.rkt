#lang racket/base

(require txexpr pollen/decode pollen/misc/tutorial pollen/tag)

(provide (all-defined-out))

; Replace "/index.html" with ""
; Replace "..." with ellipsis
(define (root . args)
  (txexpr 'root empty (decode-elements args
    #:txexpr-elements-proc decode-paragraphs
    #:string-proc (compose1 smart-quotes smart-dashes))))

