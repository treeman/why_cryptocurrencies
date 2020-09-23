#lang racket/base

(require "links.rkt")
(require "tags.rkt")

(provide (all-defined-out))

(define main-title "Why Cryptocurrencies?")
(define subtitle "Why they exist, what they do and why they matter")
(define description "An explanation on why cryptocurrencies were created, what they do differently and why they matter. Instead of focusing on the speculative side, we focus on actual use cases of cryptocurrencies and what they can do for us.")

(define (abs-url url)
  (format "~a/~a" root-url url))

(define keywords
  "Cryptocurrency,Cryptocurrencies,Blockchain,Bitcoin,Bitcoin Cash,Monero,Ethereum,BTC,BCH,XMR,ETH,ICO,Crypto")

