#lang pollen

◊(define-meta title "“Undesirable” businesses")
◊(define-meta subtitle "The ones payment processors don't want to do business with")
◊(define-meta published "2019-06-12T00:00:00+01:00")
◊(define-meta updated "2020-03-09T21:09:41+01:00")
◊(define-meta uuid "7f619868-39ff-43db-92b4-af452ee4c8ed")

If you want to accept digital payments today you need to partner with a payment processor, for example Stripe or PayPal. Usually that's not a problem---but what if they say no?◊mn{banks}

◊ndef["banks"]{
    While we'll focus on payment processors in this chapter, the problem is much bigger than that. Often banks don't want anything to do with the business either. Sometimes they even close personal accounts of business owners---because of the nature of the business.

    For example ◊link[chase-porn]{Chase closed hundreds of porn stars' accounts} and Wells Fargo ◊link[wells-fargo-supporter]{closed the bank account} of a supporter of medical marijuana.
}

This is the reality for certain businesses with high ◊link[charge-back-fraud]{charge back} rate or that exists in a legal and ◊link[porn-bank-moral]{moral} gray area. If you view it from the payment processor's point-of-view it might make sense---they're just minimizing their risk. But that's of little comfort to those being rejected.

Here are some examples of affected businesses:

◊ul{
    ◊li{Adult entertainment (anything remotely related to porn)}
    ◊li{Auctions}
    ◊li{Cannabis}
    ◊li{Cryptocurrencies (how ironic)◊sn{crypto-banks}}
    ◊li{Gambling}
}

◊ndef["crypto-banks"]{
    There are ◊link[banks-bitcoin]{many} ◊link[barclays-bitcoin]{stories} of banks closing down your account if they find out you've traded cryptocurrencies. Naturally without warning, explanation or recourse.
}

◊(define chase-porn 
  (x-ref
    "2019-06-12"
    "https://nypost.com/2014/04/28/chase-closes-the-accounts-of-hundreds-of-porn-stars/"
    "Chase closes hundreds of porn stars’ accounts"))
◊(define porn-bank-moral 
  (x-ref
    "2019-06-12"
    "https://www.cnbc.com/id/100746445"
    "Porn and Banks: Drawing a Line on Loans"))
◊(define wells-fargo-supporter 
  (x-ref
    "2019-06-12"
    "https://www.cnbc.com/2018/08/22/wells-fargo-closes-bank-account-of-candidate-who-supports-marijuana.html"
    "A candidate backed medical marijuana. Wells Fargo closed her bank account. "))
◊(define banks-bitcoin
  (x-ref
    "2019-06-12"
    "https://www.ccn.com/banks-still-closing-accounts-bitcoin-activity"
    "Australian Commission Investigates Banks Closing Bitcoin Companies’ Accounts"))
◊(define barclays-bitcoin
  (x-ref
    "2019-06-12"
    "https://www.telegraph.co.uk/finance/personalfinance/investing/11537972/Barclays-closed-down-my-bank-account-after-Bitcoin-trade.html"
    "'Barclays closed down my bank account after Bitcoin trade'"))

For whatever reason, these businesses are deemed high risk and undesirable; despite them being legal they might not be able to accept digital payments. This is something that cryptocurrencies solve.


◊subhead{Pot stores are cash-only}

Pot stores in the United States are in a weird legal place. While they're legal---◊link[cannabis-legality]{to various degrees}---in many states they're illegal under federal law. Kind of like ◊link[scat]{Schrödinger's cat}: they're legal yet simultaneously illegal.

Because banks in the US are regulated ◊link[us-bank-regulations]{both on a state and federal level}, banks don't want anything to do with them. Payment processors take a similar stance, forcing the stores to be entirely cash-only.◊sn{pot-banks}

◊(define us-bank-regulations
  (x-ref
    "2019-06-12"
    "https://en.wikipedia.org/wiki/Bank_regulation_in_the_United_States"
    "Bank regulation in the United States"))

◊ndef["pot-banks"]{
    Not having access to banks means they also have to store the cash themselves and have trouble getting loans.
}

We're talking large amounts of money here, for example ◊link[pot-banks-no]{two businesses in Denver} generated $250,000 to $350,000 in monthly sales---all in cash. This all needs to be counted, recounted, transported and stored. Large amounts of cash needs large amounts of secure storage, which means renting warehouses and hiring armored trucks and armored guards.

They are absolutely dependent on nearby ATMs, because the move towards cashless payments mean people don't usually carry that much cash. In fact many stores have an ATM inside the store itself, to sort-of allow people to pay with credit cards.◊sn{atms}

◊ndef["atms"]{
    The ATMs are run by separate businesses and usually don't have any problems with banks.
}

Not having access to digital payments hurts, but there are workarounds. Cash does work---in physical stores. There might also be (uncertain) ◊link[state-payment-cannabis]{ways to accept digital payments}, a basic requirement for online stores.

◊note-pos[#:top -26]{pot-banks}
◊note-pos[#:top -9]{atms}

◊(define pot-banks-no
  (x-ref
    "2019-06-12"
    "https://www.nytimes.com/2018/01/04/magazine/where-pot-entrepreneurs-go-when-the-banks-just-say-no.html"
    "Where Pot Entrepreneurs Go When the Banks Just Say No"))
◊(define scat
  (x-ref
    "2019-06-12"
    "https://en.wikipedia.org/wiki/Schr%C3%B6dinger%27s_cat"
    "Schrödinger's cat"))
◊(define cannabis-legality
  (x-ref
    "2019-06-12"
    "https://en.wikipedia.org/wiki/Legality_of_cannabis_by_U.S._jurisdiction"
    "Legality of cannabis by U.S. jurisdiction"))
◊(define state-payment-cannabis
  (x-ref
    "2019-06-12"
    "http://stayregular.net/blog/the-state-of-payment-processing-for-cannabis-e-commerce"
    "The State of Payment Processing for Cannabis E-Commerce"))

◊;http://stayregular.net/blog/the-state-of-payment-processing-for-cannabis-e-commerce
◊;https://www.cardfellow.com/blog/credit-card-processing-for-marijuana-businesses/
◊;https://www.governing.com/topics/finance/sl-marijuana-businesses.html


◊subhead{Expensive and dubious workarounds}

But some "undesirable" companies do accept credit cards? Does that mean the problem has been solved? Unfortunately, not really.◊sn{programming-adult}

◊ndef["programming-adult"]{
    There was a ◊link[programming-adult-blog]{popular blog post} detailing the struggles for porn sites to accept digital payments. The post itself has been deleted because of people ◊link[programming-adult-hn]{accusing him} of admitting to fraud (the workarounds are of dubious legality). If you're savvy you might be able to find the original post on the ◊link[wayback-machine]{Wayback machine}.
}

For example porn is a business with very high rate of ◊link[charge-back-fraud]{charge backs}. Just think about it: what happens if your significant other would come across a charge to "XXX-Teens" or similar? Of course you'd exclaim "my card must've been compromised!" and quickly call your bank to freeze your card and issue a charge back.

Therefore most payment processors ◊link[stripe-restricted]{explicitly forbid} porn sites, making it very difficult to accept credit cards directly.


◊img[#:src "/images/xxx-payments1.png"]{
    Payment processors usually don't want anything to do with porn sites.
}

Instead they have a third party request the payment on their behalf and do some shady stuff. They can for example claim the payment is for another type of business, which isn't banned by the payment processor.

◊img[#:src "/images/xxx-payments2.png"]{
    Another party acting as an intermediary might get accepted by the payment processor, especially if they disguise themselves.
}

◊(define stripe-restricted 
  (x-ref
    "2019-06-12"
    "https://stripe.com/restricted-businesses"
    "Stripe: Restricted Businesses—Sweden"))

These things are on the gray area legal wise,◊sn{legal?} so the companies that does this have high fees---VERY high fees. While regular payment processors may have ~3-4% fees, these intermediary fees can be as high as ◊strong{30%}. That's ludicrously expensive for low margin businesses.

◊note-pos[#:top -8]{legal?}

◊ndef["legal?"]{
    I don't know if this practice is legal or not, I just want to note they don't really have many options.
}


◊(define programming-adult-blog 
  (x-ref
    "2019-06-12"
    "https://dev.to/jwoertink/programming-in-the-adult-entertainment-industry-is-broken-hgn"
    "Programming in the Adult Entertainment Industry is Broken"))
◊(define programming-adult-blog-wayback 
  (x-ref
    "2019-06-12"
    "https://web.archive.org/web/20180814120031/https://dev.to/jwoertink/programming-in-the-adult-entertainment-industry-is-broken-hgn"
    "Programming in the Adult Entertainment Industry is Broken (Wayback Machine)"))
◊(define programming-adult-hn 
  (x-ref
    "2019-06-12"
    "https://news.ycombinator.com/item?id=17756219"
    "Hacker News: Programming in the Adult Entertainment Industry Is Broken"))


◊subhead{Why does it matter?}

◊qt[#:author "Martin Niemöller"
    #:src "a poetic form of a post-war confession"
    #:url post-war]{
    First they came for the socialists, and I did not speak out---
        ◊tab{because I was not a socialist.}

    Then they came for the trade unionists, and I did not speak out---
        ◊tab{because I was not a trade unionist.}

    Then they came for the Jews, and I did not speak out---
        ◊tab{because I was not a Jew.}

    Then they came for me---
        ◊tab{and there was no one left to speak for me.}
}

◊(define post-war
   (x-ref
      "2019-06-12"
      "https://en.wikipedia.org/wiki/First_they_came%E2%80%A6"
      "Wikipedia: First they came ..."))

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


The cannabis business is experiencing ◊link[cannabis-growth]{explosive growth}, hinting at how many people do care. Porn is another thing that is very popular---but very few would admit they watch it. I can see why some people object against them... But what's the problem with auctions? (Other than being an easy target for ◊link[charge-back-fraud]{charge back fraud}.)

Why should people running and using ◊strong{legal} businesses be punished for arbitrary reasons? A society that punishes people for doing something legal seems insane to me. (Yes, legality is different from morality, a topic we'll revisit in the chapter about ◊link[darknet_markets]{darknet markets}.)

◊note-pos[#:top -20]{privacy}

◊(define re-education 
  (x-ref
    "2019-06-12"
    "https://www.amnesty.org/en/latest/news/2018/09/china-up-to-one-million-detained/"
    "Up to one million detained in China’s mass “re-education” drive"))
◊(define cannabis-growth 
  (x-ref
    "2019-06-12"
    "https://www.marijuanaseo.com/cannabis-industry-statistics/"
    "32 Incredible Cannabis Industry Statistics 2020"))


◊subhead{Are cryptocurrencies the solution?}

Cryptocurrencies give you permissionless digital payments---it solves the problem of accepting payments very well. But it's not a full solution, at least today.

As we discussed in ◊link[are_cryptocurrencies_money]{Are cryptocurrencies money?} they're very volatile and not widely accepted. Businesses still need to convert cryptocurrencies to fiat to be able to pay their bills and salaries, and the workers in turn need to pay their bills. To sell them for fiat you still need to go through exchanges who---you guessed it---can ◊link[coinbase-close-accounts]{refuse to do business with you}.◊sn{localbitcoins}

While cryptocurrencies improves the situation today, we would really need to bypass all third-parties for a great solution. This means you should be able to pay all expenses with cryptocurrencies---so you can't get blocked by a third party anywhere on the line.

But there are related problems cryptocurrencies can't solve. Banks serve a very important function: they lend businesses money, and there's no good solution if they say no. It can also be more secure to let banks store large sums of money than keeping it yourself.

◊ndef["localbitcoins"]{
    It's not as big of a problem if an exchange blocks you compared to being able to accept money in the first place---it's easier to move to another exchange. There are also ◊link[localbitcoins]{peer-to-peer} ◊link[local.bitcoin.com]{variants} where you can trade cryptocurrencies in person, bypassing the problem.
}


◊(define coinbase-close-accounts 
  (x-ref
    "2019-06-12"
    "https://news.bitcoin.com/coinbase-and-its-troubling-history-of-customer-account-closures/"
    "Coinbase and Its Troubling History of Customer Account Closures"))
◊(define localbitcoins 
  (x-ref
    "2019-06-12"
    "https://localbitcoins.com/"
    "LocalBitcoins.com: Buy and sell bitcoins near you"))
◊(define local.bitcoin.com 
  (x-ref
    "2019-06-12"
    "https://local.bitcoin.com/"
    "Bitcoin.com Local:  Bitcoin Cash for everyone."))

◊;https://www.engadget.com/2015/12/02/paypal-square-and-big-bankings-war-on-the-sex-industry/?guccounter=1

