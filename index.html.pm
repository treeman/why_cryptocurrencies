#lang pollen

◊(define-meta template "homepage.html")
◊(define-meta title "Why cryptocurrencies?")

◊(define (page-toc page)
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
        (apply ul
          (for/list ([child (in-list sub)])
            (li (make-entry child))))
        ""))

  `(section
     (h1 ,(make-entry (node page)))
     ,(make-subnav (children page))))

◊(define (toc content)
  (apply nav #:class "toc"
    (map page-toc content)))

◊(define content
  ;; Unfortunately duplication with index.ptree but merging in a general sense
  ;; was complex and couldn't eliminate all duplication anyway.
  `("Why cryptocurrencies in five minutes"
    (about_the_book.html
     (how_to_use.html
      free.html
      about_me.html))
    (what_is_a_cryptocurrency.html
     (properties_of_a_cryptocurrency.html
      how_does_cryptocurrencies_work.html
      look_out_for_snake_oil.html
      what_is_money.html
      are_cryptocurrencies_money.html))
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
      "Black markets"))
    ("Auxiliary use"
     ("Provably fair gambling"
      "Verifiable voting"
      "Uncensorable Twitter"
      "Timestamping service"
      "Tokens"
      "New asset class?"
      ))
    (appendix.html
     (bitcoin_whitepaper.html))))

◊(toc content)

