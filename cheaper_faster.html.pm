#lang pollen

◊(define-meta title "Cheaper & faster")
◊(define-meta subtitle "Avoids middleman fees and settles quickly")
◊(define-meta published "2019-06-03T00:00:00+01:00")
◊(define-meta updated "2020-10-24T11:38:02+02:00")
◊(define-meta uuid "eddfec3a-26e5-4736-a66f-a935aa9d67ae")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Attributed to Benjamin Franklin"]{
    A penny saved is a penny earned.
  }
}

Cryptocurrencies provide two major advantages compared to other digital payments: they have ◊link[rel-fees]{lower fees} and they ◊link[rel-speed]{settle faster}, made possible by cutting out the middleman. But there's a ◊link[rel-risk-tradeoff]{trade-off}---it shifts the risk management from the merchant to the customer. Merchants no longer have to worry about ◊link[rel-charge-back-fraud]{charge back fraud}, but instead customers lose the ability to do charge backs.


◊subhead{Cryptocurrency fees}

Fees in cryptocurrencies are relatively straightforward: each transaction has a fixed fee, independent of the transaction value. The one who sends the transaction pays the fee.◊mn{crypto-fee}

◊ndef["crypto-fee"]{
    Because cryptocurrencies are so volatile, the expected fee converted to fiat varies. The fees are also set by demand, but most cryptocurrencies have ample space to keep the fees very low.
}

◊figure{
    ◊table-body{
        ◊tr{◊tds{Bitcoin Cash}  ◊tds{Monero}    ◊tds{Dogecoin}  ◊tds{Litecoin}  ◊tds{Bitcoin}}
        ◊tr{◊td{$0.0012}        ◊td{$0.0028}    ◊td{$0.003}     ◊td{$0.0162}    ◊td{$2.46}}
    }
    ◊figcaption{The ◊link[median-tx-fee]{median transaction fee} for common cryptocurrencies 2019-05-25. (◊link[median-tx-fee-monero]{Link for Monero})◊mn{zero-fee-cryptos}}
}

