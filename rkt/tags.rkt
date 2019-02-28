#lang racket/base

(require pollen/tag pollen/decode txexpr)
(require racket/match racket/string racket/list)
(require "post-process.rkt")
(require "string-process.rkt")

(provide link subhead table epigraph qt mndef mn root)

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


;;; Store margin-note definitions
(define mndefs (make-hash))
(define (mndef ref-in . def)
  (define id (format "mn-~a" ref-in))
  (define ref (string->symbol id))
  ;; Not sure if we should expand paragraphs etc or not?
  (define content (decode-elements def
                                   ;; Firefox reports paragraphs inside as errors
                                   ;;#:txexpr-elements-proc txexpr-elements-proc
                                   #:string-proc string-proc))
  ;(define content def)
  (hash-set! mndefs ref content))

(define (mn ref-in)
  (define id (format "mn-~a" ref-in))
  (define ref (string->symbol id))
  (define (replace ref)
    (define def (hash-ref mndefs ref #f))
    (unless def (error (format "missing ref '~s'" ref)))
    ;; Use splice-me to be able to return multiple elements inline.
    `(splice-me
      (label ((class "margin-toggle") (for ,id)) "⊕")
      (input ((id ,id) (class "margin-toggle") (type "checkbox")))
      (span ((class "marginnote")) ,@def)))

  (register-replacement ref replace)
  ref)


;;; Root transformations

;; FIXME
;; Replace "/index.html" with ""
;; Replace "..." with ellipsis
(define (root . args)
  (define decoded (decode-elements args
    #:txexpr-elements-proc decode-paragraphs
    #:entity-proc replace-stubs
    #:string-proc string-proc))

  ;; Expand splices afterwards
  ;; 'splice-me is consired inline so doesn't break paragraph calculations
  (txexpr 'root empty (expand-splices decoded)))

