#lang pollen

◊(define-meta title "Faster & cheaper")
◊;(define-meta subtitle "Settlements are faster")
◊(define-meta updated "2019-05-10T08:34:23+0200Z")
◊(define-meta uuid "ac14d4a1-3796-4f5b-9350-b56e796625a1")

Cryptocurrencies provide two major advantages compared to other digital payments:

◊ul{
    ◊li{Faster settlements}
    ◊li{Lower fees}
}

It does this by cutting out the middle man. But there is a trade-off---it shifts the risk management from the merchant to the customer.


◊subhead{Settlements}

For us consumers there's a large benefit of credit cards and debit cards compared to cryptocurrencies: If someone steals our credit card we can just call our issuer and they will freeze it---no money will be lost.

In contrast if someone steals our cryptocurrency wallet and make a transaction with it---it's impossible to reverse. It's like physical cash, if someone run away with our wallet then it's gone.


◊subhead{Fees}

BCH:                $◊link[bitcoin-fees]{0.0015} flat fee (2019-05-10)

◊(define bitcoin-fees
    `("https://bitcoinfees.cash/"
      "Bitcoin Cash fees"))

Fees are depending on the business and amount
VISA/mastercard:    1-3%
PayPal:             2-5%
Western Union:      Varies a lot but typically much more expensive


◊subhead{Charge back fraud}

The major problem with current digital payments is the existence of ◊link[charge-back-fraud]{charge back fraud} (sometimes called friendly fraud).


◊subhead{Shifting of risk}

There is huge upside for merchants, but instead the risk is shifted to consumers.


◊(define charge-back-fraud "https://en.wikipedia.org/wiki/Chargeback_fraud")
