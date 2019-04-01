#lang racket/base

(require txexpr pollen/decode pollen/misc/tutorial pollen/tag)
(require "rkt/tags.rkt")
(require "rkt/links.rkt")
(require "rkt/layout.rkt")

(provide (all-from-out "rkt/tags.rkt"))
(provide (all-from-out "rkt/links.rkt"))
(provide (all-from-out "rkt/layout.rkt"))
(provide (all-defined-out))

(module setup racket/base
  (require file/glob)
  (require pollen/setup)
  (require racket/runtime-path racket/path racket/set)

  (provide (all-defined-out))

  (define template-prefix "chapter")
  ;; splice-me needs to NOT be a block tag to allow us to inject
  (define block-tags (cons 'img default-block-tags))

  ;; Ignore stuff during 'raco pollen publish'
  (define publish-directory "/tmp/why_cryptocurrencies/")
  (define omitted-paths
    (list->set (map (λ (sub)
                       (build-path publish-directory sub))
                    `("img-src"
                      "sass"
                      "wip"
                      "rkt"
                      "plots"
                      "clean"
                      "sass-update"
                      "README.md"))))
  (define omitted-path? (λ (path)
                           (set-member? omitted-paths path)))

  (define rkt-files (glob "rkt/*.rkt"))
  (define cache-watchlist rkt-files))

