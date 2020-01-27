#lang pollen

◊(define-meta title "Tokens")
◊(define-meta subtitle "Cryptocurrencies with centrally managed supply")
◊(define-meta published "2020-01-25T15:05:30+01:00")
◊(define-meta updated "2020-01-25T15:05:37+01:00")
◊(define-meta uuid "1cbc42c7-a81d-40ff-9620-1d89c13dee12")

One of the most important properties that let cryptocurrencies function well as money is the limited supply. If instead someone was allowed to print money from thin air, it would be very poor money and would essentially be worthless.

But would it really be completely useless? What if we had all the ◊link[props]{other good properties}, such as being able to instantly verify them or double spend protection, what would we have then? We would have ◊em{tokens}, and they aren't completely useless.

The most popular class of tokens are probably the ERC20 tokens, implemented on top of Ethereum. For example ◊link[usdc]{USD Coin}, Coinbase's stablecoin backed 1-to-1 by USD, is an ERC20 token. The ◊link[bnb]{Binance Coin}, used for the bonus system on a cryptocurrency exchange, is another example.◊sn{other-coins}

Tokens can for example be used to enable easier fund raising, create safer gift cards and for peer-to-peer derivative trading.

◊ndef["other-coins"]{
    You could implement tokens on other cryptocurrencies as well. The ◊link[omni]{Omni Layer} is for example an extension network built on Bitcoin that supports tokens. The difference is that Ethereum's ERC20 tokens are miner validated, while Omni uses a different consensus mechanism.
}

◊;Tether plans to launch as an ERC20 token.

◊(define props "/properties_of_a_cryptocurrency.html")
◊(define brave "https://brave.com/")
◊(define usdc "https://www.coinbase.com/usdc")
◊(define bnb "https://coincentral.com/what-is-binance-coin-bnb/")
◊(define omni "https://www.omnilayer.org/")
◊(define tether "https://tether.to/")

◊;https://www.investopedia.com/news/what-erc20-and-what-does-it-mean-ethereum/


◊subhead{Initial coin offering}

The most famous, or infamous, use of tokens is for an ◊link[ico]{Initial Coin Offering (ICO)}. It's similar to an ◊link[ipo]{Initial Public Offering (IPO)}, which aims to raise funds for companies or projects. In return for giving them money you'll receive a token as a sign of participation. ICOs are mostly unregulated and are easy for anyone to participate in.◊sn{security}

◊ndef["security"]{
    ICOs are classified as securities and the Securities and Exchange Commission (SEC) has intervened on a number of occasions.
}

One of the benefit of ICOs is that they're very easy to setup, and with the right tools it can be done in a few seconds. This is also a downside as there are countless of ICOs that function only as ◊link[pyramid-scheme]{pyramid schemes} with the only purpose of finding ◊link[greater-fools]{greater fools} to dump on.

