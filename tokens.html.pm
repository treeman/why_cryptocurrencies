#lang pollen

◊(define-meta title "Tokens")
◊;(define-meta subtitle "How well do they work as money?")
◊(define-meta published "2020-01-25T15:05:30+01:00")
◊(define-meta updated "2020-01-25T15:05:37+01:00")
◊(define-meta uuid "1cbc42c7-a81d-40ff-9620-1d89c13dee12")

One of the most important properties that let cryptocurrencies function well as money is the limited supply. If instead someone was allowed to print money from thin air, it would be very poor money and would essentially be worthless.

But would it really be completely useless? What if we had all the other good properties, such as being able to instantly verify if they're valid, what would we have then? We would have ◊em{tokens}, and they aren't completely useless.

We'll look at how they can be used to raise funds, as gift cards or even to underpin derivatives.

The most popular class of tokens are probably the ERC20 tokens, implemented on top of Ethereum. For example ◊link[usdc]{USD Coin}, Coinbase's stablecoin backed 1-to-1 by USD, is an ERC20 token. The ◊link[bnb]{Binance Coin} is another example.◊sn{other-coins}

◊ndef["other-coins"]{
    You could implement tokens on other cryptocurrencies as well. The ◊link[omni]{Omni Layer} is for example an extension network built on Bitcoin that supports tokens. The difference is that Ethereum's ERC20 tokens are miner validated, while Omni uses a different consensus mechanism.
}

◊;Tether plans to launch as an ERC20 token.

◊(define usdc "https://www.coinbase.com/usdc")
◊(define bnb "https://coincentral.com/what-is-binance-coin-bnb/")
◊(define omni "https://www.omnilayer.org/")
◊(define tether "https://tether.to/")

◊;https://www.investopedia.com/news/what-erc20-and-what-does-it-mean-ethereum/


◊subhead{Initial coin offering}

The most famous, or infamous, use of tokens is for an ◊link[ico]{Initial Coin Offering (ICO)}. It's similar to an ◊link[ipo]{Initial Public Offering (IPO)}

◊(define ico "https://www.investopedia.com/terms/i/initial-coin-offering-ico.asp")
◊(define ipo "https://www.investopedia.com/terms/i/ipo.asp")


◊subhead{Better gift cards}


◊subhead{Derivates}

Money supply is around $90 trillion.

Low estimate is $544 trillion, and the high estimate is $1.2 quadrillion. Bitcoin has a marketcap of around $150 billion.

Tokens allow you to create digital ◊link[bearer-share]{bearer shares}, where the share of a security is given to whoever controls a specific token. They would protect the owners' anonymity, since their identity is never recorded or required, and could be used to for example create a company controlled by anonymous people.

◊(define bearer-share "https://www.investopedia.com/terms/b/bearer_share.asp")
◊(define money-visualization "https://money.visualcapitalist.com/worlds-money-markets-one-visualization-2017/")

