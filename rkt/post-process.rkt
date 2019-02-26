#lang racket/base

(require txexpr pollen/decode pollen/misc/tutorial pollen/tag)
(require "tags.rkt")

;(provide (all-defined-out))
(provide root)


; Replace "/index.html" with ""
; Replace "..." with ellipsis
(define (root . args)
  (txexpr 'root empty (decode-elements args
    #:txexpr-elements-proc decode-paragraphs
    #:entity-proc replace-notes
    #:string-proc (compose1 smart-quotes smart-dashes))))

