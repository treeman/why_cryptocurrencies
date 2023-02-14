#lang racket/base

(require pollen/tag pollen/decode txexpr)
(require "string-process.rkt")
(require racket/pretty)

(provide (all-defined-out))

(define (std-decode args)
  (decode-elements args
                   #:txexpr-elements-proc decode-paragraphs
                   #:string-proc string-proc
                   #:exclude-tags `(figure pre nav)))

