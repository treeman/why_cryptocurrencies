#lang racket/base

(require "links.rkt")
(require "tags.rkt")

(provide (all-defined-out))

(define main-title "Why cryptocurrencies?")

(define subscription-form
    `(form ((action "https://volleyy.com/s/470eafb/")
            (method "post")
            (target "popupwindow")
            (onsubmit "window.open('https://volleyy.com/s/470eafb/',
                                   'popupwindow',
                                   'scrollbars=yes,width=800,height=600');
                       return true;")
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
  `(section ((class "follow"))
            (div ((class "wip"))
                "The book is a work in progress. If you want to keep up to date:")
            ,subscription-form
          (div ((class "links"))
            "Subscribe to the " ,(link feed-url "feed")
            ", see the source on " ,(link source-code "Github")
            " or " ,(link mailto "contact me")
            ".")))

(define (abs-url url)
  (format "~a/~a" root-url url))
