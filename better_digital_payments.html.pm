#lang pollen

◊(define-meta title "Better digital payments")
◊(define-meta subtitle "Benefits over existing payment systems")
◊(define-meta published "2019-06-03T00:00:00+01:00")
◊(define-meta updated "2020-10-09T19:51:52+02:00")
◊(define-meta uuid "011ff2b6-0e56-4501-a6ca-63e9ac6dcc65")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Frank Underwood"
      #:src "House of Cards"
      #:quote-src #t]{
    When money is coming your way, you don't ask questions
  }
}

In this part, we'll explore benefits cryptocurrencies have over other digital payment systems, such as VISA, Mastercard, PayPal or Apple Pay.

The big benefit is cryptocurrencies being ◊def[no-more-third-parties]{permissionless}: anyone can pay and anyone can accept them---for any business. Certain types of businesses, like pot stores or gambling sites, have problems accepting credit cards. Small businesses are also always at risk of having their accounts frozen without warning or recourse.◊mn{minecraft} Similarly, there are people who cannot get bank accounts and are in effect frozen out of large parts of the society.

But there are other benefits as well. Cryptocurrencies have lower fees and by becoming irreversible very quickly they reduce and often eliminates the risk of ◊def{charge back fraud}, which is a big expense for merchants.

◊ndef["minecraft"]{
    When I say small business, I do mean it. If PayPal freezes the account of a large or popular business, like ◊link[minecraft-paypal]{freezing the account of Minecraft (2010)}, the social backlash will make sure they're unblocked quickly. Small businesses---who can't gather outrage on social media---will simply be ignored.
}

◊(define minecraft-paypal 
  (x-ref
    "2019-06-03"
    "http://www.escapistmagazine.com/news/view/103385-PayPal-Freezes-750K-in-MineCraft-Devs-Account"
    "Andy Chalk (2010) PayPal Freezes $750K in MineCraft Dev's Account"))
