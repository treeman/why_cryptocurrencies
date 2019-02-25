#lang racket/base

(require txexpr pollen/decode pollen/misc/tutorial pollen/tag)
(require "rkt/tags.rkt")

(provide (all-from-out "rkt/tags.rkt"))
(provide (all-defined-out))

(define (root . args)
  (txexpr 'root empty (decode-elements args
    #:txexpr-elements-proc decode-paragraphs
    #:string-proc (compose1 smart-quotes smart-dashes))))

(module setup racket/base
  (require racket/runtime-path)
  (provide (all-defined-out))
  (define template-prefix "site")
  (define-runtime-path tags "rkt/tags.rkt")
  (define cache-watchlist (list tags)))


