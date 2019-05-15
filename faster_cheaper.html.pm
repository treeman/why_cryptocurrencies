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

It's important that we know what a settlement is: it's when the actual funds are transferred. Not to be confused with the authorization message you get a few seconds after paying. The money only changes (virtual) hands much later.

Credit card transactions can take days to settle, and they can be reversed several months after via charge backs.◊sn{who-pays?}

For us consumers this is a very good feature. If someone steals your credit card or a merchant is fraudulent, you can reverse the transactions by calling your issuer. For merchants and banks it can be a big problem, see ◊link[rel-charge-back-fraud]{charge back fraud}.

◊ndef["who-pays?"]{
    ◊todo{who pays?}
}

Cryptocurrencies work differently. You do get a payment notification after a few seconds◊sn{0-conf} and settlements are much faster. After 10--60 min a transaction is ◊link[transaction-security]{basically irreversible}.

◊ndef["0-conf"]{
    ◊todo{0-conf}
}

◊(define transaction-security "/how_do_cryptocurrencies_work.html#transaction-security")

◊table[#:class "centered"]{◊tbody{
    ◊tr{◊td{}                   ◊tds{Notification}   ◊tds{Settlement}     ◊tds{Irreversible}}
    ◊tr{◊tds{VISA/Mastercard}   ◊td{seconds}        ◊td{days}           ◊td{months}}
    ◊;tr{◊tds{Mobile payments}    ◊td{days}           ◊td{days}           ◊td{months}}
    ◊tr{◊tds{Cryptocurrencies}   ◊td{seconds}        ◊td{an hour}        ◊td{an hour}}
}}

◊(define (tds txt)
   `(td (strong ,txt)))


◊subhead{Fees}

BCH:                $◊link[bitcoin-fees]{0.0015} flat fee (2019-05-10)

◊(define bitcoin-fees
    `("https://bitcoinfees.cash/"
      "Bitcoin Cash and Bitcoin fees"))

Fees are depending on the business and amount
VISA/mastercard:    1-3%
PayPal:             2-5%
Western Union:      Varies a lot but typically much more expensive

◊table[#:class "centered"]{◊tbody{
    ◊tr{◊td{}                   ◊tds{Fixed fee}     ◊tds{Rate}}
    ◊tr{◊tds{VISA/Mastercard}   ◊td{}          ◊td{1--3%}}
    ◊tr{◊tds{PayPal}            ◊td{$0.30}          ◊td{2.9--4.4%}}
    ◊tr{◊tds{Bitcoin Cash}      ◊td{$0.0015}        ◊td{-}}
}}

◊;https://www.creditdonkey.com/credit-card-processing-fees.html
◊;https://www.paypal.com/us/webapps/mpp/paypal-fees


◊subhead{Charge back fraud}

The major problem with current digital payments is the existence of ◊link[charge-back-fraud]{charge back fraud} (sometimes called friendly fraud).

Can be made up to 120 days after the transaction, depending on the reason.
◊;https://chargeback.com/mastercard-chargeback-time-limits/


◊subhead{Shifting of risk}

There is huge upside for merchants, but instead the risk is shifted to consumers.

◊;http://blog.unibulmerchantservices.com/how-visas-payment-system-works/
◊;https://chargeback.com/chargeback-process/
◊;https://chargeback.com/mastercard-chargeback-time-limits/
◊(define charge-back-fraud "https://en.wikipedia.org/wiki/Chargeback_fraud")
◊(define rel-charge-back-fraud "#charge-back-fraud")

