#lang pollen

◊(define-meta title "Tokens")
◊;(define-meta subtitle "How well do they work as money?")
◊(define-meta published "2020-01-25T15:05:30+01:00")
◊(define-meta updated "2020-01-25T15:05:37+01:00")
◊(define-meta uuid "1cbc42c7-a81d-40ff-9620-1d89c13dee12")

One of the most important properties that let cryptocurrencies function well as money is the limited supply. If instead someone was allowed to print money from thin air, it would be very poor money and would essentially be worthless.

But would it really be completely useless? What if we had all the other good properties, such as being able to instantly verify if they're valid, what would we have then? We would have ◊em{tokens}, and they aren't completely useless.

The most popular class of tokens are probably the ERC20 tokens, implemented on top of Ethereum. For example ◊link[usdc]{USD Coin}, Coinbase's stablecoin backed 1-to-1 by USD, is an ERC20 token. The ◊link[bnb]{Binance Coin}, used for the bonus system on a cryptocurrency exchange, is another example.◊sn{other-coins}

Tokens can be used to raise funds, track bonus points, as gift cards or even to underpin derivative trading. In this chapter we'll look at some of them.

◊ndef["other-coins"]{
    You could implement tokens on other cryptocurrencies as well. The ◊link[omni]{Omni Layer} is for example an extension network built on Bitcoin that supports tokens. The difference is that Ethereum's ERC20 tokens are miner validated, while Omni uses a different consensus mechanism.
}

◊;Tether plans to launch as an ERC20 token.

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

One of the benefit of ICOs is that they're very easy to setup, and with the right tools it can be done in a few seconds. This is also a downside as there are countless of ICOs that function only as ◊link[pyramid-scheme]{pyramid schemes} (or other types of scams) with the only purpose of finding ◊link[greater-fools]{greater fools} to dump on.

Although ICOs are mostly associated with scams (and rightfully so I'd say) there might be some usefulness here. What you're really doing is donating money to a cause you believe in, and hope you'll get a good outcome.

◊;I'd say the ICO of the ◊link[brave]{privacy focused browser Brave} is an example of a good ICO.

Does it sound insane? That's really no different from how ◊link[kickstarter]{Kickstarter} works, where it's very popular to pledge money for an interesting board game project and you wait for months or years and hope you'll get something in return.◊sn{insane?}

◊ndef["insane?"]{
    You might still say it sounds insane, but just realize Kickstarter is very popular and it mostly works out well. (At least for board games, which I'm most familiar with.)
}

Why would you want a token for this? The benefit would be that anyone, anywhere, could participate and that participation could be done anonymously.◊sn{anon}

◊ndef["anon"]{
    It might be hard to claim anonymity if you want someone to send a board game to you, but it's relevant if you're expecting returns in cryptocurrencies or other digital goods.
}

◊(define greater-fools "https://en.wikipedia.org/wiki/Greater_fool_theory")
◊(define pyramid-scheme "https://en.m.wikipedia.org/wiki/Pyramid_scheme")
◊(define ico "https://www.investopedia.com/terms/i/initial-coin-offering-ico.asp")
◊(define ipo "https://www.investopedia.com/terms/i/ipo.asp")
◊(define kickstarter "https://www.kickstarter.com/")


◊subhead{Better gift cards}

What's the problem with gift cards?

◊ul{
    ◊li{Verification}
    ◊li{Implementation}
}


◊subhead{Derivates}

Money supply is around $90 trillion.

Low estimate is $544 trillion, and the high estimate is $1.2 quadrillion. Bitcoin has a marketcap of around $150 billion.

Tokens allow you to create digital ◊link[bearer-share]{bearer shares}, where the share of a security is given to whoever controls a specific token. They would protect the owners' anonymity, since their identity is never recorded or required, and could be used to for example create a company controlled by anonymous people.

◊(define bearer-share "https://www.investopedia.com/terms/b/bearer_share.asp")
◊(define money-visualization "https://money.visualcapitalist.com/worlds-money-markets-one-visualization-2017/")

