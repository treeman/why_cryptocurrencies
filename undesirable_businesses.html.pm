#lang pollen

◊(define-meta title "“Undesirable” businesses")
◊(define-meta subtitle "The ones payment processors don't want to do business with")
◊(define-meta updated "2019-05-29T06:35:29+02:00")
◊(define-meta uuid "ac14d4a1-3796-4f5b-9350-b56e796625a1")

If you want to accept digital payments today you need to partner with a payment processor, for example Stripe or PayPal. Usually that's not a problem---but what if they say no?◊mn{banks}

◊ndef["banks"]{
    While we'll focus on payment processors in this chapter, the problem is much bigger than that. Often banks don't want anything to do with the business either. Sometimes they even close personal accounts of business owners---because of the nature of the business.

    For example ◊link[chase-porn]{Chase closed hundreds of porn stars' accounts} and Wells Fargo ◊link[wells-fargo-supporter]{closed the bank account} of a supporter of medical marijuana.
}

This is the reality for certain businesses with high ◊link[chargeback-fraud]{chargebacks} rate or that exists in a legal and ◊link[porn-bank-moral]{moral} gray area. If you view it from the payment processor's point-of-view it might make sense---they're just minimizing their risk. But that's of little comfort to the ones being rejected.

Here are some examples of affected businesses:

◊ul{
    ◊li{Adult entertainment (anything remotely related to porn)}
    ◊li{Auctions}
    ◊li{Cannabis}
    ◊li{Cryptocurrencies (ironic, don't you think?)◊sn{crypto-banks}}
    ◊li{Gambling}
}

◊ndef["crypto-banks"]{
    There are ◊link[banks-bitcoin]{many} ◊link[barclays-bitcoin]{stories} of banks closing down your account if they find out you've traded cryptocurrencies. Naturally without warning, explanation or recourse.
}

◊(define banks-bitcoin "https://www.ccn.com/banks-still-closing-accounts-bitcoin-activity")
◊(define barclays-bitcoin "https://www.telegraph.co.uk/finance/personalfinance/investing/11537972/Barclays-closed-down-my-bank-account-after-Bitcoin-trade.html")

For whatever reason, these businesses are deemed high risk and undesirable. Despite them being legal they might not be able to accept digital payments.


◊subhead{Pot stores are cash-only}

Pot stores in the United States are in a weird legal place. While they're legal---◊link[cannabis-legality]{to various degrees}---in many states they're illegal under federal law. Kind of like ◊link[scat]{Schrödinger's cat}: they're legal yet simultaneously illegal.

Because banks in the US are regulated ◊link[us-bank-regulations]{both on a state and federal level}, banks don't want anything to do with them. Payment processors take a similar stance, forcing the stores to be entirely cash-only.◊sn{pot-banks}

◊(define us-bank-regulations "https://en.wikipedia.org/wiki/Bank_regulation_in_the_United_States")

◊ndef["pot-banks"]{
    Not having access to banks means they also have to store the cash themselves and they have trouble getting loans.
}

We're talking large amounts of money here, for example ◊link[pot-banks-no]{two businesses in Denver} generated $250,000 to $350,000 in monthly sales---all in cash. This all needs to be counted, recounted, transported and stored. Large amounts of cash needs large amounts of secure storage; which means renting warehouses and hiring armored trucks and armored guards.

They are absolutely dependent on nearby ATMs, because the move towards cashless payments means people don't usually carry that much cash. In fact many stores have an ATM inside the store itself, to sort-of allow people to pay with credit cards.◊sn{atms}

◊ndef["atms"]{
    The ATMs are run by separate businesses and usually don't have any problems with banks.
}

Not having access to digital payments hurts, but it's not all doom and gloom. Cash does work---in physical stores. There might also be (uncertain) ◊link[state-payment-cannabis]{ways to accept digital payments}, a basic requirement for online pot stores.

◊(define pot-banks-no "https://www.nytimes.com/2018/01/04/magazine/where-pot-entrepreneurs-go-when-the-banks-just-say-no.html")
◊(define scat "https://en.wikipedia.org/wiki/Schr%C3%B6dinger%27s_cat")
◊(define cannabis-legality "https://en.wikipedia.org/wiki/Legality_of_cannabis_by_U.S._jurisdiction")
◊(define state-payment-cannabis "http://stayregular.net/blog/the-state-of-payment-processing-for-cannabis-e-commerce")

◊;http://stayregular.net/blog/the-state-of-payment-processing-for-cannabis-e-commerce
◊;https://www.cardfellow.com/blog/credit-card-processing-for-marijuana-businesses/
◊;https://www.governing.com/topics/finance/sl-marijuana-businesses.html


◊subhead{Expensive and dubious workarounds}

But wait a minute, some "undesirable" companies do accept credit cards? Has the problem been solved? Not really.◊sn{programming-adult}

◊ndef["programming-adult"]{
    There was a ◊link[programming-adult-blog]{popular blog post} detailing the struggles of porn sites accepting digital payments. The post itself has been deleted because of people ◊link[programming-adult-hn]{accusing him} of admitting to fraud (the workarounds are of dubious legality). If you're savvy you might be able to find the original post on the ◊link[wayback-machine]{Wayback machine}.
}

Porn is a business with very high rates of ◊link[chargeback-fraud]{charge backs}. Just think about it: what happens if your significant other would come across a charge to "XXX-Teens" or similar? Of course you'd exclaim "my card must've been compromised!" and you quickly call your bank and issue a charge back.

Therefore most payment processors ◊link[stripe-restricted]{explicitly forbid} porn sites, making it very difficult to accept credit cards directly.


◊img[#:src "/images/reversal1.png"]{
    ◊todo{No porn accepted here}
}

Instead they have a third party request the payment on their behalf and do some shady stuff. They can for example claim the payment is for another type of business, which isn't banned by the payment processor.

◊img[#:src "/images/reversal1.png"]{
    ◊todo{"social network company"? Ok!}
}

◊(define stripe-restricted "https://stripe.com/restricted-businesses")

These things are on the gray area legal wise◊sn{legal?}, so the companies that does this have high fees---VERY high fees. While regular payment processors may have ~3-4% fees these can be as high as ◊strong{30%}. That's ludicrously expensive for low margin businesses.

◊ndef["legal?"]{
    I'm not taking a stand if this practice is legal or not. Just noting that they don't really have many options.
}


◊(define wayback-machine "https://archive.org/web/web.php")
◊(define programming-adult-blog "https://dev.to/jwoertink/programming-in-the-adult-entertainment-industry-is-broken-hgn")
◊(define programming-adult-blog-wayback "https://web.archive.org/web/20180814120031/https://dev.to/jwoertink/programming-in-the-adult-entertainment-industry-is-broken-hgn")
◊(define programming-adult-hn "https://news.ycombinator.com/item?id=17756219")


◊subhead{Why does it matter?}

◊qt[#:author "Martin Niemöller"
    #:src "a poetic form of a post-war confession"
    #:url "https://en.wikipedia.org/wiki/First_they_came%E2%80%A6"]{
    First they came for the socialists, and I did not speak out---
        ◊tab{because I was not a socialist.}

    Then they came for the trade unionists, and I did not speak out---
        ◊tab{because I was not a trade unionist.}

    Then they came for the Jews, and I did not speak out---
        ◊tab{because I was not a Jew.}

    Then they came for me---
        ◊tab{and there was no one left to speak for me.}
}

◊(define (tab . txt)
   `(span ((class "qt-tab")) ,@txt))

You might wonder what does it matter if these businesses disappear. Maybe you don't gamble, don't use cannabis and find porn deplorable---which is fine. But what about the thoughts of other people?◊sn{privacy}

◊ndef["privacy"]{
    Incidentally it's also a powerful argument for privacy. Maybe you personally don't have anything to hide---but others do.

    For example a gay teenage boy who would get thrown out if his parents found out, or even get killed if he lives in the wrong country.

    Maybe someone who likes sexual acts, which would be embarrassing if they were known? Think of politicians and how easily their careers can be destroyed by embarrassing facts.

    Or people trying to hide in oppressive regimes. Like how ◊link[re-education]{up to one million detained in China’s mass “re-education” drive}.

    Don't they have a right to privacy?
}


The cannabis business is experiencing ◊link[cannabis-growth]{explosive growth}, hinting at how many people do care. Porn is another thing that is very popular---but very few would admit they watch it. I can see why some people object against them... But what's the problem with auctions? (Other than being an easy target for ◊link[rel-charge-back-fraud]{charge back fraud}.)

Why should people running and using ◊strong{legal} businesses be punished for arbitrary reasons? A society that punishes people for doing something legal seems insane to me. (Yes legality is different from morality, a topic we'll revisit in the chapter about ◊link[black-markets]{black markets}.)

◊(define re-education "https://www.amnesty.org/en/latest/news/2018/09/china-up-to-one-million-detained/")
◊(define cannabis-growth "https://www.marijuanaseo.com/cannabis-industry-statistics/")
◊(define black-markets "/black_markets.html")


◊subhead{Are cryptocurrencies the solution?}

Cryptocurrencies give you permissionless digital payments---it solves the problem of accepting payments very well. But it's not a full solution, at least today.

As we discussed in ◊link[are-cryptos-money]{Are cryptocurrencies money?} they're still very volatile and not widely accepted. Businesses still need to convert cryptocurrencies to fiat to be able to pay their bills and salaries, and the workers in turn need to pay their bills. To sell them for fiat you still need to go through exchanges who---you guessed it---can ◊link[coinbase-close-accounts]{refuse to do business with you}.

While cryptocurrencies improves the situation today◊sn{localbitcoins}, we would really need to bypass all third-parties for a great solution. This means you should be able to pay all expenses with cryptocurrencies---so you can't get blocked by a third party anywhere on the line.

But there are related problems cryptocurrencies can't solve. Banks serve a very important function: they lend businesses money, and there's no good solution if they say no. It can also be more secure to let banks store large sums of money than keeping it yourself.

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
◊(define rel-charge-back-fraud "#charge-back-fraud")

◊;https://www.engadget.com/2015/12/02/paypal-square-and-big-bankings-war-on-the-sex-industry/?guccounter=1

