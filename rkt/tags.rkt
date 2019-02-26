#lang racket/base

(require pollen/tag pollen/decode)
(require racket/match racket/string racket/list)

(provide (all-defined-out))

(define (link . args)
  (match args
    [(list (list url title) text)
       `(a ((href ,url) (title ,title)) ,text)]
    [(list url text)
       `(a ((href ,url)) ,text)]
    [(list url)
       `(a ((href ,url)) ,url)]))

(define (subhead txt)
  `(h2 ,txt))

(define (table #:header [header #t] #:centered [centered #t] . rows)
  (define cleaned-rows (filter-not whitespace? rows))
  (define header-row (car cleaned-rows))
  (define body-rows (cdr cleaned-rows))
  (define (make-row row cell-t)
    `(tr ,@(map (λ (cell) `(,cell-t ,(string-trim cell)))
                (filter-not whitespace? (string-split row "  ")))))
  (define content (if header
                      `((thead
                          ,(make-row header-row 'th))
                        (tbody
                          ,@(map (λ (x) (make-row x 'td)) body-rows)))
                      `((tbody
                          ,@(map (λ (x) (make-row x 'td)) cleaned-rows)))))
  (define attrs (if centered
                    `((class "centered"))
                    `()))
  `(table ,attrs ,@content))

(define (epigraph  . txt)
  `(div ((class "epigraph"))
       ,@txt))

(define (qt #:author author #:src src #:url [url #f] . txt)
  (define ref (if url
                  (link url src)
                  src))
  `(blockquote
      ,@txt
      (footer (span ((class "author")) ,author ", ")
              (span ((class "src")) "“" ,ref "”"))))

;; FIXME
;; store refs as symbols in mndefs
;; replace with "replace-notes" in root tag
;; create a module to find functions?

;; Store margin-note definitions
(define mndefs (make-hash))
(define (mndef ref-in . def)
  (define ref (format "mn-~a" ref-in))
  (hash-set! mndefs ref def))

(define (mn ref-in)
  (define ref (format "mn-~a" ref-in))
  `(span
      (label ((class "margin-toggle") (for ,ref)) "⊕")
      (input ((id ,ref) (class "margin-toggle") (type "checkbox")))
      (span ((class "marginnote")) ,(string->symbol ref))))

;(define (mndef ref . def)
  ;(define ref (format "mn-~a" ref-in))
  ;`(span ((class "mndref")) ,@def))
  ;`(span ((class "marginnote")) ,mn-ref))

;(define+provide/contract (replace-notes x)
(define (replace-notes x)
  ;(txexpr-elements? . -> . txexpr-elements?)
  ;(let loop ([x x])
    ;(match x
      ;[(? pair? x) #:when (not (attrs? x))
                   ;(define xs (map loop (filter-not empty-string? x)))
                   ;(append-map merge-newline-slice x)]
      ;[_ x])))
  (match x
    [(? symbol?) 
       (if (equal? x 'mn-wp)
           "FOUND IT!"
           x)]
    [else x]))
