#lang racket/base
(require txexpr pollen/decode pollen/misc/tutorial pollen/tag)
(require racket/match)

(provide (all-defined-out))

(define (root . args)
  (txexpr 'root empty (decode-elements args
    #:txexpr-elements-proc decode-paragraphs
    #:string-proc (compose1 smart-quotes smart-dashes))))

(define (ch-header title subtitle)
  `(header (h1 ,title)
           (h2 ,subtitle)))

(define (link . args)
  (match args
    [(list url text)
       `(a ((href ,url)) ,text)]
    [(list url)
       `(a ((href ,url)) ,url)]))

(define (subhead txt)
  `(h2 ,txt))

(module setup racket/base
  (require racket/runtime-path)
  (require file/glob)

  (provide (all-defined-out))
  ;(define main-export 'doc)
  (define template-prefix "site")

  ; https://docs.racket-lang.org/reference/Filesystem.html#%28form._%28%28lib._racket%2Fruntime-path..rkt%29._define-runtime-path%29%29
  ; TODO loop through and search for all .scss bindings
  ;(define-runtime-path global-scss "css/global.scss")
  ;(define cache-watchlist (list global-scss))

  (define scss-files (glob "css/*.scss"))
  (define cache-watchlist scss-files)

  )


