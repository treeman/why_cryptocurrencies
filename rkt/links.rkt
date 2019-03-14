#lang racket/base

(provide (all-defined-out))

(define rss-feed
  `("/feed.xml"
    "Feed to the site"))

(define wp
  `("/bitcoin_whitepaper.html"
    "The Bitcoin Whitepaper"))

(define source-code
  `("https://github.com/"
    "Source code to this site"))

(define email "contact@whycryptocurrencies.com")

(define mailto
  `(,(string-append "mailto:" email)
    "Send me an email"))
