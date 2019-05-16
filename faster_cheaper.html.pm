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

Credit card transactions can take days to settle, and they can be reversed several months after via charge backs.◊sn{who-pays?} Mobile payments, via Apple Pay and similar, are often tied to credit cards and have similar properties.

The ability to do charge backs is a very good feature for us consumers. If someone steals your credit card or a merchant is fraudulent, you can reverse the transactions by calling your issuer. For merchants and banks charge backs can be a big problem, see ◊link[rel-charge-back-fraud]{charge back fraud}.

◊ndef["who-pays?"]{
    ◊todo{who pays?}
}

Cryptocurrencies work differently. You do get a payment notification after a few seconds◊sn{0-conf} and settlements are much faster. After 10--60 min a transaction is ◊link[transaction-security]{basically irreversible}.

◊ndef["0-conf"]{
    ◊todo{0-conf}
}

While wire transfers aren't used as payments, it's a useful comparison. They are typically much slower than other payment systems (although they're harder to reverse).◊sn{wire-transfer}


◊ndef["wire-transfer"]{
    Inside the EU ◊link[sepa]{SEPA} has massively improved the state of wire transfers across borders. Transactions often go through the same day and they're cheaper than other types of wire transfers.
}

◊(define sepa "https://en.wikipedia.org/wiki/Single_Euro_Payments_Area")

◊(define transaction-security "/how_do_cryptocurrencies_work.html#transaction-security")

◊figure{
    ◊table[#:class "centered"]{◊tbody{
        ◊tr{◊td{}                   ◊tds{Notification}  ◊tds{Settlement}    ◊tds{Irreversible}}
        ◊tr{◊tds{Wire transfer}     ◊td{days}           ◊td{days}           ◊td{days}}
        ◊tr{◊tds{VISA/Mastercard}   ◊td{seconds}        ◊td{days}           ◊td{months}}
        ◊tr{◊tds{Mobile payments}   ◊td{seconds}        ◊td{days}           ◊td{months}}
        ◊tr{◊tds{Cryptocurrencies}  ◊td{seconds}        ◊td{an hour}        ◊td{an hour}}
    }}
    ◊figcaption{A summary of the speed of various payment systems}
}

◊(define (tds txt)
   `(td (strong ,txt)))


◊subhead{Fees}

It's difficult to make a good comparison between fees because they can vary a lot depending on 

BCH:                $◊link[bitcoin-fees]{0.0015} flat fee (2019-05-10)

◊(define bitcoin-fees
    `("https://bitcoinfees.cash/"
      "Bitcoin Cash and Bitcoin fees"))

Fees are depending on the business and amount

◊figure{
    ◊table[#:class "centered"]{◊tbody{
        ◊tr{◊td{}                   ◊tds{Transaction fee}}
        ◊tr{◊tds{Wire transfer}     ◊td{$0--20}}
        ◊tr{◊tds{VISA/Mastercard}   ◊td{1--3%}}
        ◊tr{◊tds{PayPal}            ◊td{2.9--4.4% + $0.30}}
        ◊tr{◊tds{Bitcoin Cash}      ◊td{$0.0015}}
    }}
    ◊figcaption{A summary of generalized transaction fees of various payment systems}
}

◊;https://www.creditdonkey.com/credit-card-processing-fees.html
◊;https://www.paypal.com/us/webapps/mpp/paypal-fees


◊subhead{Charge back fraud}

The ability to do charge backs 

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

