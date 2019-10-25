#lang pollen

◊(define-meta title "A better currency")
◊(define-meta subtitle "Magic internet money")
◊(define-meta updated "2019-10-25T07:05:45+02:00")
◊(define-meta uuid "10e625f0-2470-49a9-ae74-36f0c78d943b")

◊epigraph{
  ◊qt[#:author "Mayer Amschel Rothschild"]{
    Let me issue and control a nation's money and I care not who writes the laws.
  }
}

Our focus during the last section was on the use of cryptocurrencies as a payment system. But in fact Bitcoin wasn't invented to be just an improved PayPal---it was made to be something more, with much larger consequences: a completely new form of money.◊mn{currency-money}

◊ndef["currency-money"]{
    The term ◊em{money} refers to an intangible concept and ◊em{currency} is the actual thing used as money.

    For example cryptocurrencies is money---you cannot pay me with "3 cryptocurrency". And Bitcoin (BTC) is a currency because you can send 3 BTC to me.
}

We previously asked ourself ◊link[what-is-money]{what money is} and found that money is a tool to make trade more efficient. There are a number of properties good money should have, such as being durable and divisible, and cryptocurrencies fulfill these very well and should be ◊link[are-cryptos-money]{considered a form of money}. I would even go so far to say they have better properties for money than anything else in history, but they're held back by adoption and volatility.

In this section we'll focus on benefits of using cryptocurrencies as money and comparisons with what we use today. You might want to review the ◊link[crypto-properties]{properties cryptocurrencies have}, but for this section the most important one is the lack of central control over the money supply. It's similar to gold in this respect, except that ◊link[fake-gold]{gold can be counterfeit}.◊sn{why-not-gold?}

◊ndef["why-not-gold?"]{
    Many of my arguments in this section will apply to gold, or gold-backed fiat, as well as cryptocurrencies. See the ◊link[comparing-props]{comparision of properties between different forms of money} for more details on the pros and cons of different forms of money.
}


◊(define crypto-properties "/properties_of_a_cryptocurrency.html")
◊(define what-is-money "/what_is_money.html")
◊(define are-cryptos-money "/are_cryptocurrencies_money.html")
◊(define fake-gold "https://www.reuters.com/article/us-gold-swiss-fakes-exclusive/exclusive-fake-branded-bars-slip-dirty-gold-into-world-markets-idUSKCN1VI0DD?utm_source=reddit.com")
◊(define comparing-props "/are_cryptocurrencies_money.html#comparing-properties-with-other-forms-of-money")


◊; https://www.youtube.com/watch?v=lbarjpJhSLw
◊; <https://www.bloomberg.com/opinion/articles/2019-05-06/banks-look-safer-with-deposits>

◊; Fed cut rates with 7-3 vote
◊; https://news.ycombinator.com/item?id=21008239

◊; Why the Federal Reserve is pouring money into the financial system
◊;https://news.ycombinator.com/item?id=21004068

◊; Modern Monetary Theory (MMT)
◊; https://www.taxjustice.net/2019/03/05/the-magic-money-tree-from-modern-monetary-theory-to-modern-tax-theory/

◊; Cashing In: How to Make Negative Interest Rates Work 
◊; <https://news.ycombinator.com/item?id=20079686>

◊; Germany in Uproar as Negative Rates Threaten Saving Obsession 
◊; <https://news.ycombinator.com/item?id=20792765>

◊; 33 AD example
◊; https://www.businessinsider.com/qe-in-the-financial-crisis-of-33-ad-2013-10?r=US&IR=T&IR=T

◊; https://fortune.com/2019/09/26/the-feds-repo-market-bailout-is-a-sign-of-deeper-problems-that-are-getting-worse-over-time/

