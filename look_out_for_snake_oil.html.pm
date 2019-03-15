#lang pollen

◊(define-meta title "Look out for snake oil")
◊(define-meta subtitle "There are many fakes and wannabees")

There are many projects who call themselves cryptocurrencies while not fulfilling the criteria. For example I don't consider these real cryptocurrencies:

◊ul{
  ◊li{Onecoin and Bitconnect which are real pyramid schemes◊sn{pyramid-schemes}}
  ◊li{Ripple}
  ◊li{Stablecoins like ◊link[tether]{Tether} or JP Morgan's ◊link[JPM-coin]{JPM coin}}
  ◊li{Smart tokens like the ERC20 tokens running on top of Ethereum◊sn{ICOs}}
  ◊li{Sidechains, for example the Lightning Network}
}

◊(define tether "https://tether.to/")
◊(define JPM-coin "https://decryptmedia.com/5173/jp-morgan-coin-cryptocurrency")


◊subhead{The blockchain hype}

Then there's the phenomena where a technology gets hyped up and businesses all over rush to adopt it in any way they can, even if it's totally the wrong solution for their problems.

Removing the consensus mechanism from a cryptocurrency so they can just use the blockchain removes what makes a cryptocurrency useful. The blockchain datastructure by itself is neither new nor interesting.

Be aware of "the blockchain" being used only as a buzzword.


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

    Many ICOs have been declared illegal as they're classified as securities and many more are very scammy. Bitconnect is for example an ICO.
}

