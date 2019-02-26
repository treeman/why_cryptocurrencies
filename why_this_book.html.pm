#lang pollen

◊(define-meta title "Why this book?")
◊(define-meta subtitle "Another perspective")

Whenever the topic of cryptocurrencies---where Bitcoin and Ethereum are the most known---come up in conversations they're almost always misunderstood or dismissed.

If you're a cryptocurrency skeptic I honestly can't blame you. All you ever hear about it on the news is how ◊link[cnn-bitcoin-rallies]{Bitcoin rallies} and how ◊link[independent-worthless]{Cryptocurrencies are about to become worthless}. Maybe they'll throw in claims that it's ◊link[cnn-environment]{an environmental disaster} or only used for ◊link[independent-illegal]{illegal purposes} for good measure.

Curiously enough they don't explain what cryptocurrencies are or what they can be useful for. But it's to be expected as news today mostly is on eye catching stories, it's why unsettling events like murder or terrorist attacks gain en extreme amount of attention although they're in reality very rare.

Maybe this is why most people only see cryptocurrencies as a form of investment---after all there's few things as interesting as the possibility of becoming rich very quickly.

Even if you'd like to know more, what hope does average Joe have when even the famous security technologist Bruce Schneier concludes that:

> Honestly, cryptocurrencies are useless [^schneier]

It's almost a universal phenomena. I've heard these arguments from students, co-workers, friends, family and highly technical online communities:

◊ul{
  ◊li{It's a scam}
  ◊li{It's just a speculative bubble and cryptocurrencies are really worthless

    Here many draw parallels to Beanie Babies[^beanies] or the Tulip mania[^tulips].
  }
  ◊li{They don't do anything better than other payment systems like PayPal or VISA}
  ◊li{There's no legal use case}
}

It seems everyone has an opinion but few seem capable of explaining what it is or what it does differently.
Of course most aren't dismissive but simply don't understand what it's all about. Many are curious and want to learn more.

As a cryptocurrency fan I'm often in the position to defend it and try to bring up how it can be useful, what use cases exist and even how it can help society. I've tried to answer these questions several times but it gets old fast. Hence this book.


◊subhead{What this book is}

This book means to describe what cryptocurrencies are useful for and what value they can bring.

With examples, stories and discussions I will try to show you that:

◊ul{
  ◊li{Cryptocurrencies aren't just scams}
  ◊li{It's more than just a speculative asset}
  ◊li{There are legal use cases}
  ◊li{They do many things better than any alternative}
}


◊subhead{What this book isn't}

There are many problems with cryptocurrencies as they exist today. This isn't an attempt to explain them away or to look at work being done to counter them. If you're curious here are some of the biggest problems as I see it:

◊ul{
  ◊li{How can a cryptocurrency scale globally?}
  ◊li{How can payments be made secure enough for retail in a couple of seconds?}
  ◊li{Bitcoin uses a public ledger where all payments are visible, what about privacy? [^monero]}
  ◊li{User experience is far from the level of VISA or Apple Pay.}
}

Instead we'll take a look at what cryptocurrencies are useful for today and what value they can bring if they fulfil their potential.

We'll not go into technical detail and stick to high level concepts. Neither will we focus on a single implementation---Bitcoin is the first cryptocurrency but there are hundreds more[^cryptos]---this is about the properties of a cryptocurrency which can be provided in several different ways.

And of course none of this is investment advice.


◊subhead{How to read this book}

Each chapter is supposed to be standalone so you can jump around and read it however you want. The only prerequisite is to have a basic understanding of what a cryptocurrency does which I describe in ◊link[the-first-chapter]{the first chapter}.

If you want to receive an email when I post a new chapter please ◊link[subscribe]{subscribe here}. I will only use it to email you about this book and you can unsubscribe at any time.

There is also an ◊link[rss]{RSS feed} if you prefer that.


[^schneier]: Schneier brings an interesting perspective and he's right about one very important aspect: Contrary to popular belief cryptocurrencies doesn't remove all trust. It just removes and shifts some.

    To counter his point that "cryptocurrencies are useless" all you have to do is provide one counterexample where they're useful. That's what this book is about.

    ◊link{https://www.schneier.com/blog/archives/2019/02/blockchain_and_.html}


[^beanies]: TODO How does it relate to cryptos?

    At it's height people would sell---and buy---these toys at 10x their original price and was responsible for 10% of eBay's sales. The creator was at one point one of the richest men in the world.

    ◊link{https://en.wikipedia.org/wiki/Beanie_Babies}

    ◊link{http://fortune.com/2015/03/11/beanie-babies-failure-lessons/}


[^tulips]: TODO Describe tulip fever and how it relates to cryptocurrencies.

    Although commonly refered to it wasn't as bad as it's often portrayed as. But it was still quite bad.

    ◊link{https://en.wikipedia.org/wiki/Tulip_mania}


[^monero]: Bitcoin, like almost all cryptocurrencies, use a public ledger where you can lookup how many coins any address has and you can also trace all coins to the beginning of time.

    There are cryptocurrencies like ◊link[Monero]{Monero} which hides inputs, outputs and amounts for all transactions making this impossible.


[^cryptos]: Although there are hundreds and perhaps thousands most are just copies or outright scams. Be safe out there.


◊(define the-first-chapter "what_is_a_cryptocurrency.html")
◊(define rss "#")
◊(define subscribe "#")

◊(define Monero "https://www.getmonero.org/")

◊(define schneier "https://www.schneier.com/blog/archives/2019/02/blockchain_and_.html")
◊(define cnn-bitcoin-rallies "https://money.cnn.com/2017/12/06/investing/bitcoin-rally-hits-12000/index.html")
◊(define independent-worthless "https://www.independent.co.uk/voices/bitcoin-cryptocurrency-price-crash-bank-of-england-agustin-carstens-a8645356.html")
◊(define cnn-environment "https://money.cnn.com/2017/12/07/technology/bitcoin-energy-environment/index.html")
◊(define independent-illegal "https://www.independent.co.uk/life-style/gadgets-and-tech/news/bitcoin-price-fall-criminals-blockchain-anonymous-cryptocurrency-zcash-monero-dash-a8174716.html")


