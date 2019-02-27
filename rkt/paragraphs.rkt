#lang racket/base

(require rackunit racket/match racket/list)
(require pollen/decode sugar/list)

(define (decode-paragraphs elements-in [maybe-wrap-proc 'p]
                           #:linebreak-proc [linebreak-proc decode-linebreaks]
                           #:force? [force-paragraph #f])
  (define paragraph-separator "\n\n")
  (unless (string? paragraph-separator)
    (raise-argument-error 'decode-paragraphs "string" paragraph-separator))

  (define (prep-paragraph-flow elems)
    (linebreak-proc (merge-newlines (trimf elems whitespace?))))

  (define (paragraph-break? x)
    (define paragraph-pattern (pregexp (format "^~a+$" paragraph-separator)))
    (match x
      [(pregexp paragraph-pattern) #true]
      [_ #false]))

  (define (explicit-or-implicit-paragraph-break? x)
    (or (paragraph-break? x) (block-txexpr? x)))

  (define wrap-proc (match maybe-wrap-proc
                      [(? procedure? proc) proc]
                      [_ (λ (elems) (list* maybe-wrap-proc elems))]))

  (define (wrap-paragraph elems)
    (match elems
      [(list (? block-txexpr?) ...) elems] ; leave a series of block xexprs alone
      [_ (list (wrap-proc elems))])) ; otherwise wrap in p tag

  (define elements (prep-paragraph-flow elements-in))
  (if (ormap explicit-or-implicit-paragraph-break? elements) ; need this condition to prevent infinite recursion
      ;; use `append-map` on `wrap-paragraph` rather than `map` to permit return of multiple elements
      (append-map wrap-paragraph
                  (append-map (λ (es) (filter-split es paragraph-break?)) (slicef elements block-txexpr?))) ; split into ¶¶, using both implied and explicit paragraph breaks
      (if force-paragraph
          ;; upconverts non-block elements to paragraphs
          (append-map wrap-paragraph (slicef elements block-txexpr?))
          elements)))

;(check-equal? (decode-paragraphs '("First para" "\n\n" "Second para"))
            ;'((p "First para") (p "Second para")))
;(check-equal? (decode-paragraphs '("First para" "\n\n" "Second para" "\n" "Second line"))
            ;'((p "First para") (p "Second para" (br) "Second line")))
;(check-equal? (decode-paragraphs '("First para" "\n\n" (div "Second block")))
            ;'((p "First para") (div "Second block")))
;(check-equal? (decode-paragraphs '((div "First block") "\n\n" (div "Second block")))
            ;'((div "First block") (div "Second block")))
;(check-equal? (decode-paragraphs '("First para" "\n\n" "Second para") 'ns:p)
            ;'((ns:p "First para") (ns:p "Second para")))
;(check-equal? (decode-paragraphs '("First para" "\n\n" "Second para" "\n" "Second line")
                                ;#:linebreak-proc (λ (x) (decode-linebreaks x '(newline))))
            ;'((p "First para") (p "Second para" (newline) "Second line")))
;(check-equal? (decode-paragraphs '("foo" "\n\n" (div "bar") (div "zam")))
            ;'((p "foo") (div "bar") (div "zam")))
;(check-equal? (decode-paragraphs '("foo" "\n\n" (div "bar") "\n\n" (div "zam")))
            ;'((p "foo") (div "bar") (div "zam")))
;(check-equal? (decode-paragraphs '("foo")) '("foo"))
;(check-equal? (decode-paragraphs '("foo") #:force? #t) '((p "foo")))
;(check-equal? (decode-paragraphs '((div "foo"))) '((div "foo")))
;(check-equal? (decode-paragraphs '((div "foo")) #:force? #t) '((div "foo")))
;(check-equal? (decode-paragraphs '("foo" "\n\n" (div "bar"))) '((p "foo") (div "bar")))
;(check-equal? (decode-paragraphs '("foo" (div "bar"))) '((p "foo") (div "bar")))
;(check-equal? (decode-paragraphs '("foo" (div "bar")) #:force? #t) '((p "foo") (div "bar")))
;(check-equal? (decode-paragraphs '("foo" (div "bar") "zam")) '((p "foo") (div "bar") (p "zam")))
;(check-equal? (decode-paragraphs '("foo" (span "zing") (div "bar") "zam")) '((p "foo" (span "zing")) (div "bar") (p "zam")))
;(check-equal? (decode-paragraphs '("foo" (span "zing") (div "bar") "zam") #:force? #t) '((p "foo" (span "zing")) (div "bar") (p "zam")))

;(check-equal? (decode-paragraphs '(div (p "txt")))
            ;'(div (p "txt")))

;(check-equal? (block-txexpr? `(span (p "txt"))) #t)
;(check-equal? (block-txexpr? `(span "txt")) #t)

(define (expand? x)
  (match x
    [(list l) #:when (list? l) #t]
    [else #f]))

(define (expanded wrapped)
  (foldr (λ (x acc)
              (match x
                [(list y) #:when (not (symbol? y))
                 (cons y acc)]
                [else (cons x acc)]))
         '()
         wrapped))

(define (decode-paragraphs2 xs)
  (define paragraph-separator "\n\n")
  (unless (string? paragraph-separator)
    (raise-argument-error 'decode-paragraphs "string" paragraph-separator))

  (define (paragraph-break? x)
    (define paragraph-pattern (pregexp (format "^~a+$" paragraph-separator)))
    (match x
      [(pregexp paragraph-pattern) #true]
      [_ #false]))

  (define (prep-paragraph-flow elems)
    (decode-linebreaks (merge-newlines (trimf elems whitespace?))))

  (define elements (prep-paragraph-flow xs))
  (printf "elements: ~s\n" elements)

  ;(define split (slicef elements (λ (x) (or (paragraph-break? x)
                                            ;(block-txexpr? x)))))
  (define split (slicef elements paragraph-break?))
  (printf "split: ~s\n" split)

  ;(define wrap-proc (match maybe-wrap-proc
                      ;[(? procedure? proc) proc]
                      ;[_ (λ (elems) (list* maybe-wrap-proc elems))]))

  (define (wrap-paragraph elems)
    (match elems
      [(list (? block-txexpr?) ...) elems] ; leave a series of block xexprs alone
      [_ `(p ,@elems)])) ; otherwise wrap in p tag
  ;(define (wrap-paragraph x)
    ;(if ( x)
        ;x
    ;(match xs
      ;[(list a ...) #:when (not (list? a))


  (define (paragraph-elem? x)
    (match x
      [(list x) (not (paragraph-break? x))]
      [_ #t]))

  (define filtered (filter paragraph-elem? split))
  (printf "filtered ~s\n" filtered)

  ;(define wrapped (map wrap-paragraph filtered))
  ;(printf "wrapped: ~s\n" wrapped)

  ;(define flat (expanded wrapped))
  ;(printf "flat ~s\n" flat)

  (define (wrap xs)
    (foldr (λ (x acc)
              (match x
                [(list (? block-txexpr?) ...) (append x acc)]
                [_ (cons `(p ,@x) acc)]))
           '()
           xs))

  (define wrap2 (wrap filtered))
  (printf "wrap2 ~s\n" wrap2)

  ;; FIXME expand ((div "bar") (div "zam")) into parent list?
  ;(define expanded (map (λ (x)
                           ;(if 

  wrap2)


(printf "~n     <<>><<>><><><><><><<>><<>>~n")
;(check-equal? (decode-paragraphs2 '(div (p "txt")))
                                  ;'(div (p "txt")))

;(check-equal? (decode-paragraphs2 '("First para" "\n\n" "Second para"))
                                  ;'((p "First para") (p "Second para")))
;(check-equal? (decode-paragraphs2 '("First para" "\n\n" "Second para" "\n" "Second line"))
                                  ;'((p "First para") (p "Second para" (br) "Second line")))
;(check-equal? (decode-paragraphs2 '("First para" "\n\n" (div "Second block")))
                                  ;'((p "First para") (div "Second block")))
;(check-equal? (decode-paragraphs2 '((div "First block") "\n\n" (div "Second block")))
                                  ;'((div "First block") (div "Second block")))
;(check-equal? (decode-paragraphs2 '("foo" "\n\n" (div "bar") (div "zam")))
                                  ;'((p "foo") (div "bar") (div "zam")))
;(check-equal? (decode-paragraphs2 '("foo" "\n\n" (div "bar") "\n\n" (div "zam")))
                                  ;'((p "foo") (div "bar") (div "zam")))
;(check-equal? (decode-paragraphs2 '("foo"))
                                  ;'("foo"))
;(check-equal? (decode-paragraphs2 '((div "foo")))
                                  ;'((div "foo")))
;(check-equal? (decode-paragraphs2 '("foo" "\n\n" (div "bar")))
                                  ;'((p "foo") (div "bar")))
;(check-equal? (decode-paragraphs2 '("foo" (div "bar")))
                                  ;'((p "foo") (div "bar")))
;(check-equal? (decode-paragraphs2 '("foo" (div "bar") "zam"))
                                  ;'((p "foo") (div "bar") (p "zam")))
;(check-equal? (decode-paragraphs2 '("foo" (span "zing") (div "bar") "zam"))
                                  ;'((p "foo" (span "zing")) (div "bar") (p "zam")))

;(printf "check:\n")
;(check-equal? (expand? `(foo)) #f "base")
;(check-equal? (expand? `("a" "b")) #f "strings")
;(check-equal? (expand? `((div "a") (div "b"))) #f "divs")
;(check-equal? (expand? `((foo))) #t "nested")

;(printf "expanded:\n")
;(check-equal? (expanded `(foo)) `(foo))
;(check-equal? (expanded `((foo))) `((foo)))
;(check-equal? (expanded `((foo "a") (bar "b"))) `((foo "a") (bar "b")))


;(define (decode-p xs)
  ;(define paragraph-separator "\n\n")
  ;(define (paragraph-break? x)
    ;(define paragraph-pattern (pregexp (format "^~a+$" paragraph-separator)))
    ;(match x
      ;[(pregexp paragraph-pattern) #true]
      ;[_ #false]))

  ;(define (prep-paragraph-flow elems)
    ;(decode-linebreaks (merge-newlines (trimf elems whitespace?))))

  ;(define elements (prep-paragraph-flow xs))
  ;(printf "elements: ~s\n" elements)

  ;;(define (separate elems)
    ;;(foldl (λ (res group
  
  
  ;)


;(check-equal? (decode-p '("foo" (span "zing") (div "bar") "zam"))
                        ;'((p "foo" (span "zing")) (div "bar") (p "zam")))

(define (split-p in)
  (define paragraph-separator "\n\n")
  (define (paragraph-break? x)
    (define paragraph-pattern (pregexp (format "^~a+$" paragraph-separator)))
    (match x
      [(pregexp paragraph-pattern) #true]
      [_ #false]))

  (define (maybe-cons x xs)
    (if (null? x)
      xs
      (cons x xs)))


  ; car acc is the current group
  ; cdr acc is the resulting list
  (define s
    (foldr (λ (x acc)
              (printf "x: ~v,  acc: ~v~n" x acc)
              (let ((group (car acc))
                    (res (cadr acc)))
                (printf "group: ~v,  res: ~v~n" group res)
                (cond ((block-txexpr? x)
                       (printf "  block-txexpr\n")
                       ; If we find a new block-txexpr store the existing group
                       ; and start on a new group.
                       (define y (cons (list x)
                                       (cons group res)))
                       (printf "   y: ~v \n" y)
                       y)
                      ((paragraph-break? x)
                       (printf "  paragraph break\n")
                       ; If we find a paragraph break store the existing group
                       ; and start a new, but skip the paragraph break.
                       (define y (cons '()
                                 (cons group res)))
                       (printf "   y: ~v \n" y)
                       y)
                      (#t
                       (printf "  #t\n")
                       ; Append to the current group.
                       (define y (cons (cons x group)
                                       res))
                       (printf "   y: ~v \n" y)
                       y))))
           '(() ())
           in))

                   ;(match x
                     ;; If we find a new block-txexpr store the existing group
                     ;; and start on a new group
                     ;[(block-txexpr?)
                      ;(cons (list x)
                            ;(cons (car acc) (cdr acc)))]
                     ;[s
  s)

(check-equal? (split-p '(div (p "txt")))
                       '(div (p "txt")))
;(check-equal? (split-p '("foo" (span "zing") (div "bar") "zam"))
                       ;'(("foo" (span "zing")) (div "bar") ("zam")))
;(check-equal? (split-p '("foo" "\n\n" (div "bar") "\n\n" (div "zam")))
                       ;'(("foo") (div "bar") (div "zam")))

