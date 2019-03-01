#lang racket/base

(require txexpr pollen/decode pollen/misc/tutorial pollen/tag)
(require "rkt/tags.rkt")
(require "rkt/links.rkt")

(provide (all-from-out "rkt/tags.rkt"))
(provide (all-from-out "rkt/links.rkt"))
(provide (all-defined-out))

(module setup racket/base
  (require file/glob)
  (require racket/runtime-path)
  (require pollen/setup)

  (provide (all-defined-out))

  (define template-prefix "site")
  ;; splice-me needs to NOT be a block tag to allow us to inject
  ;; elements inside paragraphs
  ;(define block-tags (cons 'splice-me default-block-tags))

  (define rkt-files (glob "rkt/*.rkt"))
  (define cache-watchlist rkt-files))

