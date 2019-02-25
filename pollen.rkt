#lang racket/base

(require "rkt/tags.rkt")
(provide (all-from-out "rkt/tags.rkt"))

(require txexpr pollen/decode pollen/misc/tutorial)

(define (root . args)
  (txexpr 'root empty (decode-elements args
    #:txexpr-elements-proc decode-paragraphs
    #:string-proc (compose1 smart-quotes smart-dashes))))

(module setup racket/base
  (require racket/runtime-path)

  (provide (all-defined-out))
  ;(define main-export 'doc)
  (define template-prefix "site")
  )


