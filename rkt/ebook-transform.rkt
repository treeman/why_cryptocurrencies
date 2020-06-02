#lang racket/base

(require txexpr)

(provide (all-defined-out))

(define (ebook-transform x)
  (map transform-expr x))

(define (transform-expr e)
  ;(printf "e: ~a~n" e)
  (if (txexpr? e)
    (if (eq? (get-tag e) 'li)
      (txexpr 'li
              (get-attrs e)
              (strip-first-p (get-elements e)))
      e)
    e))

(define (strip-first-p es)
  ;(printf "es: ~a~n" es)
  ;(printf "car: ~a~n" (car es))
  ;(printf "car: ~a~n" (cdr es))
  (if (null? es)
    es
    (append (strip-p (car es))
            (cdr es))))

(define (strip-p x)
  ;(printf "strip ~a~n" x)
  (if (txexpr? x)
    (if (eq? (get-tag x) 'p)
      (get-elements x)
      (list x))
    (list x)))

(module+ test
  (require rackunit)
  (check-equal? (ebook-transform `((div "foo")))
                `((div "foo")))
  (check-equal? (ebook-transform `((li (p "one") (p "two"))))
                `((li "one" (p "two"))))
  (check-equal? (ebook-transform `((li "x")))
                `((li "x")))
  (check-equal? (ebook-transform `((li "a" "b" "c")))
                `((li "a" "b" "c")))
  )

