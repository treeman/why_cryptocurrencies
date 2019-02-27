#lang racket/base

(require pollen/tag pollen/decode)
;(require pollen/template)
(require racket/match racket/string racket/list)
(require "string-proc.rkt")
(require "txexpr-elements-proc.rkt")

(provide link subhead table epigraph qt mndef mn)

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

;; Store margin-note definitions
(define mndefs (make-hash))

(define (mndef ref-in . def)
  (define id (format "mn-~a" ref-in))
  (define ref (string->symbol id))
  ; Need to avoid entity-proc which includes replace-notes
  (define content (decode-elements def
                                   #:txexpr-elements-proc txexpr-elements-proc
                                   #:string-proc string-proc))
  (hash-set! mndefs ref content))

(define (mn ref-in)
  (define id (format "mn-~a" ref-in))
  (define ref (string->symbol id))
  `(span
      (label ((class "margin-toggle") (for ,id)) "⊕")
      (input ((id ,id) (class "margin-toggle") (type "checkbox")))
      ,ref))

(define (replace-notes x)
  (match x
    [(? symbol?)
       (let ((def (hash-ref mndefs x #f)))
         (if def
             (let ((c `(span ,@def)))
               ;`(span "inside"))
               ;(->html c))
             ;`(span ,@def)
               ;(format "~a" c))
              `(span ,@def))
             ;`(span ((class "marginnote")) ,@def)
              x))]
    [else x]))



;; FIXME decode-paragraphs cannot handle this:
;; `(span (p "inside")))

