#lang racket/base

(require txexpr pollen/decode)
(require racket/match racket/list racket/string)

(provide elem-remover style-remover)


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

(define (remove-attr attrs attr-to-remove)
  (filter (λ (x)
             (not (eq? (car x) attr-to-remove)))
          attrs))

(define (style-remover tx)
  (txexpr (get-tag tx)
          (remove-attr (get-attrs tx) 'style)
          (get-elements tx)))


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

  (check-equal? (remove-attr `((class "class")) 'style)
                '((class "class")))
  (check-equal? (remove-attr `((style "style") (class "class")) 'style)
                '((class "class")))
  (check-equal? (remove-attr `((style "style")) 'style)
                '())

  (check-equal? (style-remover `(div ((class "x") (style "style"))))
                '(div ((class "x"))))
  )

