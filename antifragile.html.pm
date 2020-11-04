#lang pollen

◊(define-meta title "Cryptocurrencies are antifragile")
◊(define-meta subtitle "They grow stronger from resistance")
◊(define-meta published "2020-02-27T13:33:40+01:00")
◊(define-meta updated "2020-02-27T13:33:40+01:00")
◊(define-meta uuid "9ce74583-fbbd-42d4-940e-3a9e44ed0658")

◊; https://unchained-capital.com/blog/bitcoin-is-antifragile/
◊; https://cryptofundamental.com/in-pursuit-of-lindycoin-212bacafc395?gi=416e2a7a461c

◊; Reference to the Lindy Effect!

◊(clear-sidenotes)

It's common to separate things into two categories: those that are fragile and those that are robust. Regular glass is for example fragile as it breaks easily, often by accident, and bullet-proof glass is robust as as can withstand a significant amount of force before it breaks.

But there's a third category that we often don't think about. It's called ◊def{antifragile} and it goes beyond robust as it grows even stronger when stressed.

At first it might sound impossible, how could something grow stronger when it's put under pressure? It would be like if we had armor that was self-healing but after getting shot also learned what type of bullet was used and it adapted to resist the same kind of bullet better. That's science-fiction.

◊stable{
  Fragile       Robust                  Antifragile
  Glass         Bullet-proof glass      Adaptive armor
}

But that's exactly how the immune system works. It's why the human body might develop immunity against COVID-19 after getting exposed to it and it's the basic principle behind vaccines.

As I'll argue in this chapter cryptocurrencies are also antifragile.


◊subhead{The longer it lives the more robust it is}

Lindy Effect


◊subhead{Decentralization is the name of the game}

Bittorrent



◊subhead{The hard fork}

◊todo{IMG killing a monster with a Bitcoin symbol}

◊todo{IMG the monster sprouts two new heads! With the BCH and XMR logo}


◊subhead{Concrete examples}

Let's take a look at some real events and what the reaction to them might be:


◊ol{
    ◊li{◊strong{Bitcoin is the largest bug bounty in the world}

        If Bitcoin couldn't prevent double-spends or had some other serious flaw then it could be exploited for literally billions of dollars.
    }
    ◊li{◊strong{Marketplaces freeze your assets}

        Decentralized marketplaces that allow for non-custodial trades are created. This means the marketplaces never control your funds and all trades are made directly with the other person, making it impossible for anyone to freeze your funds.
    }
    ◊li{◊strong{Governments declare cryptocurrencies illegal}

        Governments have declared drugs and prostitution illegal for centuries, but they still manage to thrive. Making them legal would paradoxically make them easier to regulate and control, and I think it's the same with cryptocurrencies.

        If governments banned cryptocurrencies people could still trade them in person or move to decentralized marketplaces, which are inherently harder to disrupt.◊mn{global} ◊note-pos{global}
    }
    ◊li{◊strong{A 51% attack}

        The worst thing that can happen to a cryptocurrency is a 51% attack, but even such an event can strengthen it.

        For example an attacked chain could change the mining algorithm, making all existing mining rigs worthless. This would make it impervious to the same type of attack and if an attacker wants to make another attempt brand new mining rigs would have to be purchased or created.

        As another example during the BCH/BSV split the BSV miners threatened to reorg the BCH chain with empty blocks. If successful this would've made it impossible to transact on the chain, as all transactions would be deleted, essentially killing the chain. This attack was never carried out, but protection was added to the BCH software that made it more difficult to carry out such an attack.
    }
    ◊li{◊strong{Developers agree on the best way forward}

        The coin splits in two and both paths are explored.

        For example in the BTC/BCH split the community was split over how scaling should be carried out. ...
    }
    ◊li{◊strong{Reference client abandons core values}

        The client gets replaced with new ones. For example in the BCH/ABC split...
    }
}

◊ndef["global"]{
    Remember that cryptocurrencies are completely global. Even if they're illegal in your country, you can always find an exchange, service or marketplace online that operates in another country where they're legal.
}

