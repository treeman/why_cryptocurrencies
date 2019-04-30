#lang racket/base

(require pollen/tag pollen/decode txexpr)
(require racket/match racket/string racket/list)
(require racket/format)
(require "post-process.rkt")
(require "string-process.rkt")

(provide (all-defined-out))

(define (xref? url)
  (cond
    ((regexp-match #rx"^https?://" url) #t)
    (else #f)))

(define (link #:class [c #f] . args)
  (match args
    [(list (list url title) text)
     (make-link url text #:title title #:class c)]
    [(list url text)
     (make-link url text #:class c)]
    [(list url)
     (make-link url url #:class c)]))

(define (make-link url text #:title [title #f] #:class [c #f])
  (define attrs `((href ,url)))
  (when title
    (set! attrs (cons `(title ,title) attrs)))
  (when (xref? url)
    (set! c (if c
              (string-append c " xref")
              "xref")))
  (when c
    (set! attrs (cons `(class ,c) attrs)))
  `(a ,attrs ,text))

(define (subhead txt)
  `(h2 ,txt))

(define (stable #:header [header #t] #:centered [centered #t] . rows)
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

(define (qt #:author [author #f] #:src [src #f] #:url [url #f] #:date [date #f] . txt)
  (define ref (if url
                  (link url src)
                  src))
  (define cite (if author
                   `((span ((class "author")) ,author ", "))
                   `()))
  (when (or url src)
    (let ((ref (if url
                  (link url src)
                  src)))
      (set! cite (append cite
                         `((span ((class "src")) "“" ,ref "”"))))))
  (when date
    (set! cite (append cite
                       `((span ((class "date")) ,(~a date))))))

  `(blockquote
    ,@txt
    (footer ,@cite)))

(define (icode . args)
  `(code ,@args))
(define (code . args)
  `(pre (code ,@args)))

(define (sans . args)
  `(span ((class "sans")) ,@args))

(define (sans-tnum . args)
  `(span ((class "sans-tnum")) ,@args))

(define (todo . args)
  `(div ((class "todo"))
    (span ((class "pre")) "TODO ")
    (span ((class "txt")) ,@args)))

;; Replace spaces in strings found in args with 'nbsp
;; which will be escaped to &nbsp; a non-breaking space.
(define (nbsp . args)
  ;; Split a string and insert 'nbspc between
  (define (replace s)
    `(splice-me ,@(add-between (string-split s " ")
                               'nbsp)))
  ;; Use splice-me to flatten the result
  `(splice-me ,@(map (λ (x)
                        (if (string? x)
                          (replace x)
                          x))
                     args)))

(define (img #:src src #:title [title #f] #:alt [alt #f] #:class [c #f]
             #:margin [margin #f] . caption)
  (define attrs `())
  (when c
    (set! attrs (cons `(class ,c) attrs)))
  (when title
    (set! attrs (cons `(title ,title) attrs)))
  (when alt
    (set! attrs (cons `(alt alt) attrs)))

  (define figcaption
    (if margin
      `(figcaption ((class "margin")) ,@caption)
      `(figcaption ,@caption)))

  `(figure
     ,attrs
     (img ((src ,(~a src))))
     ,figcaption))

(define (raw-img #:src src)
  `(img ((src ,(~a src)))))


;;; Margin-notes and side-notes
(define note-defs (make-hash))

(define (ndef ref-in . def)
  (define id (format "nd-~a" ref-in))
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

(define (note-ref #:label-class label-class
                  #:label-content label-content
                  #:span-class span-class
                  #:ref ref-in)
  (define id (format "nd-~a" ref-in))
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

(define (mn ref-in)
  (note-ref #:label-class "margin-toggle margin-symbol"
            #:label-content "†"
            #:span-class "marginnote"
            #:ref ref-in))
(define (sn ref-in)
  (note-ref #:label-class "margin-toggle sidenote-number"
            #:label-content ""
            #:span-class "sidenote"
            #:ref ref-in))


;;; Root transformations

(define (root . args)
  (define decoded (decode-elements args
    #:txexpr-elements-proc decode-paragraphs
    #:entity-proc replace-stubs
    #:string-proc string-proc))

  ;; Expand splices afterwards
  ;; 'splice-me is consired inline so doesn't break paragraph calculations
  (txexpr 'root empty (expand-splices decoded)))

