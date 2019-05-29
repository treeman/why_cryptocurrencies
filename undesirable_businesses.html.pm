#lang pollen

◊(define-meta title "“Undesirable” businesses")
◊(define-meta subtitle "The ones payment processors don't want to do business with")
◊(define-meta updated "2019-05-29T06:35:29+02:00")
◊(define-meta uuid "ac14d4a1-3796-4f5b-9350-b56e796625a1")

If you want to accept digital payments today you need to partner with a payment processor, for example Stripe or PayPal. Usually that's not a problem---but what if they say no?◊sn{banks}

◊ndef["banks"]{
    While I will focus on payment processors in this chapter, the problem is much bigger than that. Often banks don't want anything to do with the business either. Sometimes they even close personal accounts of business owners---because of the nature of the business.

    For example ◊link[chase-porn]{Chase closed hundreds of porn stars' accounts} and Wells Fargo even ◊link[wells-fargo-supporter]{closed the bank account} of a supporter of medical marijuana.
}

This is the reality for certain businesses with high ◊link[chargeback-fraud]{chargebacks} rate or exists in a legal and ◊link[porn-bank-moral]{moral} gray area. If you view it from the payment processor's point-of-view it might make sense---they're just minimizing their risk. But that's of little comfort to the ones being rejected.

Here are some examples of affected businesses:

◊ul{
    ◊li{Adult entertainment (anything remotely related to porn)}
    ◊li{Auctions}
    ◊li{Cannabis and marijuana}
    ◊li{Cryptocurrencies (quite ironic)}
    ◊li{Gambling}
}

For whatever reason, these businesses are deemed high risk and undesirable. Despite them being legal they might not be able to accept digital payments.


◊subhead{Pot stores are cash-only}


◊subhead{Expensive and dubious workarounds}


◊subhead{Are cryptocurrencies the solution?}

Cryptocurrencies give you permissionless digital payments---it solves the problem of accepting payments very well. But it's not a full solution, at least today.

As we discussed in ◊link[are-cryptos-money]{Are cryptocurrencies money?} they're still very volatile and not widely accepted. Businesses still need to convert cryptocurrencies to fiat to be able to pay their bills and salaries, and the workers in turn need to pay their bills. To sell them for fiat you still need to go through exchanges who, you guessed it, can ◊link[coinbase-close-accounts]{refuse to do business with you}.

While cryptocurrencies improves the situation today◊sn{localbitcoins}, we would really need to bypass all third-parties for a great solution. This means you should be able to pay all expenses with cryptocurrencies---so you can't get blocked by an exchange.

But there are related problems cryptocurrencies can't solve. Banks serve a very important function: they lend businesses money, and there's no good solution if they say no.

◊ndef["localbitcoins"]{
    It's not as big of a problem if an exchange blocks you compared to being able to accept money in the first place, it's easier to move to another exchange. There are also ◊link[localbitcoins]{peer-to-peer} ◊link[local.bitcoin.com]{variants} where you can trade cryptocurrencies in person, bypassing the problem.
}


◊(define chargeback-fraud "/cheaper_faster.html#charge-back-fraud")
◊(define chase-porn "https://nypost.com/2014/04/28/chase-closes-the-accounts-of-hundreds-of-porn-stars/")
◊(define porn-bank-moral "https://www.cnbc.com/id/100746445")
◊(define wells-fargo-supporter "https://www.cnbc.com/2018/08/22/wells-fargo-closes-bank-account-of-candidate-who-supports-marijuana.html")
◊(define are-cryptos-money "/are_cryptocurrencies_money.html")
◊(define coinbase-close-accounts "https://news.bitcoin.com/coinbase-and-its-troubling-history-of-customer-account-closures/")
◊(define localbitcoins "https://localbitcoins.com/")
◊(define local.bitcoin.com "https://local.bitcoin.com/")

◊;https://www.engadget.com/2015/12/02/paypal-square-and-big-bankings-war-on-the-sex-industry/?guccounter=1

