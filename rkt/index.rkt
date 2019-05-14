#lang racket/base

(require rackunit)
(require pollen/core pollen/tag)
(require "tags.rkt")
(require "links.rkt")

(provide toc toc-pagetree make-toc make-section-nav)

(define toc
  ;; This replaces the previously hand-made pagetree in index.ptree.
  ;; String entries gets removed and are treated as planned chapters.
  `("Why cryptocurrencies in five minutes"
    (about_the_book.html
     how_to_use.html
     free.html
     about_me.html)
    (what_is_a_cryptocurrency.html
     properties_of_a_cryptocurrency.html
     how_do_cryptocurrencies_work.html
     look_out_for_snake_oil.html
     "What is money?"
     "Are cryptocurrencies money?")
    (better_digital_payments.html
     faster_cheaper.html
     "Uncensorable donations"
     "“Undesirable” businesses"
     "Avoid freezing of merchant accounts"
     "Banking the unbanked")
    ("A better currency"
     "The financial crisis, bad loans and bail-outs"
     "A borderless currency"
     "Protection against hyperinflation"
     "India voids 500 and 1000 rupee bills"
     "Protection against government seizures")
    ("Brave new world"
     "Separation of money and state"
     "A swiss bank account in your pocket"
     "Black markets"
     "The cashless dystopia"
     "New asset class?")
    ("Extensions"
     "Provably fair gambling"
     "Verifiable voting"
     "Uncensorable Twitter"
     "Timestamping service"
     "Tokens")
    (appendix.html
     bitcoin_whitepaper.html
     "Further research")))

;; Take a tree containing unfinished entries as strings
;; and construct a pagetree out of it.
(define (tree-to-pagetree pt)
  (define (transform-elem x)
    (if (symbol? x)
      x
      #f))
  (define (transform-pair x)
    (let ((head (transform-elem (car x))))
      (if head
        (cons head (transform-list (cdr x)))
        #f)))
  (define (transform x)
    (if (pair? x)
      (transform-pair x)
      (transform-elem x)))
  (define (transform-list xs)
    (filter (λ (x) x)
      (map transform xs)))

  `(pagetree-root
    ,@(transform-list pt)))

(define toc-pagetree (tree-to-pagetree toc))

(define (node page)
  (if (pair? page)
      (car page)
      page))

(define (children page)
  (if (pair? page)
      (cdr page)
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
(define (make-section-nav #:section-header? section-header? page)
  (define chapters (children (toc-entry page)))
  (define header
    (if section-header?
        `(span ((class "chapters")) "Chapters in this section")
        ""))
  (if chapters
    `(nav ((class "subnav"))
        ,header
        ,(make-subnav chapters))
    ""))

