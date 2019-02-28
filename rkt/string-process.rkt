#lang racket/base

(require pollen/misc/tutorial)

(provide string-proc)

(define string-proc (compose1 smart-quotes smart-dashes))

