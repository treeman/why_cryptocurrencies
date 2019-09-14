#lang racket/base

(require pollen/tag pollen/decode txexpr)
(require racket/match racket/string racket/list)
(require racket/format)
(require racket/runtime-path)
(require "toc.rkt")
(require "links.rkt")
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
  (define (add-class x)
    (set! c (if c
              (string-append c " " x)
              x)))
  (if (xref? url)
    (add-class "xref")
    (unless (valid-iref? url)
      (add-class "invalid-iref")
      (printf "INVALID IREF '~v'~n" url)))
      ;(error (format "INVALID IREF '~v'~n" url))))
  (when c
    (set! attrs (cons `(class ,c) attrs)))
  `(a ,attrs ,text))

;; Verify if an internal url is valid.
(define (valid-iref? url)
  (or
    (regexp-match #rx"^#" url)
    (string=? "/" url)
    (string=? "/feed.xml" url)
    (regexp-match #rx"^mailto:" url)
    (ch-ref? url)
    (file-ref? url)))

(define-runtime-path files-path "../files/")
(define-runtime-path images-path "../images/")

(define (file-ref? url)
  (match (regexp-match #rx"^/files/(.+)" url)
    [(list _ x)
       (file-exists? (build-path files-path x))]
    [else
      #f]))
(define (ch-ref? url)
  (match (regexp-match #rx"^/([^#]+)" url)
    [(list _ x)
      (in-toc? (string->symbol x))]
    [else
      #f]))

(module+ test
  (require rackunit)
  (check-false (ch-ref? "eli5.html")) ; Require leading /
  (check-not-false (ch-ref? "/eli5.html"))
  (check-not-false (ch-ref? "/eli5.html#xyz"))
  (check-false (ch-ref? "/blaha.html"))

  (check-not-false (file-ref? "/files/bitcoin.pdf"))
  (check-false (file-ref? "/files/blaha"))

  (check-not-false (valid-iref? "#header"))
  (check-not-false (valid-iref? "/eli5.html"))
  (check-not-false (valid-iref? "/eli5.html#xyz"))
  (check-not-false (valid-iref? "/"))
  (check-false (valid-iref? "blaha"))
  )


(define (subhead x)
  `(h2
    (a [[name ,(to-name x)]] ,x)))

(define (to-name x)
  (string-replace (string-downcase x) " " "-"))

(define (stable #:header [header #t]
                #:centered [centered #t]
                #:fullwidth [fullwidth #f]
                . rows)
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
  (create-table centered fullwidth `() content))

(define (table-body #:centered [centered #t]
                    #:fullwidth [fullwidth #f]
                    #:class [c #f]
                    . rows)
  (define table-classes (if c `(,c) `()))
  (create-table centered fullwidth table-classes
                `((tbody ,@rows))))

(define (create-table centered fullwidth table-classes content)
  (define div-classes `())
  (when fullwidth
    (set! div-classes (cons "fullwidth" div-classes)))
  (when centered
    (set! div-classes (cons "centered" div-classes)))
  (define table
    `(table ,(attrs-from-classes table-classes) ,@content))
  (if (empty? div-classes)
      table
      `(div ,(attrs-from-classes div-classes) ,table)))

(define (attrs-from-classes classes)
  (if (empty? classes)
      `()
      `((class ,(string-join classes)))))


(define (epigraph  . txt)
  `(div ((class "epigraph"))
       ,@txt))

(define (qt #:author [author #f] #:src [src #f] #:url [url #f] #:date [date #f] #:quote-src [quote-src #f] . txt)
  (define cite `())

  ; Convert date to string, for ease of use later.
  (when date (set! date (~a date)))

  ; Set up link
  (when url
    (cond
      [src (set! src (link url src))]
      [date (set! date (link url date))]
      [author (set! author (link url author))]
      [else (error "Quote with url but without ref")]))

  (when author
    (set! cite (append cite
                       `((span ((class "author")) ,author)))))
  (when src
    (let ((ref (if quote-src
                  `("“" ,src "”")
                  `(,src))))
      (set! cite (append cite
                         `((span ((class "src")) ,@ref))))))
  (when date
    (set! cite (append cite
                       `((span ((class "date")) ,date)))))

  `(blockquote
     ,@txt
     (footer ,@(add-between cite ", "))))

(define (icode . args)
  `(code ,@args))
(define (code . args)
  `(pre (code ,@args)))

(define (sans . args)
  `(span ((class "sans")) ,@args))

(define (sans-tnum . args)
  `(span ((class "sans-tnum")) ,@args))

(define (todo . args)
  `(span ((class "todo"))
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
             #:margin [margin #f] #:link [link #f] . caption)
  (define attrs `())
  (when c
    (set! attrs (cons `(class ,c) attrs)))
  (when title
    (set! attrs (cons `(title ,title) attrs)))
  (when alt
    (set! attrs (cons `(alt alt) attrs)))

  ; We ignore root transformation on <figure>, to avoid paragraph insertion
  ; around img. So we need to decode them manually.
  (define decoded-caption (std-decode caption))

  (define figcaption
    (if margin
      `(figcaption ((class "margin")) ,@decoded-caption)
      `(figcaption ,@decoded-caption)))

  `(figure
     ,attrs
     ,(raw-img #:src src #:link link)
     ,figcaption))

(define (raw-img #:src src #:link [link #f])
  (define img
     `(img ((src ,(~a src)))))
  (if link
      `(a ((href ,src) (target "_blank") (class "img-wrapper"))
          ,img)
      img))

(define (decoded-figcaption . args)
  `(figcaption ,@(std-decode args)))


;;; Margin-notes and side-notes
(define note-defs (make-hash))

(define (ndef ref-in . def)
  (define id (format "nd-~a" ref-in))
  (define ref (string->symbol id))

  (when (hash-has-key? note-defs ref)
    (error (format "duplicate ndef '~a'" ref-in)))

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


(define (std-decode args)
  (decode-elements args
    #:txexpr-elements-proc decode-paragraphs
    #:string-proc string-proc
    #:exclude-tags `(figure)))

;;; Root transformations

(define (root . args)
  (define decoded
    ; Replace in all tags, even figures. To allow ndef to be placed after figure caption.
    (decode-elements (std-decode args)
                     #:entity-proc replace-stubs))

  ;; Expand splices afterwards
  ;; 'splice-me is consired inline so doesn't break paragraph calculations
  (txexpr 'root empty (expand-splices decoded)))

