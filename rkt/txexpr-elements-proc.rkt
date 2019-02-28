#lang racket/base

(require txexpr pollen/decode)
(require "paragraphs.rkt")


(provide txexpr-elements-proc)

;(define txexpr-elements-proc decode-paragraphs)
(define txexpr-elements-proc decode-p)


