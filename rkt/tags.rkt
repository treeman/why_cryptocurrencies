#lang racket/base

(require pollen/tag pollen/decode)
;(require pollen/template)
(require racket/match racket/string racket/list)
(require "string-proc.rkt")
(require "txexpr-elements-proc.rkt")

(provide link subhead table epigraph qt mndef mn replace-stubs)

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


;; FIXME move
(define replacements (make-hash))
(define (register-replacement sym f)
  (hash-set! replacements sym f))

(define (replace-stubs x)
  (let ((f (hash-ref replacements x #f)))
    (if f
      (f x)
      x)))


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

