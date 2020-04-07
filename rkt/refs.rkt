#lang racket/base

(require racket/string racket/list)
(require "toc.rkt")

(provide (all-defined-out))

(struct href (c url title))
(struct book (author url title))
(struct ch-href (href ref))

; (a-ref "2020-01-01" "https://xyz.abc" "description")
(define (a-ref #:class [c #f]
               #:ref [ref #f]
               date
               url
               title)
  (unless (url? url)
    (error (format "bad a-ref url: '~a'" url)))
  (define alt-text (string-append title "\nAccessed " date))
  (when ref
    (set! url (string-append url "#" (to-name ref))))
  (href c url alt-text))

(define (book-ref #:author author
                  #:url [url #f]
                  . title)
  (unless (url? url)
    (error (format "bad book-ref url: '~a'" url)))
  (book author url title))

; (ch-ref 'are_cryptocurrencies_money.html "Are cryptocurrencies money?")
(define (ch-ref #:ref [ref #f]
                chapter
                title)

  (unless (symbol? chapter)
    (error (format "bad ch-ref chapter '~a', expected symbol" href)))

  (unless (in-toc? chapter)
    (printf "INVALID CH '~a'~n" chapter))

  (define url (string-append "/" (symbol->string chapter)))
  (when ref
    (set! url (string-append url "#" (to-name ref))))

  (href #f url title))

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

(define (to-name x)
  (string-replace (string-downcase x) " " "-"))

