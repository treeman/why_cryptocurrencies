#lang pollen

◊(define-meta title "Look out for snake oil")
◊(define-meta subtitle "The space is new, hyped and full of misleading information")
◊(define-meta updated "2019-11-05T20:14:38+01:00")
◊(define-meta uuid "635e169f-885a-4d29-a266-4c9ef4981f47")

◊epigraph{
  ◊qt[#:author "Adam Back" #:src "Baltic Honeybadger 2017 Bitcoin Conference"
      #:url "https://www.youtube.com/watch?v=DHc81OL_hk4&feature=youtu.be&t=21235"]{
    So I mean for today, you could have, some Bitcoin business have a tab, so you pay them and then you work your tab there and presumably you cash your tab out if you don't use it.

    If you have repeat custom... or maybe the shops in the local area could make a shared tab or something in anticipation of... you know somebody in the local area ... technology expert could make a local Bitcoin tab that's interoperable between the shops and some sort of app to do it.
  }
}

A snake oil salesperson sells, or promotes, a valueless or fraudulent solution. The cryptocurrency space is full of such people and broken solutions.


◊subhead{Not really cryptocurrencies}

There are many projects in the cryptocurrency space that, curiously enough, aren't actually cryptocurrencies. Some even go so far as to call them cryptocurrencies even though they don't fulfil the criteria. For example I don't consider these real cryptocurrencies:

◊ul{
  ◊li{OneCoin and Bitconnect---they're plain pyramid schemes◊sn{pyramid-schemes}}
  ◊li{Ripple}
  ◊li{Stablecoins like ◊link[tether]{Tether}◊sn{tether} or JP Morgan's ◊link[JPM-coin]{JPM coin}}
  ◊li{Sidechains, for example the Lightning Network}
  ◊li{Smart tokens like the ERC20 tokens running on top of Ethereum◊sn{ICOs}}
  ◊li{Facebook's Libra}
}

Some might be useful but they don't have the same properties as cryptocurrencies like Bitcoin, and they don't work the same way.

For example stablecoins depend on a third party issuer and redeemer---the very thing cryptocurrencies are meant to remove. Sidechains have fundamentally different security trade-offs and they work differently, they're built on top of---but they are not---cryptocurrencies.

◊(define tether "https://tether.to/")
◊(define JPM-coin "https://decryptmedia.com/5173/jp-morgan-coin-cryptocurrency")
◊(define tether-backed-74 "https://www.bloomberg.com/news/articles/2019-04-30/tether-says-stablecoin-is-only-backed-74-by-cash-securities")

◊ndef["tether"]{
    After years of suspicion Tether recently admitted ◊link[tether-backed-74]{it's only backed 74% by cash}.
}


◊subhead{The blockchain hype}

There's the phenomena where a technology gets hyped up and businesses all over rush to adopt it in any way they can, even if it's totally the wrong solution for their problems.

Removing the consensus mechanism from a cryptocurrency, so they can just use the blockchain, removes what makes cryptocurrencies useful. The blockchain data-structure by itself is neither new nor interesting.◊sn{git}

◊ndef["git"]{
    You could say the popular version control system ◊link[git]{git} uses a blockchain, but it has nothing to do with cryptocurrencies.
}

◊(define git "https://git-scm.com/")

Be aware of "the blockchain" being used only as a buzzword.


◊subhead{Warning signs to look out for}

When evaluating cryptocurrencies here are some red flags to look out for:

◊ul{
    ◊li{Heavily slanted initial coin supply.◊sn{supply}}
    ◊li{Central authorities.}
    ◊li{Bad consensus algorithms or centralized governance protocols.}
    ◊li{Promises that sound too good to be true.

        For example promising instant transactions and infinite scalability, while compromising the decentralization and security of the network. ◊em{Proof-of-stake} coins are usually guilty of this.
    }
    ◊li{Propaganda.

        Social media is shock-full of people---or trolls---who tries to sell snake oil to you. Slander, lies and censorship is a daily occurrence.◊sn{censorship}
    }
    ◊li{Large drawbacks.

        Like having expensive and unreliable transactions or having to be online to receive payments.
    }
    ◊li{Problems are hand-waved away.

        “We'll figure it out” or “It'll be ready in 18 months” (forever).
    }
}

There are many traps to fall into in this space. I think the best antidote is to try and learn as much as possible, and never be afraid to question.


◊ndef["pyramid-schemes"]{
    Leaders of OneCoin got charged for ◊link[onecoin]{operating it as a pyramid scheme} while the FBI is seeking ◊link[fbi-bitconnect]{victims who invested in Bitconnect.}
}

◊ndef["ICOs"]{
    Smart tokens are often used in for Initial Coin Offerings (ICOs) where you invest in a project by sending them money and in return get these tokens. The hope is they become valuable or the project buys them back so you get returns on your investment.

    Many ICOs have been declared illegal as they're classified as securities and many more are very scammy. Bitconnect is for example an ICO.
}

◊ndef["supply"]{
    These come in wide variety. It's common to assign large parts of the initial supply to the creators or to mine the chain in secret before releasing it to the public.

    A more sinister tactic is ot introduce a bug in the code that allows miners to mine extremely fast---and only fix it after you've mined a big portion. This is what ◊link[dash]{Dash did} in a so-called ◊em{instamine}.
}

◊ndef["censorship"]{
    Imagine the irony of censorship being a problem in communities supporting censorship-free money.

    Unfortunately ◊link[bitcoin-censorship]{examples} of ◊link[r/cryptocurrency-censorship]{censorship} on ◊link[bitcoin-censorship3]{Reddit} are ◊link[bitcoin-censorship2]{plentiful}.
}

◊(define dash "https://bitcointalk.org/index.php?topic=999886.0")

◊(define onecoin "https://www.bloomberg.com/news/articles/2019-03-08/onecoin-leaders-charged-in-u-s-with-operating-pyramid-scheme")
◊(define fbi-bitconnect "https://www.fbi.gov/resources/victim-services/seeking-victim-information/seeking-victims-in-bitconnect-investigation")
◊(define bitcoin-censorship "https://medium.com/@johnblocke/a-brief-and-incomplete-history-of-censorship-in-r-bitcoin-c85a290fe43")
◊(define bitcoin-censorship2 "https://www.reddit.com/r/btc/comments/83vgdm/a_collection_of_evidence_regarding_bitcoins/")
◊(define bitcoin-censorship3 "https://www.reddit.com/r/noncensored_bitcoin/comments/7414nf/september_2017_stats_post/")
◊(define r/cryptocurrency-censorship "https://www.trustnodes.com/2019/05/01/the-cryptocurrency-sub-tests-censorship-after-bitcoin-core-supporter-suddenly-becomes-top-mod")


