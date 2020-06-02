#lang racket/base

(require pollen/tag pollen/decode txexpr)
(require "string-process.rkt")
(require "ebook-transform.rkt")
(require racket/pretty)

(provide (all-defined-out))

(define (std-decode args)
  (decode-elements args
                   #:txexpr-elements-proc (compose1 decode-paragraphs
                                                    ebook-transform)
                   #:string-proc string-proc
                   #:exclude-tags `(figure pre)))

