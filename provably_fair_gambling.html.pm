#lang pollen

◊(define-meta title "Provably fair gambling")
◊;(define-meta subtitle "Permanent and uncensorable messages")
◊(define-meta updated "2019-12-12T16:36:17+01:00")
◊(define-meta uuid "cf1cc907-4fda-4b98-81fd-b9c447cdadc5")

◊; Bill the Betting man
◊; Sharon the betting Site


◊subhead{Limits to this scheme}

◊ol{
    ◊li{Multiplayer games are more complex}
    ◊li{Only for digitally randomized bets

        It's not possible to bet on real life event, like the outcome of an Ice hockey game, without relying on a trusted third party to announce the result of the game (often called an Oracle).

        Mind you, that can still be useful. For example if you want to place a bet with an acquaintance, and you both trust The New York Times to correctly announce the result of the game. But this scheme is overkill for such a use case. Just have both of you sign a message where you describe the bet, and ◊link[timestamping-service]{timestamp it}.
    }
    ◊li{It's not completely trustless

        Even if you have solid proof that you won a bet, the betting site might still refuse to pay out. With the scheme I've lain out, we cannot eliminate that risk.

        But with smart contracts, on a cryptocurrency like Ethereum, we might enforce the payment as well. So when you accept the bet you lock up your funds in the bet, and the smart contract will be responsible to pay out the winner.
    }
}

◊(define embedding-data "/extensions.html#embedding-data")
◊(define timestamping-service "/timestamping_service.html")
