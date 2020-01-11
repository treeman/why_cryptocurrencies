#lang racket/base

(require pollen/tag pollen/decode txexpr)
(require "string-process.rkt")

(provide (all-defined-out))

(define (test x)
  ;(printf "~v~n"x)
  x)

(define (std-decode args)
  (define a (decode-elements args
                               #:txexpr-elements-proc decode-paragraphs
                               #:string-proc string-proc
                               #:exclude-tags `(figure pre)))
  (define b (decode-elements a
                             #:txexpr-proc test))
  b)

