#lang pollen

◊(define-meta title "Why are cryptocurrencies antifragile?")
◊(define-meta subtitle "How cryptocurrencies grow stronger the more they're resisted")
◊(define-meta published "2020-02-27T13:33:40+01:00")
◊(define-meta updated "2020-02-27T13:33:40+01:00")
◊(define-meta uuid "9ce74583-fbbd-42d4-940e-3a9e44ed0658")

◊; https://unchained-capital.com/blog/bitcoin-is-antifragile/
◊; https://cryptofundamental.com/in-pursuit-of-lindycoin-212bacafc395?gi=416e2a7a461c

◊(clear-sidenotes)

◊subhead{Antifragility}


◊todo{IMG killing a monster with a Bitcoin symbol}

◊todo{IMG the monster sprouts two new heads! With the BCH and XMR logo}

Bullet-proof armor isn't antifragile. It's true that it's very sturdy and can resist bullets, but it doesn't get stronger after getting in by one. It always gets a little weaker and if you shoot enough bullets you'll eventually penetrate.

How crazy would it be to have armor that's not only self-healing but after getting hit it becomes even stronger against that particular bullet? Like magic!

But that's exactly how the immune system works.


◊subhead{Decentralization is the name of the game}


◊subhead{The longer it lives the more robust it is}


◊subhead{The hard fork}


◊subhead{Concrete examples}

Let's take a look at some real events and what the reaction to them might be:


◊ol{
    ◊li{◊strong{Marketplaces freeze your assets}

        Decentralized marketplaces that allow for non-custodial trades are created. This means the marketplaces never control your funds and all trades are made directly with the other person, making it impossible for anyone to freeze your funds.
    }
    ◊li{◊strong{Governments declare cryptocurrencies illegal}

        People trade cryptocurrencies in person. ...

        Governments have declared drugs and prostitution illegal for centuries, but they still manage to thrive.
    }
    ◊li{◊strong{Bitcoin is the largest bug bounty in the world}
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