◊note-pos[#:top -10]{crypto-fee}
◊note-pos{zero-fee-cryptos}

◊ndef["zero-fee-cryptos"]{
    There are cryptocurrencies boasting zero fees, but they use unproven consensus algorithms or centralized governance. That's why I only include coins using proof-of-work.
}

For the most part, cryptocurrencies have very low fees---enough to call them negligible. But there's an elephant in the room: Bitcoin has large and unpredictable fees.

In fact, Bitcoin fees of $2-3 is still low compared the fees during the bull run in December 2017, which reached an average of $50(!!) per transaction. This is because transaction throughput in Bitcoin is maxed out, and to get your transaction accepted you need to pay more than others.◊mn{fee-market}

◊ndef["fee-market"]{
    There are some Bitcoin developers who claims high fees are necessary for the survival of Bitcoin. Gregory Maxwell was famously "◊link[nullc-champaign]{pulling out the champaign}" when Bitcoin had $50 fees. He thought it was a sign that the market supported the ◊def{"fee market"} idea (which is more a blockspace market).

    The issue is that Bitcoin's block reward will eventually run out (after several decades), so who will pay the miners to secure the network? The "fee market" idea says that transactions must be very expensive for it to be worth it for miners to secure the chain.

    There are other possible solutions:

    1. Many cheap instead of few expensive transactions
    2. Prevent the blocksize reward from going to zero

    See ◊link[fee-market-myth]{the fee market myth} for more info (it was written a year before the ridiculous $50 fees).
}

You may think the fees are so high because Bitcoin is much more popular than other cryptocurrencies, but that's not the whole story. In fact, it would be easy to lower the fees---Bitcoin Cash can for example handle at least 20 times the transaction count of Bitcoin, while keeping the same low fees. See the ◊link[scalability-challenge]{discussion of the scalability challenge} for more details.

Bitcoin just doesn't work well as a currency with these high and unreliable fees, but it's not representative of cryptocurrencies in general.

◊note-pos[#:top -18]{fee-market}

◊ndef["scaling"]{
    How well cryptocurrencies can scale is an ongoing research, and supporting as many transactions as VISA does with the same fees might be difficult.
}

◊(define fee-market-myth
  (x-ref
    "2019-06-03"
    "https://medium.com/@johnblocke/the-fee-market-myth-b9d189e45096"
    "John Blocke (2016) The Fee Market Myth"))
◊(define median-tx-fee
  (x-ref
    "2019-05-25"
    "https://bitinfocharts.com/comparison/median_transaction_fee-btc-ltc-bch-xmr-doge.html"
    "BitInfoCharts: Bitcoin, Litecoin, Bitcoin Cash, Monero, Dogecoin Median Transaction Fee historical chart"))
◊(define median-tx-fee-monero
  (x-ref
    "2019-05-25"
    "https://www.monero.how/monero-transaction-fees"
    "Monero.how: How much are Monero transaction fees?"))
◊(define nullc-champaign
  (x-ref
    "2019-06-03"
    "https://lists.linuxfoundation.org/pipermail/bitcoin-dev/2017-December/015455.html"
    "Gregory Maxwell (2017) Total fees have almost crossed the block reward"))


◊subhead{Who pays the fees?}

◊qt[#:author "Mike Schlotman, Kroger's executive vice president and CFO"
    #:date "Mars 2019"
    #:url kroger]{
    Visa has been misusing its position and charging retailers excessive fees for a long time. They conceal from customers what Visa and its banks charge retailers to accept Visa credit cards.
}

Wait a minute, isn't paying with credit cards, debit cards, PayPal etc already free? I've never paid a fee except for a yearly fee for having a card. Many credit cards even give you a bonus for every purchase, so what's the deal?

That's because you as a customer don't see the high fees---but the merchant does. Fees of 1-4% per transaction can be very demanding, especially for low-margin businesses. To make up for the fees (and to compensate for ◊link[rel-charge-back-fraud]{charge back fraud}) merchants instead raise their prices. So you as a customer actually pay for the fees, they're just indirect and hidden from view.

◊(define kroger
  (x-ref
    "2019-06-03"
    "http://ir.kroger.com/file/Index?KeyFile=396935873"
    "Kroger (2019) Kroger Announces Second Division to Stop Accepting Visa Credit Cards Due to Excessive Transaction Fees"))


◊subhead{Fee comparisons}

It's difficult to compare the fees of different digital payments in a complete and fair manner. This is my attempt, but please be aware it's a generalization.◊sn{comparisons}

◊ndef["comparisons"]{
    Fees can differ depending on the amount of transactions, the transaction value, the type of your business, your country and your chosen fee model. Not to mention different providers have different fee structures.

    See ◊link[credit-card-processing-fees]{this} introduction to credit card processing fees.
}

There are different types of cards; debit and credit cards, and different providers like VISA, Mastercard or American Express. I'll treat them as one category for simplicity, even though they have slightly different fees. Wire transfer fees also vary a lot and international transfers outside of ◊link[sepa]{SEPA} can be very expensive depending on your bank and country.

Mobile payments have become popular recently.◊sn{mobile-payments} As a representative, I'll choose Swish, which is used everywhere here in Sweden. It's connected to your bank and have free person-to-person transactions, but unsurprisingly there are fees for businesses.

◊note-pos[#:top -20]{comparisons}
◊note-pos[#:top -8]{mobile-payments}

◊ndef["mobile-payments"]{
    The popularity of mobile payments is easy to understand. They're convenient, cheap and fast. In fact they work exactly like cryptocurrency wallets do---just pay with a simple app on your phone.

    A definite advantage over cryptocurrencies is mobile payments are directly linked to your existing bank account.
}

◊figure{
    ◊table-body{
        ◊tr{◊td{}                                           ◊tds{Transaction fee}}
        ◊tr{◊tds{◊link[wire-transfer-fees]{Wire transfer}}  ◊td{$0–50}}
        ◊tr{◊tds{◊link[card-fees]{Cards}}                   ◊td{1–4%}}
        ◊tr{◊tds{◊link[paypal-fees]{PayPal}}                ◊td{2.9–4.4% + $0.30}}
        ◊tr{◊tds{◊link[swish]{Swish}}                       ◊td{$0.16–0.26}}
        ◊tr{◊tds{◊link[rel-crypto-fees]{Bitcoin Cash}}      ◊td{$0.0012}}
    }
    ◊figcaption{A summary of transaction fees of various payment systems.}
}


I've also left out any monthly and yearly fee, common for regular payment systems. For example, merchants might rent credit card terminals and Swish---with comparatively low transaction fees---also has a $10--50 yearly fee (the fee varies depending on your bank).◊sn{bank-fees}

◊ndef["bank-fees"]{
    Bank accounts also come with a fee. I pay for example a $30 yearly fee just to have my bank account, which includes a debit card and ability to do banking online.
}

As we can see, cryptocurrencies are decidedly cheaper than the other options. Even Swish, which is much cheaper than PayPal or cards, is 100 times more expensive than Bitcoin Cash. There are also no yearly fees of any kind just to receive payments in it (but there might be fees if you want to convert it to fiat).

As the ◊link[what_is_money]{purpose of money} is to increase economic efficiency, a 1--4% tax on nearly all digital payments is really counter-productive.◊sn{insurance} Therefore a move towards cheap payment solutions like Swish or cryptocurrencies would be beneficial economically.

◊note-pos[#:top -17]{bank-fees}
◊note-pos{insurance}

◊ndef["insurance"]{
    Yes, parts of the fees represents fraud protection. But that too comes ◊link[rel-charge-back-fraud]{with a cost}, and if viewed from a global economic perspective it might even be detrimental.
}

◊(define credit-card-processing-fees
  (x-ref
    "2019-06-03"
    "https://www.creditdonkey.com/credit-card-processing-fees.html"
    "Kim P, personal finance expert at CreditDonkey: Credit Card Processing Fees: What You Need to Know"))
◊(define card-fees
  (x-ref
    "2019-06-03"
    "https://www.cardfellow.com/blog/average-fees-for-credit-card-processing/"
    "Ben Dwyer: Average Credit Card Processing Fees"))
◊(define wire-transfer-fees
  (x-ref
    "2019-06-03"
    "https://www.nerdwallet.com/blog/banking/wire-transfers-what-banks-charge/"
    "Spencer Tierney (2019) Wire Transfers: What Banks Charge"))
◊(define paypal-fees
  (x-ref
    "2019-06-03"
    "https://www.paypal.com/us/webapps/mpp/paypal-fees"
    "PayPal: Credit Card Fees, Send Money Fees & Other Charges - PayPal US"))
◊(define swish
  (x-ref
    "2019-06-03"
    "https://www.getswish.se/foretag/vara-erbjudanden/"
    "Swish: Get started with Swish"))


◊subhead{Payment speed}

Shifting focus a little, let's take a look at payment speed. We can identify different stages of a digital payment:◊sn{visa-stages}

◊ndef["visa-stages"]{
    Credit card payments are more complex. See ◊link[how-visas-payment-system-works]{this blog post} for an overview of VISA's payment system.
}

◊(define how-visas-payment-system-works
  (x-ref
    "2019-06-03"
    "http://blog.unibulmerchantservices.com/how-visas-payment-system-works/"
    "UniBul: How Visa’s Payment System Works"))

◊ol{
    ◊li{Notification}
    ◊li{Settlement}
    ◊li{Irreversible}
}

You'll get a ◊def{notification} a few seconds after your payment.◊sn{0-conf-notification} For a credit card this ensures the customer has a valid card and has entered the right PIN-code, but no money has been transferred yet. The money changes (virtual) hands during the ◊def{settlement}, which might be several days later. Finally, a transaction might still be reversed much later. When this is no longer possible, I call the transaction ◊def{irreversible}.

◊note-pos[#:top -21]{visa-stages}
◊note-pos[#:top -11]{0-conf-notification}

◊ndef["0-conf-notification"]{
    Accepting a cryptocurrency transaction which haven't any confirmation yet, called ◊def{0-conf}, is often criticised in the cryptocurrency community. But it's really no different than accepting a credit card payment instantly---they're both uncertain.
}


◊subhead{Charge back fraud}

For us customers, it's a feature that transactions can be reversed. If someone steals your credit card or a merchant is fraudulent, you can reverse the transactions by calling your issuer.  But this can also be abused, which is called ◊def[charge-back-fraud]{charge back fraud} (or ◊def{friendly fraud}).

It goes something like this:

◊ol{
    ◊li{Place an order}
    ◊li{Receive item}
    ◊li{Claim your card was stolen}
    ◊li{Get your money back}
}

This can be a big problem for some merchants, especially those ◊link[fraud-digital]{serving digital goods}, who often have to swallow it as a loss. To make matters worse merchants also have to pay non-negotiable and non-refundable ◊link[charge-back-fees]{charge back fees} even when disputing.◊mn{bank-chargeback}

◊(define charge-back-fraud
  (x-ref
    "2019-06-03"
    "https://en.wikipedia.org/wiki/Chargeback_fraud"
    "Wikipedia: Chargeback fraud"))
◊(define charge-back-fees
  (x-ref
    "2019-06-03"
    "https://chargebacks911.com/knowledge-base/chargeback-fees/"
    "Chargebacks 911: Chargeback Fees"))
◊(define fraud-digital
  (x-ref
    "2019-06-03"
    "https://chargeback.com/growing-cost-of-fraud-for-digital-goods/"
    "Sydney Vaccaro (2018) Growing Cost of Fraud For Digital Goods"))

◊ndef["bank-chargeback"]{
    It's also common that banks are the ones who have to eat the cost of the fraud.
}


◊subhead{Speed comparisons}

Credit card transactions can take days to settle, and they can be ◊link[mastercard-chargeback]{reversed several months after} via charge backs. Mobile payments---via Apple Pay and similar---are often tied to credit cards and share their properties while others---like Swish---instead connect to your bank account directly.

Wire transfers aren't usually used for payments, but it's still a useful comparison to make. They are typically much slower than other payment systems but they're generally harder to reverse as they don't offer the same charge back protection as credit cards do.◊sn{wire-transfer}

◊ndef["wire-transfer"]{
    Inside the EU, ◊link[sepa]{SEPA} has massively improved the state of wire transfers across borders. Transactions often go through the same day and they're cheaper than other types of wire transfers.
}

A unique property of cryptocurrencies is they ◊link[transaction-security]{become irreversible} very quickly. In Bitcoin it usually takes 10--60 min.

◊(define mastercard-chargeback
  (x-ref
    "2019-06-03"
    "https://chargeback.com/mastercard-chargeback-time-limits/"
    "Emily Vuitton (2016) MasterCard Chargeback Time Limits"))

◊figure{
    ◊table-body{
        ◊tr{◊td{}                   ◊tds{Notification}  ◊tds{Settlement}    ◊tds{Irreversible}}
        ◊tr{◊tds{Wire transfer}     ◊td{days}           ◊td{days}           ◊td{days}}
        ◊tr{◊tds{Cards}             ◊td{seconds}        ◊td{days}           ◊td{months}}
        ◊tr{◊tds{Mobile payments}   ◊td{seconds}        ◊td{days}           ◊td{days–months}}
        ◊tr{◊tds{Cryptocurrencies}  ◊td{seconds}        ◊td{an hour}        ◊td{an hour}}
    }
    ◊figcaption{A summary of the speed of various payment systems.}
}

The speed that cryptocurrencies settle and become irreversible significantly reduces the risk of charge back fraud and eliminates it for most use-cases.◊sn{0-conf}

◊ndef["0-conf"]{
    There's a risk of having transactions reversed (◊link[double-spending]{double-spent}) before they're confirmed.  This can happen when delivering goods immediately after payment notification.

    Because transaction security is probabilistic, there's ◊link[transaction-security]{always a risk} of having a transaction reversed even for confirmed transactions, but in practice it's ◊strong{very} low.
}

◊note-pos[#:top -30]{wire-transfer}
◊note-pos{0-conf}

◊(define (tds txt)
   `(td (strong ,txt)))


◊subhead{The risk management trade-off}

It seems payment systems needs to choose between these two options:

◊ol{
    ◊li{Provide costumer protection but merchants might suffer from charge back fraud.}
    ◊li{Protect merchants from charge back fraud but don't provide protection for customers.}
}

Traditional payment systems have chosen to protect customers (or maybe that's the only option they can realistically choose---for social and technical reasons). Cryptocurrencies try to prevent transaction reversal and charge back fraud instead.

While it's of course bad to not have customer protection, there might be other solutions. For example, offering optional fraud insurance or offering ◊def{custodial wallets} with extra protection. (A custodial wallet is managed by a third party, similar to a bank account.)◊mn{crypto-protection}

◊ndef["crypto-protection"]{
    I haven't seen any "fraud insurance" yet, but don't see a reason why it can't be created if there's a need for it. Especially when combined with a custodial wallet.
}

In addition, it might make risk management more practical. While it's basically impossible for merchants to audit all their customers, it's plausible for customers to check out a merchant. In fact, we do it all the time: "this website looks shady!" or "my friend uses them all the time". Merchants are known and have a reputation while customers are innumerable and anonymous.

◊note-pos[#:top -12]{crypto-protection}


◊subhead{Conclusion}

We've seen three large benefits to cryptocurrency payments:

◊ul{
    ◊li-plus{Cheaper}
    ◊li-plus{Settles faster}
    ◊li-plus{Reduces or removes the risk for charge back fraud}
}

And one large drawback:

◊ul{
    ◊li-neg{No inherent fraud protection for customers}
}

The drawback might be alleviated with optional systems in the future, giving us the best of both worlds.

◊(define rel-charge-back-fraud
    `("#charge-back-fraud"
      "Charge back fraud"))
◊(define rel-fees
    `("#fee-comparisons"
      "Fee comparisons"))
◊(define rel-speed
    `("#speed-comparisons"
      "Speed comparisons"))
◊(define rel-crypto-fees
    `("#cryptocurrency-fees"
      "Cryptocurrency fees"))
◊(define rel-risk-tradeoff
    `("#the-risk-management-trade-off"
      "The risk management trade-off"))

◊(define sepa
  (x-ref
    "2019-06-03"
    "https://en.wikipedia.org/wiki/Single_Euro_Payments_Area"
    "Wikipedia: Single Euro Payments Area"))

◊(define bitcoin-fees
  (x-ref
    "2019-06-03"
    "https://bitcoinfees.cash/"
    "Bitcoin Cash and Bitcoin fees"))

◊;http://blog.unibulmerchantservices.com/how-visas-payment-system-works/
◊;https://chargeback.com/chargeback-process/
◊;https://chargeback.com/mastercard-chargeback-time-limits/

