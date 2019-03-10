#lang pollen

◊(define-meta title "Look out for snake oil")
◊(define-meta subtitle "If you see the term \"blockchain\", run far away")

There are many projects who call themselves cryptocurrencies while not fulfilling the criteria. For example I don't consider these real cryptocurrencies:

◊ul{
  ◊li{Onecoin and Bitconnect which are real pyramid schemes◊sn{pyramid-schemes}}
  ◊li{Ripple}
  ◊li{Stablecoins like ◊link[tether]{Tether} or JP Morgan's ◊link[JPM-coin]{JPM coin}}
}

Neither do I consider smart tokens, such as the ERC20 tokens running on top of Ethereum, cryptocurrencies themselves as they don't fulfill all the properties I discuss.◊mn{ICOs}

◊(define tether "https://tether.to/")
◊(define JPM-coin "https://decryptmedia.com/5173/jp-morgan-coin-cryptocurrency")

After the invention of proof-of-work there have been attempts to provide byzantine fault tolerance in other ways. For example instead of miners who expend energy proof-of-stake works by allowing users with coins vote. There are different security trade-offs and the jury is still out if they really solve the problem sufficiently.


◊subhead{The blockchain hype}

Then there's the phenomena where a technology gets hyped up and businesses all over rush to adopt it in any way they can. That is instead of searching for a solution for a problem they have they take a solution and search for a problem they can fit it to. Much like using a hammer to paint walls in a house.

With cryptocurrencies they want to remove the byzantine fault tolerance and just use the blockchain.


That's been true of "big data", "neural networks" and now "blockchain".

◊hr{}


Instead of using cryptocurrencies, where anyone can join in and vote, they want to remove the consensus mechanism and use a private blockchain. But doing that removes all advantages and benefits.




The main problem for businesses with cryptocurrencies is they're open for anyone to join in and vote. So they want to make a private blockchain 


Here are some legit cryptocurrencies, but there are others:

◊ul{
  ◊li{Bitcoin (BTC)}
  ◊li{Bitcoin Cash (BCH)}
  ◊li{Ethereum (ETH)}
  ◊li{Monero (XMR)}
  ◊li{Litecoin (LTC)}
  ◊li{Dogecoin (DGC)}
}

◊ndef["onecoin"]{
    Leaders of OneCoin got charged for ◊link[onecoin]{operating it as a pyramid scheme.}
}
◊(define onecoin "https://www.bloomberg.com/news/articles/2019-03-08/onecoin-leaders-charged-in-u-s-with-operating-pyramid-scheme")
◊ndef["bitconnect"]{
}
◊(define fbi-bitconnect "https://www.fbi.gov/resources/victim-services/seeking-victim-information/seeking-victims-in-bitconnect-investigation")
◊ndef["pyramid-schemes"]{
    Leaders of OneCoin got charged for ◊link[onecoin]{operating it as a pyramid scheme} while the FBI is seeking ◊link[fbi-bitconnect]{victims who invested in Bitconnect.}
}

◊ndef["ICOs"]{
    Smart tokens are often used in for Initial Coin Offerings (ICOs) where you invest in a project by sending them money and in return get these tokens. The hope is they become valuable or the project buys them back so you get returns on your investment.

    Many ICOs have been declared illegal and many more are very scammy. Bitconnect is for example an ICO.
}

