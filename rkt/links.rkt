#lang racket/base

(provide (all-defined-out))

(define rss-feed
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

