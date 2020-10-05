#lang pollen

◊(define-meta title "Provably fair gambling")
◊(define-meta subtitle "Gambling where you cannot cheat the odds")
◊(define-meta published "2019-12-17T00:00:00+01:00")
◊(define-meta updated "2020-02-27T13:34:37+01:00")
◊(define-meta uuid "cf1cc907-4fda-4b98-81fd-b9c447cdadc5")

◊(clear-sidenotes)

◊; Bill the Betting man
◊; Sharon the betting Site

◊epigraph{
  ◊qt[#:author "Attributed to Michael Cassius McDonald"]{
    There's a sucker born every minute.
  }
}

I love the movie ◊link[oceans-11]{Ocean's Eleven (2011)}. I've a fascination for heists and how they in the movie win against the house in various gambles---by cheating of course. They hack the slot machines, they cheat in card games and they control the dice in craps like magicians. And they do it with style.

Cheating is possible in the real world as well. For example you could do a coin toss, but with a coin with heads on both sides. Or a coin that's heavier on one side, making the odds 55% and 45%. Don't let the numbers fool you---this is a huge difference compared to a 50/50 gamble.

But it's hard to verify that a gamble is fair. With a coin you ◊em{might} be able to feel it, and specialized anti-cheating machines might be able to measure dice, but you can never be sure. Gambling on the internet is a whole other can of worms, where you're often left trusting that the site isn't screwing you over.◊mn{poker-cheating}

◊ndef["poker-cheating"]{
    There was a big poker scandal several years ago where it was discovered that ◊link[poker-scandal]{Ultimate Bet and Absolute Poker cheated in online poker}. They were discovered by people who noticed certain users who had "abnormally high winning statistics". Turns out they were using a superuser account that could see all cards.
}

With cryptocurrencies we can device a scheme where gambling is provably fair. We can create a gambling site where users are sure the bets are fair---with mathematical certainty---and without a trusted third party facilitating the bets.

◊note-pos[#:top -9]{poker-cheating}

◊(define poker-scandal
   (x-ref
     "2019-12-17"
     "https://upswingpoker.com/ultimate-bet-absolute-poker-scandal/"
     "Ultimate Bet and Absolute Poker: What Happened?"))
◊(define oceans-11
   (x-ref
     "2019-12-17"
     "https://www.imdb.com/title/tt0240772/"
     "Ocean's Eleven (2001)"))

◊; Another poker cheating scandal:
◊; https://news.ycombinator.com/item?id=21161043

 ◊;“There's a small thrill in taking a chance”
◊;― Zoe Archer, Wicked Temptation 

 ◊;“There's a sucker born every minute”
◊;― Michael Cassius McDonald 


◊subhead{Seeds and pseudo-random generators}

To understand how the gambling scheme I'll describe works, first it's important to understand ◊em{pseudo-random generators}. Take this random sequence for example:

◊code{
    1 2 2 9 0 3 3 8 5 9 …
}

The important thing about it is that you cannot predict what number comes next. That's why it's ◊em{random}.

But if we want to flip a coin, and verify how it was flipped without looking at it, how could we do that? It's simple---just flip it again in ◊strong{exactly} the same way as you did before, and it should land exactly like it did before. (I didn't say it was easy!)

With a pseudo-random generator that's what we can do. We give it a ◊em{seed}, which will produce a sequence that's unpredictable, except that when given the same seed it will always produce the same sequence. For example:

◊code{
    seed 7:
    5 2 6 0 1 8 1 5 9 0 …

    seed 13:
    4 4 2 3 2 3 2 2 1 8 …
}

A pseudo-random generator can produce a sequence of numbers, a number of coin tosses or even generate the whole world in Minecraft.◊mn{minecraft-seed}

◊ndef["minecraft-seed"]{
    They even call it a "seed" in Minecraft. There are many ◊link[minecraft-best-seeds #:quote #t]{Minecraft best seeds} lists out there, with seeds that generate some pretty impressive worlds. You do need to take care which version of Minecraft you're using, as the world generation can differ between versions.

    This is also true for pseudo-random generators, where different generators will produce different results.
}

◊(define minecraft-best-seeds
   (x-ref
     "2019-12-17"
     "https://progameguides.com/minecraft/minecraft-best-seeds/"
     "Best Minecraft Seeds for April 2020 (1.15+ & 1.14+)"))


◊subhead{A simple provably fair gambling scheme}

Here's a simple scheme that allows us to prove that a gamble has happened, what the results were and how to verify if it was fair.

Our gambling algorithm is simple. We'll concatenate the casino's seed with the player's seed and use it to initialize a pseudo-random generator, which will flip a coin to pick the winner. Here's a simple Python 3 script that does this for us:

◊;Firstly the casino has to have published their gambling algorithm, and if you want to be able to prove to a third party that the gamble took place, both the casino and the player needs to sign off on the bet before playing out the bet.◊sn{otherwise}

◊ndef["otherwise"]{
    If you don't publically sign the bet, there's always the risk that the casino can say that it never happened, and you cannot prove otherwise.
}

◊(code-hl "python3" "scripts/gambling.py")

Importantly the casino should give out the seed encoded with a ◊def[hash-functions]{cryptographic hash function}, otherwise the player can just pick the winning seed and there would be no gamble. When the player has sent their seed to the casino, the bet has been made, and the casino reveals their seed (which we can verify with the hashed value) and we know who won and who lost.

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

To prove that the bet was made, the above interactions should be signed by both parties, complete with timestamps. It doesn't even have to be on a blockchain, just having a public key connected to their identity is enough. As long as either party has the signed messages, it's all good.◊mn{pull-out}

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
    ◊li{Then we can use the Python script to verify the gamble:

        ◊code{
            Please enter the casino seed: 4
            Please enter the player seed: 1
            Using seed: 41
            The winner is: casino
        }
    }
}

It checks out, the casino won fair and square.

◊; https://bitcoinchaser.com/provably-fair-gambling/


◊subhead{Limits to this scheme}

There are limits to the simple toy example I've described:

◊ul{
    ◊li{Seeds need to be longer.

        A seed like ◊icode{4} is far too simple. We'd need a much longer seed for the game to be secure. Maybe something like ◊icode{65654687731080707945}?
    }
    ◊li{Multiplayer games are more complex.

        This scheme works fine for simple single player games, like flipping a coin. But if we wanted to create a provable fair poker game the implementation would be more complex, but it would still be possible.◊mn{encrypt}

        ◊note-pos{encrypt}

        ◊ndef["encrypt"]{
            Here we'd have to encrypt your cards and hide them from other players, but they still need to be able to verify that they were dealt out correctly after the fact.

            I leave the implementation details as an exercise for the reader.
        }
    }
    ◊li{Only for digitally randomized gambles.

        It's not possible to bet on real life events, like the outcome of an ice hockey game, without relying on a trusted third party to announce the result of the game (often called an Oracle).
    }
}

◊subhead{How does this relate to cryptocurrencies?}

Until now, nothing I've described requires a cryptocurrency (and if you don't need it, you shouldn't use it). So why bring it up in a book about cryptocurrencies?

By ◊link[embedding-data]{embedding the messages} between the casino and the player on the blockchain, we get a permanent record of all gambles that take place. It would be proof of dishonest behaviour and act as a reputation boost for honest casinos.

But we can go further. The biggest issue with our simple scheme is that the casinos can still decide not to pay. There's nothing forcing them to pay the players if they win big---they could just take the money and run.

With smart contracts, on a cryptocurrency with a powerful scripting language like Ethereum, we might enforce the payment as well. In our example when accepting the bet, both the casino and the player must lock up their funds in a smart contract that will play out the bet (like in the Python script) and send the funds to the winner. This removes the risk of the casino refusing to pay out if you manage to win, as it's enforced by the smart contract.

You can also improve the state of sports betting. A smart contract can give an Oracle the power to transfer the money of a gamble to the winner---but it's only allowed to send it to either the player or the casino, so the Oracle cannot steal the money. This is good if you can trust the Oracle to call the result of a game, but you don't trust them to hold your money.◊mn{timeout}

◊ndef["timeout"]{
    You can also include a timeout to return the funds and cancel the bet if the Oracle doesn't take any action. Or allow the player and casino to cancel the bet and return all funds, if they both agree.
}

In this way cryptocurrencies can drastically reduce the risk of being cheated when we gamble.

◊note-pos[#:top -8]{timeout}


