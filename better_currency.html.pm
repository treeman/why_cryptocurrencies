#lang pollen

◊(define-meta title "A better currency")
◊(define-meta subtitle "Magic internet money")
◊(define-meta published "2019-10-25T00:00:00+01:00")
◊(define-meta updated "2020-01-15T20:08:02+01:00")
◊(define-meta uuid "10e625f0-2470-49a9-ae74-36f0c78d943b")

◊epigraph{
  ◊qt[#:author "Mayer Amschel Rothschild"]{
    Let me issue and control a nation's money and I care not who writes the laws.
  }
}

Our focus during the last section was on the use of cryptocurrencies as a payment system. But in fact Bitcoin wasn't invented to be just an improved PayPal---it was made to be something more, with much larger consequences: a completely new form of money.◊mn{currency-money}

◊ndef["currency-money"]{
    The term ◊em{money} refers to an intangible concept and ◊em{currency} is the actual thing used as money.

    For example cryptocurrencies are money---you cannot pay me with "3 cryptocurrency". And Bitcoin (BTC) is a currency because you can send 3 BTC to me.
}

In this section we'll focus on the benefits of using cryptocurrencies as money and compare it to what we use today. We'll begin by highlighting flaws with the current financial system, flaws that originate from our use of unsound money. It's a system full of broken incentives, that relies on being able to predict the unpredictable and that tries to solve all problems by printing more money, which has various negative side-effects.

Even though privacy is a human right, the digital money we use today is very bad for privacy as all our financial information is tracked, stored and sold to private companies. Privacy is important because it helps you stay who you are and it increases the personal security for yourself and others.

Cryptocurrencies mitigates all these problems, and they're also truly global, unhampered by borders, disputes and local monetary policy.◊sn{why-not-gold?}

◊ndef["why-not-gold?"]{
    Many of my arguments in this section will apply to gold, or gold-backed fiat, as well as cryptocurrencies. See the ◊link[comparing-props]{comparision of properties between different forms of money} for more details on the pros and cons of different forms of money.
}


◊(define crypto-properties "/properties_of_a_cryptocurrency.html")
◊(define what-is-money "/what_is_money.html")
◊(define are-cryptos-money "/are_cryptocurrencies_money.html")
◊(define fake-gold "https://www.reuters.com/article/us-gold-swiss-fakes-exclusive/exclusive-fake-branded-bars-slip-dirty-gold-into-world-markets-idUSKCN1VI0DD?utm_source=reddit.com")
◊(define comparing-props "/are_cryptocurrencies_money.html#comparing-properties-with-other-forms-of-money")

