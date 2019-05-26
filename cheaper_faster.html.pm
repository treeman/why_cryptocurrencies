#lang pollen

◊(define-meta title "Cheaper & faster")
◊;(define-meta subtitle "Settlements are faster")
◊(define-meta updated "2019-05-10T08:34:23+0200Z")
◊(define-meta uuid "ac14d4a1-3796-4f5b-9350-b56e796625a1")

Cryptocurrencies provide two major advantages compared to other digital payments:

◊ul{
    ◊li{Lower fees}
    ◊li{Faster settlements}
}

It does this by cutting out the middle man. But there is a trade-off---it shifts the risk management from the merchant to the customer.


◊subhead{Who pays the fees?}

◊qt[#:author "Mike Schlotman, Kroger's executive vice president and CFO"
    #:src "Press Release"
    #:url "http://ir.kroger.com/file/Index?KeyFile=396935873"]{
    Visa has been misusing its position and charging retailers excessive fees for a long time. They conceal from customers what Visa and its banks charge retailers to accept Visa credit cards.
}

Wait a minute, isn't paying with credit cards, debit cards, PayPal etc already free? I've never paid a fee---except maybe a yearly fee for having a card. Some credit cards even give you a bonus for every purchase! So what's the deal?

That's because you as a customer don't see the high fees---but the merchant does. Fees of 1-4% per transaction can be very demanding, especially for low-margin businesses.

To make up for the fees (and to compensate for charge back fraud) merchants instead raise their prices. So you as a customer actually pay for the fees, they're just indirect.


◊subhead{Cryptocurrency fees}

Fees in cryptocurrencies are relatively straightforward: each transaction has a fixed fee, independent of the transaction value. The one who sends the transaction pays the fee.◊sn{crypto-fee}

◊ndef["crypto-fee"]{
    Because cryptocurrencies are so volatile, the expected fee converted to fiat varies. The fees are also set by demand, but most cryptocurrencies have ample space to keep the fees very low.
}

◊figure{
    ◊table[#:class "centered"]{◊tbody{
        ◊tr{◊tds{Bitcoin Cash}  ◊tds{Monero}    ◊tds{Dogecoin}  ◊tds{Litecoin}  ◊tds{Bitcoin}}
        ◊tr{◊td{$0.0012}        ◊td{$0.0028}    ◊td{$0.003}     ◊td{$0.0162}    ◊td{$2.46}}
    }}
    ◊figcaption{The ◊link[median-tx-fee]{median transaction fee} for common POW cryptocurrencies 2019-05-25. (◊link[median-tx-fee-monero]{Link for Monero})}
}


◊(define median-tx-fee "https://bitinfocharts.com/comparison/mediantransactionvalue-btc-ltc-bch-xmr-doge.html")
◊(define median-tx-fee-monero "https://www.monero.how/monero-transaction-fees")

◊subhead{Fees}

A general comparison of fees is difficult because they differ depending on the amount of transactions, the size of transactions, the type of your business and country. There are several different types of fee models---a fixed fee per transaction, a percentage of the transaction value and combinations of the two. Nevertheless I will still try to make a general comparison, just be aware it's quite rough.

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
        ◊tr{◊tds{Plastic cards}     ◊td{1--4%}}
        ◊tr{◊tds{PayPal}            ◊td{2.9--4.4% + $0.30}}
        ◊tr{◊tds{Bitcoin Cash}      ◊td{$0.0015}}
    }}
    ◊figcaption{A summary of generalized transaction fees of various payment systems}
}

◊;https://www.creditdonkey.com/credit-card-processing-fees.html
◊;https://www.paypal.com/us/webapps/mpp/paypal-fees


◊subhead{Settlements}

It's important that we know what a settlement is: it's when the actual funds are transferred. Not to be confused with the authorization message you get a few seconds after paying. The money only changes (virtual) hands much later.

Credit card transactions can take days to settle, and they can be reversed several months after via charge backs.◊sn{who-pays?}

Mobile payments, via Apple Pay and similar, are often tied to credit cards and have similar properties.

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
        ◊tr{◊tds{Plastic cards}     ◊td{seconds}        ◊td{days}           ◊td{months}}
        ◊tr{◊tds{Mobile payments}   ◊td{seconds}        ◊td{days}           ◊td{months}}
        ◊tr{◊tds{Cryptocurrencies}  ◊td{seconds}        ◊td{an hour}        ◊td{an hour}}
    }}
    ◊figcaption{A summary of the speed of various payment systems}
}

◊(define (tds txt)
   `(td (strong ,txt)))


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

