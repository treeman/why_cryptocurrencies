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

(define (table . rows)
  (define cleaned-rows (filter-not whitespace? rows))
  (define header-row (car cleaned-rows))
  (define body-rows (cdr cleaned-rows))
  (define (make-row row cell-t)
    `(tr ,@(map (λ (cell) `(,cell-t ,(string-trim cell)))
                (filter-not whitespace? (string-split row "  ")))))
  `(table
     (thead
       ,(make-row header-row 'th))
     (tbody
       ,@(map (λ (x) (make-row x 'td)) body-rows))))

