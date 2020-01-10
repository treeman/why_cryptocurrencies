#lang racket/base

(require pollen/tag pollen/decode txexpr)
(require racket/match racket/string racket/list)
(require racket/format)
(require racket/runtime-path)
(require racket/port)
(require "links.rkt")
(require "post-process.rkt")
(require "pygments.rkt")
(require "sidenotes.rkt")
(require "string-process.rkt")
(require "toc.rkt")

(provide (all-defined-out))


(define (xref? url)
  (cond
    ((regexp-match #rx"^https?://" url) #t)
    (else #f)))

(define (url? x)
  (and
    (string? x)
    (or
      (xref? x)
      (regexp-match #rx"^#" x)
      (regexp-match #rx"^/" x)
      (regexp-match #rx"^mailto:" x))))

(define (link #:class [c #f] #:quote [qt #f] . args)
  (match args
    [(list (list url title) text ..1)
     #:when (and (string? url)
                 (string? title))
     (apply make-link #:title title #:class c #:quote qt url text)]
    [(list url text ..1)
     #:when (string? url)
     (apply make-link #:class c #:quote qt url text)]
    [(list url)
     #:when (string? url)
     (make-link #:class c #:quote qt url url)]
    [_
     (error (format "bad link args: '~a'" args))]))

(define (make-link #:class [c #f] #:title [title #f] #:quote [qt #f] url . text)
  (unless (url? url)
    (error (format "bad link url: '~a'" url)))
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

  (define a `(a ,attrs ,@text))

  (if qt
    `(splice-me "“" ,a "”")
    a))

(module+ test
  (require rackunit)
  (check-equal? (link "https://abc.xyz" "my" "link")
                `(a ((class "xref") (href "https://abc.xyz"))
                    "my" "link"))
  (check-equal? (link `("https://abc.xyz", "mytitle") "my" "link")
                `(a ((class "xref") (title "mytitle") (href "https://abc.xyz"))
                    "my" "link"))
  (check-equal? (link #:quote #t "https://abc.xyz" "my" "link")
                `(splice-me
                    "“"
                    (a ((class "xref") (href "https://abc.xyz"))
                        "my" "link")
                    "”"))
  (check-equal? (link "https://abc.xyz")
                `(a ((class "xref") (href "https://abc.xyz"))
                    "https://abc.xyz")))

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

(define (subhead3 x)
   `(h3
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

(define (qt #:author [author #f]
            #:src [src #f]
            #:quote-src [quote-src #f]
            #:url [url #f]
            #:author-url [author-url #f]
            #:date [date #f]
            #:emphasis [emphasis #f] . txt)
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

  ; Extra link for author
  (when (and author author-url)
    (set! author (link author-url author)))

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

  (define emphasis-text
    (if emphasis
      `(div ((class "emphasis")) "(Emphasis mine)")
      ""))

  `(blockquote
     ,@txt
     ,emphasis-text
     (footer ,@(add-between cite ", "))))

(define (icode . args)
  `(code ,@args))
(define (code . args)
  `(pre (code ,@args)))
(define (scode . args)
  `(span ((class "sidenote-code")) ,@args))
(define (code-hl #:line-numbers? [line-numbers? #f]
                 #:css-class [css-class "highlight"]
                 #:lines [hl-lines null]
                 lang . codelines)
  (define code (string-append* codelines))
  `(div
     ,@(pygmentize code lang
                   #:python-executable "python3"
                   #:line-numbers? line-numbers?
                   #:css-class css-class
                   #:hl-lines hl-lines)))

(define (file2string path)
  (port->string (open-input-file path)))

(define (code-hl-file #:line-numbers? [line-numbers? #f]
                      #:css-class [css-class "highlight"]
                      #:lines [hl-lines null]
                      lang path)
  (define file (file2string path))
  (code-hl
         #:line-numbers? line-numbers?
         #:css-class css-class
         #:lines hl-lines
         lang
         file))

(define (sans . args)
  `(span ((class "sans")) ,@args))

(define (sans-tnum . args)
  `(span ((class "sans-tnum")) ,(apply nbsp args)))

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

;; FIXME rename to figcaption
(define (decoded-figcaption . args)
  `(figcaption ,@(std-decode args)))

(define (youtube url . caption)
  (define id
    (match (regexp-match #rx"https?://www\\.youtube\\.com/watch\\?v=([A-Za-z0-9_-]+)" url)
      [(list _ id) id]
      [else (error "Bad youtube url: " url)]))
  (define embedded-url
    (string-append "//www.youtube.com/embed/" id))

  (define decoded-caption (std-decode caption))
  `(figure
     (div ((class "video-wrapper"))
       (div ((class "video-container"))
         (iframe ((src ,embedded-url)
                  (frameborder "0")
                  (allow "fullscreen")))))
     (figcaption ,@decoded-caption)))

;;; Root transformations

(define (std-decode args)
  (decode-elements args
    #:txexpr-elements-proc decode-paragraphs
    #:string-proc string-proc
    #:exclude-tags `(figure pre)))

(define (root . args)
  ;(printf "Transforming~n")
  ;(printf "~v~n" args)
  (define decoded (std-decode args))
    ; Replace in all tags, even figures. To allow ndef to be placed after figure caption.
    ;(decode-elements (std-decode args)
                     ;#:txexpr-proc my-test
                     ;#:entity-proc replace-stubs))
  (printf "decoded~n")
  (printf "~v~n" decoded)

  (define with-sidenotes (decode-sidenotes decoded))

  (printf "sidenotes~n")
  (printf "~v~n" with-sidenotes)

  ; Insert a widescreen note at the site
  ; If a sidenote ref is found inside a p tag:
  ;   insert it right after
  ; else
  ;   insert it at sidenote-pos or at the site

  ;; Expand splices afterwards
  ;; 'splice-me is consired inline so doesn't break paragraph calculations
  ;(txexpr 'root empty (expand-splices decoded)))
  ;(txexpr 'root empty decoded))
  (txexpr 'root empty with-sidenotes))

