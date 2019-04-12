#lang racket/base

(require txexpr pollen/decode)
(require racket/match racket/list)

(provide register-replacement replace-stubs)
(provide expand-splices)

;; Register symbols which gets inline replaced
;; by function return values.
(define replacements (make-hash))
(define (register-replacement sym f)
  (hash-set! replacements sym f))

(define (replace-stubs x)
  (let ((f (hash-ref replacements x #f)))
    (if f
      (f x)
      x)))

;; A splicing tag to support returning multiple inline
;; values. So '((splice-me "a" "b")) becomes '("a" "b")
(define (splice-me? x)
  (match x
    [(cons 'splice-me _) #t]
    [else #f]))

;; Expand '(splice-me ...) into surrounding list
(define (expand-splices in)
  (if (list? in)
    (foldr (λ (x acc)
              (if (splice-me? x)
                (append (expand-splices (cdr x)) acc)
                (cons (expand-splices x) acc)))
           '()
           in)

    in))


