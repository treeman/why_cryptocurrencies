#lang racket/base

(require "string-proc.rkt")
(require "entity-proc.rkt")
(require "txexpr-elements-proc.rkt")

(require txexpr pollen/decode)

;; FIXME
;; Replace "/index.html" with ""
;; Replace "..." with ellipsis
(define (root . args)
  (txexpr 'root empty (decode-elements args
    #:txexpr-elements-proc txexpr-elements-proc
    #:entity-proc entity-proc
    #:string-proc string-proc)))

