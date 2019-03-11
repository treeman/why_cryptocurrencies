#lang pollen

◊(define-meta title "About the book")
◊(define-meta subtitle "A perspective beyond the hype")

Whenever the topic of cryptocurrencies---where Bitcoin and Ethereum are the most known---come up in conversations they're almost always misunderstood or dismissed.

If you're a cryptocurrency skeptic I honestly can't blame you. All you ever hear about it on the news is how ◊link[cnn-bitcoin-rallies]{Bitcoin rallies} and how ◊link[independent-worthless]{Cryptocurrencies are about to become worthless}. Maybe they'll throw in claims that it's ◊link[cnn-environment]{an environmental disaster} or only used for ◊link[independent-illegal]{illegal purposes} for good measure.

Curiously enough they don't explain what cryptocurrencies are or what they can be useful for. But it's to be expected as news today mostly is on eye-catching stories, ◊mn{news} it's why unsettling events like murder or terrorist attacks gain en extreme amount of attention although they're in reality very rare.

◊ndef["news"]{
    It's interesting when the news talks about something you have a good understanding of: they're often completely wrong. Makes you wonder, how wrong are they about things you don't know about?
}

Maybe this is why most people --- even cryptocurrency fans --- only see cryptocurrencies as a form of investment. After all there's few things as interesting as the possibility of becoming rich very quickly.

Even if you'd like to know more what hope does average Joe have when even the famous security technologist Bruce Schneier concludes that:

◊qt[#:author "Bruce Schneier" #:src "Blockchain and Trust" #:url "https://www.schneier.com/blog/archives/2019/02/blockchain_and_.html"]{
  Honestly, cryptocurrencies are useless
}

◊sn{schneier} It's almost a universal phenomena. I've heard these arguments from students, co-workers, friends, family and highly technical online communities:

◊ol{
  ◊li{It's a scam}
  ◊li{It's just a speculative bubble and cryptocurrencies are really worthless

    Here many draw parallels to Beanie Babies◊sn{beanies} or the Tulip mania◊sn{tulips}.
  }
  ◊li{They don't do anything better than other payment systems like PayPal or VISA}
  ◊li{There's no legal use case}
  ◊li{They don't do anything valuable}
}

It seems everyone has an opinion but few seem capable of explaining what it is or what it does differently.  Of course most aren't dismissive but simply don't understand what it's all about. Many are curious and want to learn more.

With this book I hope to show how cryptocurrencies can be useful, what use cases exist and how it can help people I'm now writing this book. I'm not trying to make anyone a cryptocurrency fan, I just hope to give bring some nuance and to help answer questions curious people have about cryptocurrencies.

And I must admit I'm also being selfish, writing a book is on my bucket list.


◊subhead{What this book is}

This book tries to describe what cryptocurrencies are useful for and what value they can bring. In particular I hope to show you that:

◊ol{
  ◊li{Cryptocurrencies aren't just scams◊sn{scams}}
  ◊li{It's more than just a speculative asset}
  ◊li{They do many things better than any alternative}
  ◊li{There are legal use cases}
  ◊li{They have valuable use cases}
}


◊subhead{What this book isn't}

There are many problems with cryptocurrencies as they exist today. This isn't an attempt to explain them away or to look at work being done to counter them. For completeness hare are some of the biggest problems as I see it:

◊ul{
  ◊li{How can a cryptocurrency scale globally?}
  ◊li{How can payments be made secure enough for retail in a couple of seconds?}
  ◊li{Bitcoin uses a public ledger where all payments are visible, what about privacy? ◊sn{monero}}
  ◊li{User experience is far from the level of VISA or Apple Pay.}
}

Instead of focusing on the problems we'll take a look at what cryptocurrencies are useful for today and what value they can bring if they fulfil their potential.

A problem focused view is excellent for an engineer and a problem solver but it can be very limiting as well. For example the computer and the internet had many problems and drawbacks when they first were invented and look at where we are now.

We'll not go into technical detail and stick to high level concepts. Neither will we focus on a single implementation---Bitcoin is the first cryptocurrency but there are hundreds more◊sn{cryptos}---this is about the properties of a cryptocurrency which can be provided in several different ways.

And of course none of this is investment advice.


◊ndef["schneier"]{
    Schneier brings an interesting perspective and he's right about one very important aspect: Contrary to popular belief cryptocurrencies doesn't remove all trust. It just removes and shifts some.

    To counter his point that "cryptocurrencies are useless" all you have to do is provide one counterexample where they're useful. I will give several.
}


◊ndef["beanies"]{
    Beanie Babies is a type of toys which people used to speculate with. It become a mania where people would sell---and buy---these toys at 10x or 100x their original price and was at one time responsible for 10% of eBay's sales. The mania managed to make the creator, Ty Warner, one of the richest men in the world before it crashed.

    Here people say that cryptocurrencies too is only propped up by a speculative mania and that their value will crash to nothing, just like the Beanie Babies.

    If you're looking for the digital version of Beanie Babies then look no further than ◊link[cryptokitties]{CryptoKitties} where someone spent $114,000 on a virtual kitten in a blockchain game running on Ethereum.
}


◊ndef["tulips"]{
    TODO Describe tulip fever and how it relates to cryptocurrencies.

    Although commonly refered to it wasn't as bad as it's often portrayed as. But it was still quite bad.

    ◊link{https://en.wikipedia.org/wiki/Tulip_mania}
}


◊ndef["monero"]{
    Bitcoin, like almost all cryptocurrencies, use a public ledger where you can lookup how many coins any address has and you can also trace all coins to the beginning of time.

    There are cryptocurrencies like ◊link[Monero]{Monero} which hides inputs, outputs and amounts for all transactions making this impossible.
}


◊ndef["cryptos"]{
    Although there are hundreds and perhaps thousands most are just copies or outright scams.
}

◊ndef["scams"]{
    But take care, there are ◊strong{lot's} of scams out there.
}

◊(define Monero "https://www.getmonero.org/")

◊(define schneier "https://www.schneier.com/blog/archives/2019/02/blockchain_and_.html")
◊(define cnn-bitcoin-rallies "https://money.cnn.com/2017/12/06/investing/bitcoin-rally-hits-12000/index.html")
◊(define independent-worthless "https://www.independent.co.uk/voices/bitcoin-cryptocurrency-price-crash-bank-of-england-agustin-carstens-a8645356.html")
◊(define cnn-environment "https://money.cnn.com/2017/12/07/technology/bitcoin-energy-environment/index.html")
◊(define independent-illegal "https://www.independent.co.uk/life-style/gadgets-and-tech/news/bitcoin-price-fall-criminals-blockchain-anonymous-cryptocurrency-zcash-monero-dash-a8174716.html")
◊(define cryptokitties "https://www.cnbc.com/2017/12/06/meet-cryptokitties-the-new-digital-beanie-babies-selling-for-100k.html")

