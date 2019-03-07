#lang racket/base

(require "links.rkt")

(provide (all-defined-out))

(define subscription-form
  `(form ((id "f-subscribe") (class "subscribe"))
         (input ((id "email") (class "email") (value "") (name "email")
                              (placeholder "Enter your email to join the mailing list")))
         (input ((id "subscribe") (class "submit") (type "submit") (value "Subscribe")
                                  (name "subscribe")))))

