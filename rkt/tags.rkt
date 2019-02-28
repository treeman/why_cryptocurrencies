#lang racket/base

(require pollen/tag pollen/decode txexpr)
(require racket/match racket/string racket/list)
(require "post-process.rkt")
(require "string-process.rkt")

(provide link subhead table epigraph qt mn mndef sn sndef root)

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


;;; Margin-notes and side-notes
(define note-defs (make-hash))

(define (note-def prefix ref-in def)
  (define id (format "~a-~a" prefix ref-in))
  (define ref (string->symbol id))

  ;; Because p doesn't allow block elements
  ;; and span doesn't allow p elements
  ;; use a special span .snp element to emulate paragraphs.
  ;; This is workaround is required as we want to inject a whole sidenote
  ;; inline to use the checkbox css toggling to avoid javascript.
  (define (wrap xs)
    (list* 'span '((class "snp")) xs))
  (define content
    (decode-elements def
                     #:txexpr-elements-proc (λ (x) (decode-paragraphs x wrap))
                     #:string-proc string-proc))

  (hash-set! note-defs ref content)
  "")

(define (note-ref #:prefix prefix
                  #:label-class label-class
                  #:label-content label-content
                  #:span-class span-class
                  #:ref ref-in)
  (define id (format "~a-~a" prefix ref-in))
  (define ref (string->symbol id))
  (define (replace ref)
    (define def (hash-ref note-defs ref #f))
    (unless def (error (format "missing ref '~s'" ref)))
    ;; Use splice-me to be able to return multiple elements inline.
    `(splice-me
      (label ((class ,label-class) (for ,id)) ,label-content)
      (input ((id ,id) (class "margin-toggle") (type "checkbox")))
      (span ((class ,span-class)) ,@def)))

  (register-replacement ref replace)
  ref)

(define (mndef ref-in . def)
  (note-def "mn" ref-in def))

(define (mn ref-in)
  (note-ref #:prefix "mn"
            #:label-class "margin-toggle"
            #:label-content "⊕"
            #:span-class "marginnote"
            #:ref ref-in))

(define (sndef ref-in . def)
  (note-def "sn" ref-in def))

(define (sn ref-in)
  (note-ref #:prefix "sn"
            #:label-class "margin-toggle sidenote-number"
            #:label-content ""
            #:span-class "sidenote"
            #:ref ref-in))


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

