#lang racket/base

(require txexpr pollen/decode pollen/misc/tutorial pollen/tag)
(require racket/list racket/string)
(require gregor)
(require "rkt/decode.rkt")
(require "rkt/feed.rkt")
(require "rkt/index.rkt")
(require "rkt/layout.rkt")
(require "rkt/links.rkt")
(require "rkt/sidenotes.rkt")
(require "rkt/tags.rkt")
(require "rkt/toc.rkt")
(require "rkt/refs.rkt")

(provide (all-from-out racket/list racket/string)) ; make util functions available
(provide (all-from-out gregor))
(provide (all-from-out "rkt/decode.rkt"))
(provide (all-from-out "rkt/feed.rkt"))
(provide (all-from-out "rkt/index.rkt"))
(provide (all-from-out "rkt/layout.rkt"))
(provide (all-from-out "rkt/links.rkt"))
(provide (all-from-out "rkt/sidenotes.rkt"))
(provide (all-from-out "rkt/tags.rkt"))
(provide (all-from-out "rkt/toc.rkt"))
(provide (all-from-out "rkt/refs.rkt"))
(provide (all-defined-out))

(module setup racket/base
  (require file/glob)
  (require pollen/setup)
  (require racket/runtime-path racket/path racket/set)
  (require racket/pretty)
  (require "rkt/index.rkt")

  (provide (all-defined-out))

  (define template-prefix "chapter")
  (define block-tags (append '(img table tbody tr dt dd dl) default-block-tags))

  ;; Use our own publish script instead...
  ;; Ignore stuff during 'raco pollen publish'
  ;(define publish-directory "/tmp/why_cryptocurrencies/")
  ;(define omitted-paths
    ;(list->set (map (λ (sub)
                       ;(build-path publish-directory sub))
                    ;`("img-src"
                      ;"sass"
                      ;"wip"
                      ;"rkt"
                      ;"plots"
                      ;"clean"
                      ;"sass-update"
                      ;"sync"
                      ;"_site"
                      ;"generate"
                      ;"README.md"))))
  ;(define omitted-path? (λ (path)
                           ;(set-member? omitted-paths path)))

  (define rkt-files (glob "rkt/*.rkt"))
  (define cache-watchlist rkt-files))

