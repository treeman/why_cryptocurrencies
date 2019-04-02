#lang racket/base

(require "links.rkt")
(require "tags.rkt")

(provide (all-defined-out))

(define subscription-form
  `(form ((id "f-subscribe") (class "subscribe"))
         (input ((id "email") (class "email") (value "") (name "email")
                              (placeholder "Enter your email to join the mailing list")))
         (input ((id "subscribe") (class "submit") (type "submit") (value "Subscribe")
                                  (name "subscribe")))))

(define follow-section
  `(section ((class "follow"))
            (div ((class "wip"))
                "The book is a work in progress. If you want to keep up to date:")
            ,subscription-form
          (div ((class "links"))
            "See the " ,(link rss-feed "RSS feed")
            " source code on " ,(link source-code "Github")
            " or " ,(link mailto "contact me")
            ".")))

