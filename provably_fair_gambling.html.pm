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
    There was a big poker scandal several years ago where it was discovered that ◊link[poker-scandal]{Ultimate Bet and Absolute Poker cheated in online poker}. They were discovered by people who noticed certain users who had "abnormally high winning statistics". Turns out they were using a superuser account that could see all cards.
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

Our scheme allows us to prove that a gamble was fair, and it also gives us proof that a gamble has happened and what the results were. It relies on ◊link[embedding-data]{embedding data} on a public blockchain and uses ◊link[timestamping-service]{timestamps as proof of existence}.

A prerequisite is that the casino has published their gambling algorithm. If you also want to be able to prove to a third party that the gamble happened, both the casino and the player needs to sign off on the bet before playing out the bet.◊sn{otherwise}

◊ndef["otherwise"]{
    If you don't publically sign the bet, there's always the risk that the casino can say that it never happened, and you cannot prove otherwise.
}

Our gambling algorithm is simple. We should concatenate the casino's seed with the player's seed and use it to initialize Python 3's pseudo-random generator, which will pick the winner. Here's a simple script that does this:

◊; FIXME
◊; Actually import the python script file instead
◊; Some simple syntax highlighting

◊code{
    import random

    casino_seed = input("Please enter the casino seed: ")
    player_seed = input("Please enter the player seed: ")

    our_seed = casino_seed + player_seed
    print("Using seed:", our_seed)

    random.seed(our_seed)
    print("The winner is:", random.choice(['casino', 'player']))
}

This code essentially flips a coin and announces the winner.

Importantly the casino should give out the seed hidden behind a one-way hash function, otherwise the player can just pick the winning seed and there would be no gamble. When the player has sent their seed to the casino, the bet has been made, and the casino reveals their seed (which we can verify with the hashed value) and we know who won and who lost.

Concretely a game could play out like this:

◊ol{
    ◊li{The casino sends the player the seed, encoded with SHA-256:
        ◊code{
            4b227777d4dd1fc61c6f884f48641d02b4d121d3fd328cb08b5531fcacdabf8a
        }
    }
    ◊li{The player sends their seed ◊icode{1} to the casino.}
    ◊li{The Casino says they won, and reveals that their seed was ◊icode{4}.}
}

To prove that the bet was made, the above interactions should be recorded on the blockchain and signed by both parties.

Now the player would like to verify that they did in fact lose:

◊ol{
    ◊li{First we verify that the casino indeed used the seed ◊icode{4}.

        ◊code{
            echo -n "4" | sha256sum
        }

        Giving us the SHA-256 hash:

        ◊code{
            4b227777d4dd1fc61c6f884f48641d02b4d121d3fd328cb08b5531fcacdabf8a
        }

        Which matches the hash the casino gave out before the bet.
    }
    ◊li{Then we can use the Python script to verify the bet:

        ◊code{
            Please enter the casino seed: 4
            Please enter the player seed: 1
            Using seed: 41
            The winner is: casino
        }
    }
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

        But with smart contracts, on a cryptocurrency with a powerful scripting language like Ethereum, we might enforce the payment as well. So when both parties accept the bet they lock up funds in the bet, and the smart contract will be responsible to pay it out to the winner.
    }
    ◊li{Only for digitally randomized bets

        It's not possible to bet on real life event, like the outcome of an ice hockey game, without relying on a trusted third party to announce the result of the game (often called an Oracle).

        Mind you, that can still be useful. For example if you want to place a bet with an acquaintance, and you both trust The New York Times to correctly announce the result of the game. But this might be overkill for such a use case, you can get far by having both of you sign a message where you describe the bet, and ◊link[timestamping-service]{timestamp it}.
    }
}

◊(define embedding-data "/extensions.html#embedding-data")
◊(define timestamping-service "/timestamping_service.html")
