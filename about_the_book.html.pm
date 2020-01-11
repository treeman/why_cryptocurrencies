#lang pollen

◊(define-meta title "About the book")
◊(define-meta subtitle "A perspective beyond the hype")
◊(define-meta updated "2019-12-02T07:27:35+01:00")
◊(define-meta uuid "7ea80c78-aff2-46a1-8d05-1253d7033dc6")

Whenever the topic of cryptocurrencies---where Bitcoin and Ethereum are the most known---come up in conversations they're almost always misunderstood or dismissed.

If you're a cryptocurrency skeptic I honestly can't blame you. All you ever hear about it on the news is how ◊link[cnn-bitcoin-rallies]{Bitcoin rallies} and then how ◊link[independent-worthless]{Cryptocurrencies are about to become worthless}. Maybe you'll see claims that it's ◊link[cnn-environment]{an environmental disaster} or only used for ◊link[independent-illegal]{illegal purposes}.

Curiously enough they don't explain what cryptocurrencies are or what they can be useful for. But it's to be expected as news today focuses on eye-catching stories, ◊mn{news} it's why unsettling events like murder gets a disproportional amount of focus.

◊ndef["news"]{
    It's interesting when the news handles something you have a good understanding of---they're often completely wrong. Makes you wonder, how wrong are they about things you're not familiar with?
}

Maybe this is why most people --- even cryptocurrency fans --- only see cryptocurrencies as a form of investment? After all there are few things as exciting as the possibility of becoming rich very quickly.

What hope does average Joe have when even the famous security technologist Bruce Schneier ◊link[blockchain-and-trust]{concludes that}:

◊qt[#:author "Bruce Schneier" #:src "Blockchain and Trust" #:url blockchain-and-trust #:quote-src #t]{
  Honestly, cryptocurrencies are useless ◊mn{schneier}
}

◊(define blockchain-and-trust "https://www.schneier.com/blog/archives/2019/02/blockchain_and_.html")

It's almost a universal phenomena. I've heard these arguments from students, co-workers, friends, family and in highly technical online communities:

◊ol{
  ◊li{It's a scam.}
  ◊li{It's just a speculative bubble and cryptocurrencies are really worthless.

    Here many draw parallels to Beanie Babies◊sn{beanies} or the Tulip mania◊sn{tulips}. And to be fair cryptocurrencies have displayed bubble behavior---several times.
  }
  ◊li{They don't do anything better than other payment systems like PayPal or VISA.}
  ◊li{There's no legal use case.}
  ◊li{They don't do anything valuable.}
}

◊note-pos{beanies}◊note-pos{tulips}

It seems everyone has an opinion but few are capable of explaining what they are or what they do differently.  Of course most aren't dismissive but simply don't understand what it's all about. Many are curious and want to learn more.

With this book I hope to show how cryptocurrencies can be useful, what use cases exist and how they can help people. I'll briefly go over how they work in a more conceptual level and I might throw in some historical notes here and there. I'm not trying to make anyone a cryptocurrency fan, I just hope to bring some nuance and to help answer some common questions.

And I must admit I'm also being selfish---writing a book is on my bucket list.


◊subhead{What this book is}

This book tries to describe what value cryptocurrencies have using several examples. In particular I will argue that:

◊ol{
  ◊li{Cryptocurrencies aren't just scams.◊sn{scams}}
  ◊li{It's more than just a speculative asset.}
  ◊li{They do many things better than any alternative.}
  ◊li{There are legal use cases.}
  ◊li{They have valuable use cases.}
}

Of course everything new brings positive and negative aspects with it. It's up to you to decide where on the global spectrum of good and bad cryptocurrencies lie.


◊subhead{What this book isn't}

There are many problems with cryptocurrencies as they exist today. This isn't an attempt to dismiss them or look at work being done to address them. For the interested here are some of the biggest problems as I see it:

◊ul{
  ◊li{How can a cryptocurrency scale globally?}
  ◊li{How can payments be made secure enough for retail, in a couple of seconds?}
  ◊li{Bitcoin uses a public ledger where all payments are visible---what about privacy?}
  ◊li{User experience is far from the level of VISA or Apple Pay.}
}

See the chapter ◊link[challenges]{Challenges for cryptocurrencies} for an explanation of the problems.

◊(define challenges "/challenges.html")

A problem-centric view is great for an engineer or a problem solver but it also limits foresight. For example the computer had many problems and drawbacks when first introduced, but today we ridicule statements like these:

◊qt[#:author "Thomas Watson, president of IBM" #:date 1943]{
    I think there is a world market for maybe five computers
}

◊qt[#:author "Ken Olsen, founder of Digital Equipment Corporation" #:date 1977]{
    There is no reason anyone would want a computer in their home
}

Instead of putting on blinders and getting stuck at these problems, which I believe can be addressed, we'll focus on the potential cryptocurrencies have. Only with this vantage point can we see if the problems are worth working on, or if we instead should scrap the whole idea.

This isn't a deep dive on a technical level. Neither will we focus on a single implementation---Bitcoin is the first cryptocurrency but there are hundreds more.◊sn{cryptos}

◊center{
  ◊strong[#:style "font-size: 1.1rem"]{And of course none of this is investment advice.}
}


◊ndef["schneier"]{
    Schneier brings an interesting perspective and he's right about one very important aspect: contrary to popular belief cryptocurrencies don't remove ◊strong{all} trust.

    To counter his point that "cryptocurrencies are useless" all you have to do is provide one counterexample where they're useful. I will give several.
}


◊ndef["beanies"]{
    Beanie Babies is a type of toys which people used to speculate with. ◊link[beanie]{It become a mania} where people would sell---and buy---these toys at 10x, 100x or even 1000x their original price. The mania managed to make the creator, Ty Warner, one of the richest men in the world before it crashed (he's still insanely rich though).

    If you're looking for the digital version of Beanie Babies then look no further than ◊link[cryptokitties]{CryptoKitties}, a blockchain game running on Ethereum. There someone spent $114,000 on a virtual kitten.
}


◊ndef["tulips"]{
    ◊link[tulip-mania]{Tulip mania} is one of the first recorded speculative bubbles which occurred 1636--1637 in Netherlands. There people speculated on tulip bulbs which reached spectacular prices before crashing down abruptly.
}



◊ndef["cryptos"]{
    Although there are hundreds and perhaps thousands most are just copies or outright scams.
}

◊ndef["scams"]{
    But please take care and do your research, there are ◊strong{many} scams out there.
}

◊(define Monero "https://www.getmonero.org/")

◊(define schneier "https://www.schneier.com/blog/archives/2019/02/blockchain_and_.html")
◊(define cnn-bitcoin-rallies "https://money.cnn.com/2017/12/06/investing/bitcoin-rally-hits-12000/index.html")
◊(define independent-worthless "https://www.independent.co.uk/voices/bitcoin-cryptocurrency-price-crash-bank-of-england-agustin-carstens-a8645356.html")
◊(define cnn-environment "https://money.cnn.com/2017/12/07/technology/bitcoin-energy-environment/index.html")
◊(define independent-illegal "https://www.independent.co.uk/life-style/gadgets-and-tech/news/bitcoin-price-fall-criminals-blockchain-anonymous-cryptocurrency-zcash-monero-dash-a8174716.html")
◊(define cryptokitties "https://www.cnbc.com/2017/12/06/meet-cryptokitties-the-new-digital-beanie-babies-selling-for-100k.html")
◊(define tulip-mania "https://www.britannica.com/event/Tulip-Mania")
◊(define beanie "https://nypost.com/2015/02/22/how-the-beanie-baby-craze-was-concocted-then-crashed/")
