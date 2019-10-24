#lang racket/base

(require txexpr pollen/decode)
(require racket/match racket/list racket/string)

(provide register-replacement replace-stubs)
(provide expand-splices)
(provide elem-remover)

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

;; Remove all elements with matching class.
(define (elem-remover classes)
  (λ (es)
     (filter (λ (x)
                (not (matches-class x classes)))
        es)
     ))

(define (matches-class e classes)
  (if (txexpr? e)
    (has-class e classes)
    #f))

(define (has-class tx classes)
  (define c (attr-ref tx 'class #f))
  (if c
    (let ((cs (string-split c)))
      (not (empty?
        (filter (λ (x)
                   (member x classes))
          cs))))
    #f))

(module+ test
  (require rackunit)
  (define remover (elem-remover '("x" "y")))
  (check-equal? (has-class `(div "foo") `("x" "y"))
                #f)
  (check-equal? (has-class `(div ((class "x")) "foo") `("x" "y"))
                #t)
  (check-equal? (has-class `(div ((class "a x b")) "foo") `("x" "y"))
                #t)
  (check-equal? (remover
                  `((div "foo") (div ((class "a")) "bar") (div ((class "x")) "quux")))
                `((div "foo") (div ((class "a")) "bar")))
  (check-equal? (remover
                  `("string"))
                `("string"))
  )

