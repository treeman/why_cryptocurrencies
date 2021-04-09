#lang racket/base

(require racket/system)
(require xml)
(require pollen/core pollen/tag pollen/decode txexpr)
(require racket/match racket/string racket/list)
(require racket/format)
(require racket/runtime-path)
(require racket/port)
(require libuuid)
(require "decode.rkt")
(require "links.rkt")
(require "post-process.rkt")
(require "sidenotes.rkt")
(require "string-process.rkt")
(require "toc.rkt")
(require "refs.rkt")

(provide (all-defined-out))

(define (link #:class [c #f] #:quote [qt #f] . args)
  (match args
    [(list (list url title) text ..1)
     #:when (and (string? url)
                 (string? title))
     (apply make-link #:title title #:class c #:quote qt url text)]
    [(list url text ..1)
     #:when (string? url)
     (apply make-link #:class c #:quote qt url text)]
    [(list href text ..1)
     #:when (href? href)
     (apply make-link #:class (href-c href)
                      #:title (href-title href)
                      #:quote qt
                      (href-url href)
                      text)]
    [(list href)
     #:when (href? href)
     (define url (href-url href))
     (define title (href-title href))
     (make-link #:class (href-c href)
                #:title title
                url
                title)]
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
    `(@ "“" ,a "”")
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
                `(@
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
    (string=? "/toc.html" url)
    (regexp-match #rx"^mailto:" url)
    (ch-ref? url)
    (file-ref? url)
    (img-ref? url)))

(define-runtime-path files-path "../files/")
(define-runtime-path images-path "../images/")

(define (file-ref? url)
  (match (regexp-match #rx"^/files/(.+)" url)
    [(list _ x)
       (file-exists? (build-path files-path x))]
    [else
      #f]))
(define (img-ref? url)
  (match (regexp-match #rx"^/images/(.+)" url)
    [(list _ x)
       (file-exists? (build-path images-path x))]
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

(define (def . args)
  (match args
    [(list url text ..1)
     #:when (string? url)
     `(em ((class "def"))
        ,(apply link url text))]
    [(list href text ..1)
     #:when (href? href)
     `(em ((class "def"))
        ,(apply link href text))]
    [(list book text ..1)
     #:when (book? book)
     `(em ((class "def"))
        ,(apply link (book-href book) text))]
    [_
     #:when (list? args)
     `(em ((class "def"))
        ,@args)]
    [_
     (error (format "bad def args: '~a'" args))]))


(define (subhead x)
  `(h2
    (a [[name ,(to-name x)]] ,x)))

(define (subhead3 x)
   `(h3
     (a [[name ,(to-name x)]] ,x)))

(define (li-plus . txt)
   `(li ((class "plus")) ,@txt))
(define (li-neg . txt)
   `(li ((class "neg")) ,@txt))


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
            #:emphasis [emphasis #f]
            #:center [center #f]
            . txt)
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

  (define attrs
    (if center
      `((class "center"))
      `()))

  `(blockquote
     ,attrs
     ,@txt
     ,emphasis-text
     (footer ,@(add-between cite ", "))))


(define (book-link book)
  (make-link #:title (book-alt-text book)
             #:quote #t
             (book-url book)
             (book-title book)))

(define (book-qt book . txt)
  (apply qt
         #:author (book-author book)
         #:src (book-title book)
         #:url (book-href book)
         #:quote-src #t
         txt))

(define (cite-book book)
  `(cite ((class "book"))
         "("
         ,(book-author book)
         ", "
         ,(book-link book)
         ")"))

(define (icode . args)
  `(code ,@args))
(define (code . args)
  `(pre (code ,@args)))

(define (file2string path)
  (port->string (open-input-file path)))

(define (code-hl lang path)
  (define cmd (string-append
                "pygmentize -f html"
                " -l " lang
                " " path))
  (string->xexpr
    (with-output-to-string (λ () (system cmd)))))


(define (sans . args)
  `(span ((class "sans")) ,@args))

(define (sans-tnum . args)
  `(span ((class "sans-tnum")) ,(apply nbsp args)))

(define (todo . args)
  `(span ((class "todo"))
    (span ((class "pre")) "TODO ")
    (span ((class "txt")) ,@args)))

(define (strikethrough . args)
  `(span ((class "strikethrough")) ,@args))

;; Replace spaces in strings found in args with 'nbsp
;; which will be escaped to &nbsp; a non-breaking space.
(define (nbsp . args)
  ;; Split a string and insert 'nbspc between
  (define (replace s)
    `(@ ,@(add-between (string-split s " ")
                               'nbsp)))
  ;; Use @ to flatten the result
  `(@ ,@(map (λ (x)
                        (if (string? x)
                          (replace x)
                          x))
                     args)))

(define (img #:src src
             #:alt alt
             #:title [title #f]
             #:class [c #f]
             #:margin [margin #f]
             #:link [link #f] . caption)
  (define attrs `())
  (when c
    (set! attrs (cons `(class ,c) attrs)))
  (when title
    (set! attrs (cons `(title ,title) attrs)))

  ; We ignore root transformation on <figure>, to avoid paragraph insertion
  ; around img. So we need to decode them manually.
  (define decoded-caption (std-decode caption))

  (define figcaption
    (if margin
      `(figcaption ((class "margin")) ,@decoded-caption)
      `(figcaption ,@decoded-caption)))

  `(figure
     ,attrs
     ,(raw-img #:src src #:link link #:alt alt)
     ,figcaption))

(define (raw-img #:src src #:link [link #f] #:alt alt)
  (define img
     `(img ((src ,(~a src)) (alt ,alt))))
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

; Creates a hidden toggle inline in text.
(define (toggle hidden-txt . link-txt)
  (define id (uuid-generate))
  `(span ((class "hidden-link"))
     (label ((class "hidden-label") (for ,id)) ,@link-txt)
     (input ((id ,id) (class "hidden-toggle") (type "checkbox")))
     (span ((class "hidden-content"))
       ,hidden-txt)))

;;; Root transformations

(define (root . args)
  (txexpr 'root empty (decode-sidenotes (std-decode args))))

