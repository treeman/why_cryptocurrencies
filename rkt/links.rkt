#lang racket/base

(provide (all-defined-out))

(define root-url "https://whycryptocurrencies.com")

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
