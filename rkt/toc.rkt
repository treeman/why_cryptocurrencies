#lang racket/base

(provide toc toc-pagetree in-toc?)

(define toc
  ;; This replaces the previously hand-made pagetree in index.ptree.
  ;; String entries gets removed and are treated as planned chapters.
  `(eli5.html
    (about_the_book.html
     how_to_use.html
     free.html
     about_me.html)
    (what_is_a_cryptocurrency.html
     properties_of_a_cryptocurrency.html
     how_do_cryptocurrencies_work.html
     look_out_for_snake_oil.html
     what_is_money.html
     are_cryptocurrencies_money.html)
    (better_digital_payments.html
     cheaper_faster.html
     undesirable_businesses.html
     freezing_of_merchant_accounts.html
     uncensorable_donations.html
     for_the_unbanked.html)
    (better_currency.html
     financial_crisis.html
     the_blind_leading_the_blind.html
     a_defective_system.html
     private_money.html
     global_currency.html)
    (brave_new_world.html
     darknet_markets.html
     swiss_bank_account_in_your_pocket.html
     cashless_dystopia.html
     protection_against_government_confiscation.html
     separation_of_money_and_state.html)
    (extensions.html
     timestamping_service.html
     uncensorable_twitter.html
     provably_fair_gambling.html
     tokens.html
     voting.html)
    (appendix.html
     bitcoin_whitepaper.html
     challenges.html
     cryptography.html
     ;"Who is Satoshi Nakamoto?"
     ;"Is Facebook's Libra a cryptocurrency?"
     ;"Further research"
     )))

(define (in-toc? page)
  (in-tree? page toc))

(define (in-tree? x tree)
  (cond
    [(symbol? tree)
     (equal? x tree)]
    [(string? tree)
     #f]
    [(pair? tree)
     (or (in-tree? x (car tree))
         (in-tree? x (cdr tree)))]
    [else #f]))

(module+ test
  (require rackunit)
  (check-equal? (in-toc? 'eli5.html) #t)
  (check-equal? (in-toc? 'free.html) #t)
  (check-equal? (in-toc? 'cheaper_faster.html) #t)
  (check-equal? (in-toc? 'blaha) #f)
  )

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

