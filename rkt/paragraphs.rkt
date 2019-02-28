#lang racket/base

(provide decode-p)

(require rackunit racket/match racket/list)
(require pollen/decode sugar/list)

(define (split-p in)
  (define paragraph-separator "\n\n")
  (define (paragraph-break? x)
    (define paragraph-pattern (pregexp (format "^~a+$" paragraph-separator)))
    (match x
      [(pregexp paragraph-pattern) #true]
      [_ #false]))

  (define (try-cons x xs)
    (if (null? x)
      xs
      (cons x xs)))

  ;(printf "in: ~v~n" in)

  (struct data (group res) #:prefab)
  ;; Add group list to result list in data.
  ;; Needs to be reversed as it's constructed as a stack during foldl traversal.
  (define (move-group group res)
    (try-cons (reverse group) res))

  (define (separate xs)
    (define d
      (foldl (λ (x acc)
                ;(printf "x: ~v,  acc: ~v~n" x acc)
                (let ((group (data-group acc))
                      (res (data-res acc)))
                  ;(printf "group: ~v,  res: ~v~n" group res)
                  (cond ((block-txexpr? x)
                         ;(printf "  block-txexpr\n")
                         (define y (data '()
                                         (cons x (move-group group res))))
                         ;(printf "   y: ~v \n" y)
                         y)
                        ((paragraph-break? x)
                         ;(printf "  paragraph break\n")
                         ; If we find a paragraph break store the existing group
                         ; and start a new, but skip the paragraph break.
                         (define y (data '()
                                         (move-group group res)))
                         ;(printf "   y: ~v \n" y)
                         y)
                        (#t
                         ;(printf "  #t\n")
                         ; Append to the current group.
                         (define y (data (cons x group)
                                         res))
                         ;(printf "   y: ~v \n" y)
                         y))))
             (data '() '())
             xs))
    ;; fold needs to be reversed
    (reverse (move-group (data-group d) (data-res d))))

  (if (block-txexpr? in)
      `(,in) ; Special case for when we're already done.
      (separate in)))

(check-equal? (split-p '(div (p "txt")))
                       '((div (p "txt"))))
(check-equal? (split-p '("foo" (span "zing") (div "bar") "zam"))
                       '(("foo" (span "zing")) (div "bar") ("zam")))
(check-equal? (split-p '("foo" "\n\n" (div "bar") "\n\n" (div "zam")))
                       '(("foo") (div "bar") (div "zam")))
(check-equal? (split-p '("foo" "bar" (div "a") "quux" "zomg"))
                       '(("foo" "bar") (div "a") ("quux" "zomg")))

(define (decode-p in)
  (define (prep-paragraph-flow elems)
    (decode-linebreaks (merge-newlines (trimf elems whitespace?))))

  (define elements (prep-paragraph-flow in))
  (printf "elements: ~s\n" elements)

  (if (block-txexpr? elements)
      elements
      (decode-p-elems elements)))

(define (decode-p-elems elements)
  (define split (split-p elements))
  (printf "split: ~v~n" split)

  (define (wrap xs)
    (foldr (λ (x acc)
              (match x
                [ls #:when (block-txexpr? ls) (cons ls acc)]
                [_ (cons `(p ,@x) acc)]))
           '()
           xs))
  (define res (match split
                [(list e) #:when (not (block-txexpr? e)) e] ; Avoid wrap on ("foo")
                [else (wrap split)]))
  (printf "res: ~v~n" res)
  res)

;; This breaks in decode-paragraphs. Maybe it just doesn't matter.
(check-equal? (decode-p '(div (p "txt")))
                        '(div (p "txt")))

(check-equal? (decode-p '("First para" "\n\n" "Second para"))
                        '((p "First para") (p "Second para")))
(check-equal? (decode-p '("First para" "\n\n" "Second para" "\n" "Second line"))
                        '((p "First para") (p "Second para" (br) "Second line")))
(check-equal? (decode-p '("First para" "\n\n" (div "Second block")))
                        '((p "First para") (div "Second block")))
(check-equal? (decode-p '((div "First block") "\n\n" (div "Second block")))
                        '((div "First block") (div "Second block")))
(check-equal? (decode-p '("foo" "\n\n" (div "bar") (div "zam")))
                        '((p "foo") (div "bar") (div "zam")))
(check-equal? (decode-p '("foo" "\n\n" (div "bar") "\n\n" (div "zam")))
                        '((p "foo") (div "bar") (div "zam")))
(check-equal? (decode-p '("foo"))
                        '("foo"))
(check-equal? (decode-p '((div "foo")))
                        '((div "foo")))
(check-equal? (decode-p '("foo" "\n\n" (div "bar")))
                        '((p "foo") (div "bar")))
(check-equal? (decode-p '("foo" (div "bar")))
                        '((p "foo") (div "bar")))
(check-equal? (decode-p '("foo" (div "bar") "zam"))
                        '((p "foo") (div "bar") (p "zam")))
(check-equal? (decode-p '("foo" (span "zing") (div "bar") "zam"))
                        '((p "foo" (span "zing")) (div "bar") (p "zam")))
(check-equal? (decode-p '(span (p "txt")))
                        '(span (p "txt")))
(check-equal? (decode-p '((span (span (p "txt") (p "more")))))
                        '((span (span (p "txt") (p "more")))))

