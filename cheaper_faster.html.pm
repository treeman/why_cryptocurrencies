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
    ◊figcaption{The ◊link[median-tx-fee]{median transaction fee} for common cryptocurrencies 2019-05-25. (◊link[median-tx-fee-monero]{Link for Monero})◊sn{zero-fee-cryptos}}
}

◊ndef["zero-fee-cryptos"]{
    There are cryptocurrencies boasting zero fees, but they use unproven consensus algorithms or centralized governance. That's why I only include coins using proof-of-work.
}

For the most part cryptocurrencies have very cheap fees---enough to call them negligible. But there's an elephant in the room: Bitcoin has very large fees.

In fact BTC fees of $2-3 is still very low compared the fees during the bull run in December 2017, which reached an average of $50(!!) per transaction. This is because transaction throughput in Bitcoin is maxed out, and to get your transaction accepted you need to pay more than others.◊sn{fee-market}

◊ndef["fee-market"]{
    There are some Bitcoin developers who claims high fees are necessary for the survival of Bitcoin. Gregory Maxwell was famously "◊link[nullc-champaign]{pulling out the champaign}" when Bitcoin had $50 as he thought it was a sign that the market supported his ◊em{"fee market"} theory.

    The issue is basically that Bitcoin's block reward will eventually run out (after several decades), so who will pay the miners to secure the network? The "fee market" idea is that transactions must be very expensive for it to be worth it for miners.

    There are other solutions:

    1. Many cheap instead of few expensive transactions
    2. Prevent the blocksize reward from going to zero
}

You may think the fees are so high because Bitcoin is much more popular than other cryptocurrencies, but that's not the whole story.  In fact it would be very easy to lower the fees, Bitcoin Cash can for example handle at least 20 times the transaction count of Bitcoin while keeping the same low fees.

Bitcoin just doesn't work as a currency with these high and unreliable fees, but it's not representative of cryptocurrencies in general.


◊(define median-tx-fee "https://bitinfocharts.com/comparison/median_transaction_fee-btc-ltc-bch-xmr-doge.html")
◊(define median-tx-fee-monero "https://www.monero.how/monero-transaction-fees")
◊(define nullc-champaign "https://lists.linuxfoundation.org/pipermail/bitcoin-dev/2017-December/015455.html")
◊(define luke-300kb "https://news.bitcoin.com/core-developers-300kb-block-proposal-bolstered-in-bid-to-push-lightning-adoption/")



◊subhead{Who pays the fees?}

◊qt[#:author "Mike Schlotman, Kroger's executive vice president and CFO"
    #:src "Press Release"
    #:url "http://ir.kroger.com/file/Index?KeyFile=396935873"]{
    Visa has been misusing its position and charging retailers excessive fees for a long time. They conceal from customers what Visa and its banks charge retailers to accept Visa credit cards.
}

Wait a minute, isn't paying with credit cards, debit cards, PayPal etc already free? I've never paid a fee---except maybe a yearly fee for having a card. Some credit cards even give you a bonus for every purchase! So what's the deal?

That's because you as a customer don't see the high fees---but the merchant does. Fees of 1-4% per transaction can be very demanding, especially for low-margin businesses.

To make up for the fees (and to compensate for ◊link[rel-charge-back-fraud]{charge back fraud}) merchants instead raise their prices. So you as a customer actually pay for the fees, they're just indirect and hidden from view.


◊subhead{Fee comparisons}

This is my attempt to summarize and compare the fees of different digital payments. It's difficult to make a complete comparison, so be aware it's quite rough.◊sn{comparisons}

◊ndef["comparisons"]{
    Fees can differ depending on the amount of transactions, the transaction value, the type of your business, your country and your chosen fee model. Not to mention different providers have different fee structures.

    See ◊link[credit-card-processing-fees]{this} as a an introduction to credit card processing fees.
}

◊(define credit-card-processing-fees "https://www.creditdonkey.com/credit-card-processing-fees.html")

There are different types of cards; debit and credit cards, and different providers like VISA, Mastercard or American Express. I'll treat them as one category for simplicity. Wire transfers also vary a lot, international transfers outside of ◊link[sepa]{SEPA} can be very expensive depending on your bank.

Mobile payments have become very popular recently.◊sn{mobile-payments} As a representative I'll choose Swish, which is very popular here in Sweden. It's connected to your bank and have free person-to-person transactions, but unsurprisingly there are fees for businesses.

◊ndef["mobile-payments"]{
    The popularity of mobile payments is easy to understand. They're convenient, cheap and fast. Perhaps most importantly they're directly integrated to your existing bank account, a definite advantage over cryptocurrencies (which are used in a very similar way, and are just as cheap and fast).
}

◊figure{
    ◊table[#:class "centered"]{◊tbody{
        ◊tr{◊td{}                               ◊tds{Transaction fee}}
        ◊tr{◊tds{Wire transfer}                 ◊td{$0--20}}
        ◊tr{◊tds{Cards}                         ◊td{1--4%}}
        ◊tr{◊tds{◊link[paypal-fees]{PayPal}}    ◊td{2.9--4.4% + $0.30}}
        ◊tr{◊tds{◊link[swish]{Swish}}           ◊td{$0.16--$0.26}}
        ◊tr{◊tds{Bitcoin Cash}                  ◊td{$0.0012}}
    }}
    ◊figcaption{A summary of generalized transaction fees of various payment systems.}
}

I've also left out any monthly and yearly fee, which you'll probably have for regular payment services as well. For example you might rent credit card terminals for such a fee. Swish, which has comparatively low transaction fees, also have a $10--$50 yearly fee.◊sn{bank-fees}

◊ndef["bank-fees"]{
    Also for consumers bank accounts usually come with a fee. I pay for example a $30 yearly fee just to have my bank account, which includes a debit card and ability to do banking online.
}

As we can see cryptocurrencies are decidedly cheaper than the other options. Even Swish, which is much cheaper than PayPal or cards, is 100x more expensive than Bitcoin Cash. There are also no yearly fees of any kind just to have access to it.

◊(define paypal-fees "https://www.paypal.com/us/webapps/mpp/paypal-fees")
◊(define swish
    `("https://www.getswish.se/foretag/vara-erbjudanden/"
      "Get started with Swish (Swedish), the fees are different depending on your bank"))


◊subhead{Settlements}

It's important that we know what a settlement is: it's when the actual funds are transferred. Not to be confused with the authorization message you get a few seconds after paying. The money only changes (virtual) hands much later.

Credit card transactions can take days to settle, and they can be reversed several months after via charge backs.◊sn{who-pays?} Mobile payments, via Apple Pay and similar, are often tied to credit cards and have similar properties. I did not find information for how charge backs with Swish works, I would assume they work similar to how wire transfers work.

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
        ◊tr{◊tds{Cards}             ◊td{seconds}        ◊td{days}           ◊td{months}}
        ◊tr{◊tds{Mobile payments}   ◊td{seconds}        ◊td{days}           ◊td{days--months}}
        ◊tr{◊tds{Cryptocurrencies}  ◊td{seconds}        ◊td{an hour}        ◊td{an hour}}
    }}
    ◊figcaption{A summary of the speed of various payment systems.}
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

◊(define bitcoin-fees
    `("https://bitcoinfees.cash/"
      "Bitcoin Cash and Bitcoin fees"))
