#lang racket/base

(require "refs.rkt")

(provide (all-defined-out))

(define root-url "https://whycryptocurrencies.com")
(define toc-url `("/" "Table of contents"))

;; Books


;; Defs

(define charge-back-fraud
  (ch-ref
    'cheaper_faster.html #:ref "charge-back-fraud"
    "Cheaper & faster: Charge back fraud"))


;; Chapters

(define about-the-book
  (ch-ref
    'about_the_book.html
    "About the book"))
(define what_is_a_cryptocurrency
  (ch-ref
    'what_is_a_cryptocurrency.html
    "What is a cryptocurrency?"))

(define properties_of_a_cryptocurrency
  (ch-ref
    'properties_of_a_cryptocurrency.html
    "Properties of a cryptocurrency"))
(define are_cryptocurrencies_money
  (ch-ref
    'are_cryptocurrencies_money.html
    "Are cryptocurrencies money?"))

(define cheaper_faster
  (ch-ref
    'cheaper_faster.html
    "Cheaper & faster"))
(define fee-comparisons
  (ch-ref
    'cheaper_faster.html #:ref "fee-comparisons"
    "Cheaper & faster: Fee comparisons"))
(define speed-comparisons
  (ch-ref
    'cheaper_faster.html #:ref "speed-comparisons"
    "Cheaper & faster: Speed comparisons"))
(define uncensorable_donations
  (ch-ref
    'uncensorable_donations.html
    "Uncensorable donations"))
(define undesirable_businesses
  (ch-ref
    'undesirable_businesses.html
    "Undesirable businesses"))
(define freezing_of_merchant_accounts
  (ch-ref
    'freezing_of_merchant_accounts.html
    "Freezing of merchant accounts"))
(define for_the_unbanked
  (ch-ref
    'for_the_unbanked.html
    "For the unbanked"))

(define private_money
  (ch-ref
    'private_money.html
    "Private money"))
(define global_currency
  (ch-ref
    'global_currency.html
    "A global currency"))
(define financial_crisis
  (ch-ref
    'financial_crisis.html
    "The financial crisis, bad loans and bailouts"))

(define swiss_bank_account_in_your_pocket
  (ch-ref
    'swiss_bank_account_in_your_pocket.html
    "A Swiss bank account in your pocket"))
(define separation_of_money_and_state
  (ch-ref
    'separation_of_money_and_state.html
    "Separation of money and state"))

(define the_blind_leading_the_blind
  (ch-ref
    'the_blind_leading_the_blind.html
    "The blind leading the blind"))
(define timestamping_service
  (ch-ref
    'timestamping_service.html
    "Timestamping service"))
(define provably_fair_gambling
  (ch-ref
    'provably_fair_gambling.html
    "Provably fair gambling"))

;; Misc links



(define feed-url
  `("/feed.xml"
    "Feed to the site"))

(define wp
  `("/bitcoin_whitepaper.html"
    "The Bitcoin Whitepaper"))

(define source-code
  `("https://github.com/treeman/why_cryptocurrencies"
    "Source code to this site"))

(define email "contact@whycryptocurrencies.com")

(define mailto
  `(,(string-append "mailto:" email)
    "Send me an email"))

(define donations "/free.html#donations-is-a-perfect-use-for-cryptocurrencies")

(define wp-blockchain
   `("https://bitcoin.stackexchange.com/questions/35959/how-is-the-whitepaper-decoded-from-the-blockchain-tx-with-1000x-m-of-n-multisi/35970"
     "Stackexchange: How is the whitepaper decoded from the blockchain"))

(define the-box-book "https://www.goodreads.com/book/show/316767.The_Box")
(define shock-of-the-old-book "https://www.goodreads.com/book/show/327488.The_Shock_of_the_Old")
(define the-big-short-book "https://www.goodreads.com/book/show/26889576-the-big-short")
(define after-the-music-stopped-book "https://www.goodreads.com/book/show/15811560-after-the-music-stopped")
(define thinking-fast-and-slow-book "https://www.goodreads.com/book/show/11468377-thinking-fast-and-slow")
(define case-against-fed-book "https://www.goodreads.com/book/show/81976.The_Case_Against_the_Fed")
(define 1984-book "https://www.goodreads.com/book/show/40961427-1984")
(define antifragile-book "https://www.goodreads.com/book/show/13530973-antifragile")
(define permanent-record-book "https://www.goodreads.com/book/show/46223297-permanent-record")
(define animal-farm-book "https://www.goodreads.com/book/show/170448.Animal_Farm")
(define code-breakers-book "https://www.goodreads.com/book/show/29608.The_Codebreakers")

(define cryptographic-hash-functions "https://en.wikipedia.org/wiki/Cryptographic_hash_function")

(define electroncash "https://electroncash.org/")

(define hash-functions "/cryptography.html#hash-functions")
(define bitcoin-addresses "/cryptography.html#bitcoin-addresses")
(define public-key-cryptography "/cryptography.html#public-key-cryptography")

(define privacy-challenge "/challenges.html#privacy-and-fungibility")

