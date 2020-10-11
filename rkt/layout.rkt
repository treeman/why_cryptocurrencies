#lang racket/base

(require "links.rkt")
(require "tags.rkt")

(provide (all-defined-out))

(define main-title "Why Cryptocurrencies?")
(define subtitle "What they are, what they do and why they matter")
(define description "An explanation on why cryptocurrencies were created, what they do differently and why they matter. Instead of focusing on the speculative side, we focus on actual use cases of cryptocurrencies and what they can do for us.")

(define subscription-form
    `(form ((action "https://volleyy.com/s/470eafb/")
            (method "post")
            (target "_blank")
            (class "subscribe"))
        (input ((placeholder "Enter your email to join the mailing list")
                (id "_vly-email")
                (class "email")
                (value "")
                (type "email")
                (name "email")))
        (input ((id "subscribe")
                (class "submit")
                (type "submit")
                (value "Subscribe")))
            ))

(define follow-section
  `(section((class "follow"))
     (div ((class "wip"))
          "The book is a work in progress. If you want to keep up to date:")
     ,subscription-form
     (div ((class "links"))
          "Subscribe to the " ,(link feed-url "feed")
          ", see the source on " ,(link source-code "Github")
          " or " ,(link mailto "contact me")
          ".")
     (div ((class "donate"))
           "If you appreciate this free book please consider "
           ,(link donations "donating")
           ".")
     ))

(define (abs-url url)
  (format "~a/~a" root-url url))

(define keywords
  "Cryptocurrency,Cryptocurrencies,Blockchain,Bitcoin,Bitcoin Cash,Monero,Ethereum,BTC,BCH,XMR,ETH,ICO,Crypto")

