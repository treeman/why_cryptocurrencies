#lang racket/base

(require rackunit)
(require pollen/core pollen/tag)
(require "tags.rkt")
(require "links.rkt")

(provide toc make-section-nav make-toc)

(define toc
  ;; Unfortunately duplication with index.ptree but merging in a general sense
  ;; was complex and couldn't eliminate all duplication anyway.
  `("Why cryptocurrencies in five minutes"
    (about_the_book.html
     (how_to_use.html
      free.html
      about_me.html))
    (what_is_a_cryptocurrency.html
     (properties_of_a_cryptocurrency.html
      "How do cryptocurrencies work?"
      "Look out for snake oil"
      "What is money?"
      "Are cryptocurrencies money?"))
    ("Better digital payments"
     ("Safer & cheaper for merchants"
      "Uncensorable donations"
      "“Undesirable” businesses"
      "Avoid freezing of merchant accounts"
      "Banking the unbanked"))
    ("A better currency"
     ("The financial crisis, bad loans and bail-outs"
      "A borderless currency"
      "Protection against hyperinflation"
      "India voids 500 and 1000 rupee bills"
      "Protection against government seizures"))
    ("Brave new world"
     ("Separation of money and state"
      "A swiss bank account in your pocket"
      "Black markets"
      "The cashless dystopia"
      "New asset class?"))
    ("Extensions"
     ("Provably fair gambling"
      "Verifiable voting"
      "Uncensorable Twitter"
      "Timestamping service"
      "Tokens"))
    (appendix.html
     (bitcoin_whitepaper.html
      "Further research"))))

(define (node page)
  (if (pair? page)
      (car page)
      page))

(define (children page)
  (if (pair? page)
      (cadr page)
      #f))

(define (title node)
  (if (symbol? node)
      (select-from-metas 'title node)
      node))
(define (href node)
  (if (symbol? node)
      (symbol->string node)
      #f))

(define (make-entry node)
  (let ((href (href node))
        (title (title node)))
    (if href
        (link href title)
        `(span ((class "planned"))
               ,title))))

(define (make-subnav sub)
  (if sub
      `(ul
        ,@(for/list ([child (in-list sub)])
          `(li ,(make-entry child))))
      ""))

(define (page-toc page)
  `(section
     (h1 ,(make-entry (node page)))
     ,(make-subnav (children page))))

;; Make a table of content, used on the homepage or dedicated toc page.
(define (make-toc content)
  `(nav ((class "toc"))
    ,@(map page-toc content)))

;; Locate entry in table of content.
(define (toc-entry page)
  (findf (λ (x)
            (and (pair? x)
                 (equal? (car x) page)))
    toc))

;; Make a section navigation page, used on section pages to
;; list the chapters in that section.
(define (make-section-nav page)
  (define chapters (children (toc-entry page)))
  (if chapters
    `(nav ((class "subnav"))
        (span ((class "chapters")) "Chapters in this section")
        ,(make-subnav chapters))
    ""))

