#lang racket/base

(provide root)

(require "string-proc.rkt")
(require "entity-proc.rkt")
(require "txexpr-elements-proc.rkt")
(require "tags.rkt")

(require txexpr pollen/decode)
(require racket/match racket/list)

(define (splice-me? x)
  (match x
    [(cons 'splice-me _) #t]
    [else #f]))

;; Expand '(splice-me ...) into surrounding list
(define (expand-splices in)
  (if (list? in)
    (foldr (λ (x acc)
              (printf "x: ~v~n" x)
              (if (splice-me? x)
                (append (expand-splices (cdr x)) acc)
                (cons (expand-splices x) acc)))
           '()
           in)

    in))

;; FIXME
;; Replace "/index.html" with ""
;; Replace "..." with ellipsis
(define (root . args)
  (define decoded (decode-elements args
    #:txexpr-elements-proc txexpr-elements-proc
    ;#:entity-proc entity-proc
    #:entity-proc replace-stubs
    #:string-proc string-proc))

  ;; Expand splices afterwards
  ;; 'splice-me is consired inline so doesn't break paragraph calculations
  (txexpr 'root empty (expand-splices decoded)))

