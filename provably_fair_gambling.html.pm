#lang pollen

◊(define-meta title "Provably fair gambling")
◊(define-meta subtitle "Gambling where you cannot cheat the odds")
◊(define-meta updated "2019-12-12T16:36:17+01:00")
◊(define-meta uuid "cf1cc907-4fda-4b98-81fd-b9c447cdadc5")

◊; Bill the Betting man
◊; Sharon the betting Site

◊epigraph{
  ◊qt[#:author "Attributed to Michael Cassius McDonald"]{
    There's a sucker born every minute
  }
}

I love the movie ◊link[oceans-11]{Ocean's Eleven (2011)}. I've a fascination for heists and how they in the movie win against the house in various gambles---by cheating of course. They hack the slot machines, they cheat in card games and they control the dice in craps like magicians. And they do it with style.

Cheating is possible in the real world as well. For example you could do a coin toss, but with a coin with heads on both sides. Or a coin that's heavier on one side, making the odds 55% and 45%. This is a problem if you think it's a 50/50 gamble.

But it's hard to verify that a gamble is fair. With a coin you ◊em{might} be able to feel it, and specialized anti-cheating machines might be able to measure dice, but you can never be sure. Gambling on the internet is a whole other can of worms, where you're often left trusting that the site isn't screwing you over.◊sn{poker-cheating}

◊ndef["poker-cheating"]{
    There was a big poker scandal several years ago where it was discovered that ◊link[poker-scandal]{Ultimate Bet and Absolute Poker cheated in online poker}. They were discovered by people who noticed certain users who appeared to be playing too well. Turns out they could see everyone's cards.
}

With cryptocurrencies we can device a scheme where the gambling is provably fair. We can create a gambling site where users are sure the bets are fair, with mathematical certainty, and without a trusted third party facilitating the bets.

◊(define poker-scandal "https://upswingpoker.com/ultimate-bet-absolute-poker-scandal/")
◊(define oceans-11 "https://www.imdb.com/title/tt0240772/")

◊; Another poker cheating scandal:
◊; https://news.ycombinator.com/item?id=21161043

 ◊;“There's a small thrill in taking a chance”
◊;― Zoe Archer, Wicked Temptation 

 ◊;“There's a sucker born every minute”
◊;― Michael Cassius McDonald 


◊subhead{A simple provably fair gambling scheme}

◊ol{
    ◊li{The Casino creates a seed number for the bet}
    ◊li{Hash the seed and give it to the player}
    ◊li{The player adds a seed of his own}
    ◊li{The bet is played out}
    ◊li{At the end the player receives the seed used in the bet}
    ◊li{Use it to verify that the bet was played out correctly}
}

Concretely a game could play out like this:

◊; https://docs.python.org/3/library/random.html

◊ol{
    ◊li{The bet is described by this python program, where an even number means the casino wins and an odd number means the player wins}
    ◊li{Casino gives the seed number "4", which is hashed to C and C is given to the player}
    ◊li{The player adds the number "2"}
    ◊li{The Casino says they won, and reveals the original number was "4"}
    ◊li{The player wants to verify this, so add "4" and "2" to get "42", and when we run the program we find the Casino indeed won}
}


◊; https://bitcoinchaser.com/provably-fair-gambling/

◊subhead{Limits to this scheme}

While this simple scheme work well for some types of gambling, there are limits:

◊ol{
    ◊li{Multiplayer games are more complex

        This scheme works fine for simple single player games, like flipping a coin. But if we wanted to create a provable fair poker game the implementation would be more complex, but we could do it.◊sn{encrypt}

        ◊ndef["encrypt"]{
            Here we would have to encrypt your cards and hide them from other players, but they still need to be able to verify that they were dealt out correctly after the fact.

            I leave the implementation details as an exercise for the reader.
        }
    }
    ◊li{You might not get paid

        Even if you have solid proof that you won a bet, the betting site might still refuse to pay out. With the scheme I've described here, we cannot eliminate that risk.

        But with smart contracts, on a cryptocurrency with a powerful scripting language like Ethereum, we might enforce the payment as well. So when you accept the bet you lock up your funds in the bet, and the smart contract will be responsible to pay it out to the winner.
    }
    ◊li{Only for digitally randomized bets

        It's not possible to bet on real life event, like the outcome of an Ice hockey game, without relying on a trusted third party to announce the result of the game (often called an Oracle).

        Mind you, that can still be useful. For example if you want to place a bet with an acquaintance, and you both trust The New York Times to correctly announce the result of the game. But this might be overkill for such a use case, you can get far by having both of you sign a message where you describe the bet, and ◊link[timestamping-service]{timestamp it}.
    }
}

◊(define embedding-data "/extensions.html#embedding-data")
◊(define timestamping-service "/timestamping_service.html")