Although ICOs are mostly associated with scams (and rightfully so I'd say) there might be some usefulness here. What you're really doing is donating money to a cause you believe in, and hope you'll get a good outcome.

◊;I'd say the ICO of the ◊link[brave]{privacy focused browser Brave} is an example of a good ICO.

Does it sound insane? That's really no different from how ◊link[kickstarter]{Kickstarter} works, where it's very popular to pledge money for an interesting board game project and you wait for months or years and hope you'll get something in return.◊sn{insane?}

◊ndef["insane?"]{
    You might still say it sounds insane, but just realize Kickstarter is very popular and it mostly works out well. (At least for board games, which I'm most familiar with.)
}

Why would you want a token for this? The benefit would be that anyone, anywhere, could participate and that participation could be done anonymously. And it all takes place on a platform where you have a guarantee that you can sell your token if you lose faith in the project (since properly implemented not even the issuer can prevent token transactions).◊sn{anon}

◊ndef["anon"]{
    It might be hard to claim anonymity if you want someone to send a board game to you, but it's relevant if you're expecting returns in cryptocurrencies or other digital goods.
}

◊(define greater-fools "https://en.wikipedia.org/wiki/Greater_fool_theory")
◊(define pyramid-scheme "https://en.m.wikipedia.org/wiki/Pyramid_scheme")
◊(define ico "https://www.investopedia.com/terms/i/initial-coin-offering-ico.asp")
◊(define ipo "https://www.investopedia.com/terms/i/ipo.asp")
◊(define kickstarter "https://www.kickstarter.com/")


◊subhead{Gift cards}

People use gift cards all the time, but they're not always that great. How do you verify that they're valid, and haven't already been used? How do you do that in stores, when you're choosing which one to buy, and how do you verify digital gift cards?

For example let's say you walk into a store and want to buy a gift card. How do you know it's not fake, or haven't been used? Luckily there's a code on the gift card, which you can enter into a website to verify if it's still valid. Okay! It's valid, so you buy it and walk out the store.

Unfortunately for you the store clerk has already written down the gift card code, and shortly after you leave the store he decides to use it up, making your gift card useless. Physical gift cards, the one you hand in to a store when you use them up, don't really have this problem. But this is unsolved for digital gift cards.◊sn{verify}

◊ndef["verify"]{
    Physical gift cards can have a problem with conterfeiting, which is also something cryptocurrencies completely solve.
}

This problem, of how to transfer ownership of a code, is really the same double spending problem that cryptocurrencies ◊link[double-spend]{pioneered a solution} for. And tokens inherit this property, allowing you to buy a token based gift card and be absolutely sure that it's unspent and that you're the only one who can spend it.

◊(define double-spend "/how_do_cryptocurrencies_work.html#copying-a-coin-&-double-spending")


◊subhead{Derivatives}

It's quite difficult for us humans to truly understand very big numbers, because we don't have anything to relate them to. When I see that the richest person in the world, Amazon's founder Jeff Bezos, ◊link[richest-men]{is worth more than $117.5 billion} I understand that it's a hell of a lot of money, but I don't know ◊em{how} much. It's just too much money and to me there's no real difference between $1 billion or $1 trillion, even though the latter is 1000x more.◊sn{either-way}

◊ndef["either-way"]{
    I could probably do whatever I could ever want with either amount, and still be nowhere close to exhausting the money.
}

Therefore I'm not sure what to make of the fact that all the coins and notes in the world are worth around $7.6 trillion, or that all gold in the world is worth around $7.7 trillion. But I do know that's much less than all the money in the world, which is valued around $90.4 trillion. Surely nothing could be worth more than money?

Interestingly both global debt ($215 trillion) and the value of global real estate ($217 trillion) is more than all the money in the world. But they're all dwarfed by ◊em{derivatives}, which has a low estimate of $544 trillion and a high estimate of $1.2 quadrillion. One quadrillion!◊sn{HUGE}

These are numbers are taken from an excellent ◊link[money-visualization]{visualization by visualcapitalist}, which I highly recommend you to check out. It was made in 2017, so the numbers are a little old, but not significantly so.

◊ndef["HUGE"]{
    As a non-native English speaker I hadn't even encountered "quadrillion" before, and to me it sounds like a made-up number found in Donald Duck.
}

I bring this up just to say one thing: the value of derivatives is absolutely huge.

But what are derivatives? In short, they're a bet on the value of something. A derivative is a contract that derives its price from fluctuations of the underlying asset. For example stocks, bonds, commodities or currencies.

We've already seen how cryptocurrencies can improve currencies, but even stocks, bonds and bets on commodities might benefit from being based on cryptocurrency tokens.

Take stock trading for example. They're done through a stock exchange and intermediaries that manage the exchange. This is required because, like the problem with gift cards, there's no way to transfer ownership in a secure way. But now there is; with tokens you could create a decentralized derivative market and trade them directly between two people, without the need for an intermediary to manage the trade.◊sn{save-money}

◊ndef["save-money"]{
    Similar to how cryptocurrencies can save fees by cutting out payment processors from digital purchases, there's financial gain here too.
}

If you wanted to, you could also create digital ◊link[bearer-share]{bearer shares}, where the share of a security is given to whoever controls a specific token. They would protect the owners' anonymity, since their identity is never recorded or required, and could be used to for example create a company controlled by anonymous people.


◊ndef["bearer-shares"]{
    Tokens allow you to create digital ◊link[bearer-share]{bearer shares}, where the share of a security is given to whoever controls a specific token. They would protect the owners' anonymity, since their identity is never recorded or required, and could be used to for example create a company controlled by anonymous people.
}

I'm not suggesting that all derivatives should just use tokens, in many cases this wouldn't make sense and would only add inefficiencies to the system. But even if there's an extremely small fraction of derivatives that could benefit, due to their sheer size tokens could still bring a lot of value.


◊(define derivative "https://www.investopedia.com/terms/d/derivative.asp")
◊(define richest-men "https://wealthygorilla.com/top-20-richest-people-world/")
◊(define bearer-share "https://www.investopedia.com/terms/b/bearer_share.asp")
◊(define money-visualization "https://money.visualcapitalist.com/worlds-money-markets-one-visualization-2017/")


◊subhead{New visualization}

Jeff Bezos: $117.5 billion
Bitcoin marketcap: $150 billion
Currencies: $7.6 trillion (2017, visualcapitalist)
Gold: 187,200 tons, $1,582.30 USD spot price/oz ($50,872.09/kg) => $9.5 trillion
Stock markets: $73 trillion (2017, visualcapitalist)
All the money: $90.4 trillion (2017, visualcapitalist)
Derivatives: $544 trillion--$1.2 quadrillion (2017, visualcapitalist)

