#lang racket/base

(require pollen/misc/tutorial)
(require racket/string)

(provide string-proc)

(define (ellipses x)
  (string-replace x "..." "…"))

(define (de-indexify x)
  (string-replace x "/index.html" ""))

(define string-proc (compose1 smart-quotes
                              smart-dashes
                              ellipses
                              de-indexify))

