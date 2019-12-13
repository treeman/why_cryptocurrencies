#lang pollen

◊(require pollen/unstable/pygments)

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

With cryptocurrencies we can device a scheme where the gambling is provably fair. We can create a gambling site where users are sure the bets are fair---with mathematical certainty---and without a trusted third party facilitating the bets.

◊(define poker-scandal "https://upswingpoker.com/ultimate-bet-absolute-poker-scandal/")
◊(define oceans-11 "https://www.imdb.com/title/tt0240772/")

◊; Another poker cheating scandal:
◊; https://news.ycombinator.com/item?id=21161043

 ◊;“There's a small thrill in taking a chance”
◊;― Zoe Archer, Wicked Temptation 

 ◊;“There's a sucker born every minute”
◊;― Michael Cassius McDonald 


◊subhead{A simple provably fair gambling scheme}

Our scheme allows us to prove that a gamble was fair, and it also gives us proof that a gamble has happened and what the results were. It relies on ◊link[embedding-data]{embedding data} and ◊link[timestamping-service]{timestamping it} on a blockchain, where data cannot be erased.

A prerequisite is that the casino has published their gambling algorithm. If you also want to be able to prove to a third party that the gamble happened, both the casino and the player needs to sign off on the bet before playing out the bet.◊sn{otherwise}

◊ndef["otherwise"]{
    If you don't publically sign the bet, there's always the risk that the casino can say that it never happened, and you cannot prove otherwise.
}

Our gambling algorithm is simple. We should concatenate the casino's seed with the player's seed and use it to initialize Python 3's pseudo-random generator, which will pick the winner. Here's a simple script that does this:

◊; FIXME
◊; Actually import the python script file instead
◊; Some simple syntax highlighting

◊; Highlighting docs:
◊; https://pygments.org/docs/formatters/
◊;
◊; Hacky pollen implementation is here:
◊; /var/tmp/15509522741550952274721-mbutterick_pollen_master/pollen/unstable
◊; /var/tmp/15509522741550952274721-mbutterick_pollen_master/pollen/private/external
◊;
◊; Better to create our own...?
◊; We want to set the "wrapcode" option for instance.
◊highlight['python]{
           ◊;#:python-executable "python3"
           ◊;#:line-numbers? #f
           ◊;#:css-class #f]{
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
    ◊li{The casino says they won, and reveals that their seed was ◊icode{4}.}
}

To prove that the bet was made, the above interactions should be recorded on the blockchain and signed by both parties.◊sn{pull-out}

◊todo{Clarify that you can sign without a blockchain... REWRITE}

◊ndef["pull-out"]{
    Let's see what we can prove, if either party aborts the bet.

    If the player stops at 1, after having received the encoded seed, the bet simply never happens.

    If the casino stops at 2, after the player has sent their seed to the casino, the bet should be considered played out. Here the casino knows the outcome, but hasn't told the player yet. The player can now prove they entered a bet with the casino, and on what terms.

    If the casino doesn't reveal their seed at step 3, then the casino has most likely lost, and we should treat it like the casino is trying to cheat.

    After step 3, there's proof that they entered the bet and what the outcome was. If the casino refuses to pay a winner, there's irrefutable proof that they in fact won the bet.
}

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

        Mind you, that can still be useful. For example if you want to place a bet with an acquaintance, and you both trust The New York Times to correctly announce the result of the game. But you don't need a complex scheme like the one I described for such a use case. Just have both of you sign a message where you describe the bet, and timestamp it before the game.◊sn{oracle-smart}

        ◊ndef["oracle-smart"]{
            A more interesting scheme would be to give control of the funds to the Oracle, but only allow it to send the funds back to either of you, to prevent the Oracle from stealing the money. (Maybe include a timeout to return the funds and cancel the bet if the Oracle doesn't take any action.)
        }
    }
}

◊todo{Rewrite this, this is wrong}

Maybe you'll say that you don't need a cryptocurrency for provably fair gambling, hashing and pseudo-random algorithms are much older after all. But there's no other way to store data in a tamper proof way, or to timestamp it without third party trust, than in the blockchain of a cryptocurrency.

That's why, for the first time in history, you can gamble in a provably fair way.

◊(define embedding-data "/extensions.html#embedding-data")
◊(define timestamping-service "/timestamping_service.html")


◊subhead{Why is a cryptocurrency necessary?}
