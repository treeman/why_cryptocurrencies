#lang pollen

◊(define-meta title "Cryptocurrencies are antifragile")
◊(define-meta subtitle "They grow stronger from resistance")
◊(define-meta published "2020-02-27T13:33:40+01:00")
◊(define-meta updated "2020-02-27T13:33:40+01:00")
◊(define-meta uuid "9ce74583-fbbd-42d4-940e-3a9e44ed0658")

◊; https://unchained-capital.com/blog/bitcoin-is-antifragile/
◊; https://cryptofundamental.com/in-pursuit-of-lindycoin-212bacafc395?gi=416e2a7a461c

◊(clear-sidenotes)

◊epigraph{
    ◊book-qt[antifragile-book]{
        Antifragility is beyond resilience or robustness. The resilient resists shocks and stays the same; the antifragile gets better.
    }
}

It's common to separate things into two categories: those that are fragile and those that are robust. Regular glass is for example fragile as it breaks easily, often by accident, and bullet-proof glass is robust as they can withstand a significant amount of force before it breaks.

But there's a third category that we often don't think about. It's called ◊def{antifragile} and it goes beyond robustness as it grows even stronger when stressed. I think the phrase "what doesn't kill you makes you stronger" explains antifragility quite well.◊mn[#:top -5]{talib}

◊ndef["talib"]{
    The concept of antifragility was minted by Nassim Taleb in his book series ◊link[incerto #:quote #t]{Incerto}. It includes the famous book ◊(book-link black-swan-book), but I think ◊(book-link antifragile-book) is the most important in the series.
}

At first it might sound impossible; how could something grow stronger from pressure? It would be like if we had armor that was self-healing but after getting shot also learned what type of bullet was used and adapted to resist the same kind of bullet better. Clearly that's only possible in science-fiction.

But that's exactly how our immune system works. After defeating a virus that might make us very sick, our body learns to recognize the virus so it can attack and kill it much earlier. This is how we might develop immunity against COVID-19 and it's the basic principle that makes vaccines work.

◊stable{
  Fragile       Robust                  Antifragile
  Glass         Bullet-proof glass      The immune system
}

Talib describes a myriad of things that are antifragile, for instance financial long options, street fights, love and religion. And as I'll argue in this chapter cryptocurrencies also belong to this group.


◊subhead{The longer it lives the more robust it is}

◊em{Time} is one of the things that break down the fragile and make the antifragile stronger. This is exemplified by the ◊def{Lindy Effect}:

◊book-qt[antifragile-book]{
    The old is expected to stay longer than the young in proportion to their age.
}

In other words the longer a technology lives, the longer it can be expected to live.

The Lindy Effect is only relevant to non-perishable goods. It applies to things like inventions or money, but doesn't apply to individual humans or food.◊mn{old-food}

◊ndef["old-food"]{
    Week-old food isn't better than newly cooked food. I know, I've tried.
}

It's a heuristic, not a natural law, but the implications generally makes sense. For instance that Bitcoin will survive another decade, that a newly created cryptocurrency promising to solve ◊link[challenges]{all of Bitcoin's problems} will fail and that gold will outlive them all by a few millennia.


◊subhead{The largest bug bounty in the world}

In the software development world a ◊def{bug bounty} is a reward for someone who finds a vulnerability and reports it in a responsible manner. This is vastly preferable to them exploiting it or selling it on the black market, in particular if it's a serious one. For example it's easy to imagine the problem caused by a bug that allowed an attacker to view all private messages in Facebook, so Facebook might we willing to ◊link[hacker-money]{pay a hacker a lot of money} if they help them patch this security issue.◊mn{not-paying}

◊(define hacker-money
  (x-ref
    "2020-11-13"
    "https://www.pcmag.com/news/7-huge-bug-bounty-payouts"
    "PCMag (2019) 7 Huge Bug Bounty Payouts"))


◊ndef["not-paying"]{
    Note that not all companies have generous bounties and it's likely you can make more money on the black market by reselling the exploit. Some companies might even thank you by taking legal action against you!
}

◊; https://www.pcmag.com/news/7-huge-bug-bounty-payouts

◊; https://www.forbes.com/sites/jeanbaptiste/2019/08/15/hackers-stole-over-4-billion-from-crypto-crimes-in-2019-so-far-up-from-1-7-billion-in-all-of-2018/

While a decentralized project like Bitcoin doesn't have an official bug bounty, Bitcoin itself functions like a very large bug bounty. Because if you find a way to break Bitcoin, and transfer coins to yourself, you could steal billions of dollars worth of Bitcoin and nobody would know who did it.

This is why I think the Lindy Effect applies to cryptocurrencies; with each day that pass without a fatal bug being found in a cryptocurrency, the probability that it will survive another day increases. Because the incentives are there for people to search for the bugs, that they haven't found anything fatal yet inspire confidence.◊mn{found-bugs}

◊ndef["found-bugs"]{
    People have found serious bugs. In ◊link[timestamping_bug_example]{Timestamping service} we saw how awemany found a bug in Bitcoin that would allow an attacker to print an unlimited amount of Bitcoin. While serious, even if exploited it wouldn't have been fatal.

    As thanks for reporting it awemany received some substantial donations from the community.
}


◊subhead{Antifragility loves small errors}

◊book-qt[antifragile-book]{
    What kills me makes others stronger
}

Another property of the antifragile is that they like small errors, because after recovering after an error they grow stronger. Therefore they want many small errors, but not errors so big the recovery time becomes too long.

This is how our muscles grow stronger. When we do strength training we break down our muscles by causing micro tears, and with rest they heal and make the muscles stronger. But we must be careful to not overdo it otherwise we'll break down, only becoming weaker.

And it also holds true for the immune system. Vaccines give you a very small dose of the virus, just enough to activate your immune system and teach it how to kill the virus, but not so large to make you so sick you couldn't function as normal. And of course you don't want to die in the process.

◊subhead{The resilience of a distributed system}

A good way to see the antifragility of a distributed system is to look at the evolution of piracy. As in pirating music or movies, not killing people on boats piracy.

...

◊subhead{Splitting ensures antifragility}

While you can argue that an individual cryptocurrency is antifragile, antifragility also applies to the cryptocurrency concept itself. People like to point at the thousands of cryptocurrencies as some sort of drawback, but it's actually the opposite. Cryptocurrencies being created and then dying off en mass is good as each time one fails we might learn something new and use that to improve the survivors.

Forking a cryptocurrency is a fundamental antifragility force. This means forking the ledger, where a cryptocurrency splits into several but all the addresses and coins are still there, or forking the code but restarting from an empty ledger.◊mn{reimplementing}

◊ndef["reimplementing"]{
    Another way is to reimplement everything from scratch. This is also antifragility in action as it reuses the idea of ◊link[how_do_cryptocurrencies_work]{how cryptocurrencies work}.
}

◊todo{IMG killing a monster with a Bitcoin symbol}

◊em{In the beginning it was only Bitcoin}

◊todo{IMG the monster sprouts two new heads! With the BCH and XMR logo}

◊em{As problems with Bitcoin start to appear, new cryptocurrencies that try to solve them are created}◊mn{monero-no-fork}

This process allows a community with different ideals to explore their own path, it allows us to explore different ways to solve a problem and it even allows a cryptocurrency to recover from a catastrophic bug. Forking is the ultimate fail-safe.

◊ndef["monero-no-fork"]{
    Yes I know that Monero isn't a fork of Bitcoin, neither a fork of the ledger or the code. It's more a fork of the Bitcoin idea, reworked from the ground up to solve some of the problems with Bitcoin.
}


◊subhead{Concrete examples}

Let's look at some concrete examples of how antifragility might come into play:

◊ol{
    ◊li{◊strong{Developers disagree on the best way forward}

        The coin splits in two and both paths are explored.

        For example in Bitcoin there was a big argument of how best to scale. Some wanted to explore on-chain scaling to the limits and others wanted to move away from the blockchain to "second layer solutions" and depend on them to scale.◊mn{not-mutually-exclusive}◊note-pos{not-mutually-exclusive}

        ◊ndef["not-mutually-exclusive"]{
            On-chain scaling and second layer solutions aren't mutually exclusive as you can explore both at the same time on the same chain.
        }

        This lead to the BTC/BCH split where a part of the community left Bitcoin (BTC) to create Bitcoin Cash (BCH) that aims to prioritize on-chain scaling.

        You may wonder, which approach is the correct one? That's the best part: ◊em{it doesn't really matter} as the cryptocurrency idea will live on regardless. The only issue is if both approaches are a dead-end.
    }
    ◊li{◊strong{Reference client abandons core values}

        What would happen if the developers of a cryptocurrency decided to print coins from thin air and make themselves rich? Or make some other change that would destroy the cryptocurrency?

        Then they would be replaced.

        For example ◊link[monero-dev]{Monero replaced---or kicked out---the old developer team} early on in it's history when the developers pushed changes that the community disagreed with.

        A more recent example is the BCH/ABC split.◊mn{abc} Since Bitcoin Cash split from Bitcoin in 2017 ABC has been the reference client that has dictated every change that went into the protocol. This ended in 2020 when ABC wanted to ◊link[abc-ifp]{reroute 8% of the block reward to an address under their control}. The change would have ◊link[doomed-to-centralization]{serious centralization concerns}, but the miners and the BCH community rejected them and they split away to their own minority fork.

        ◊note-pos[#:top -8]{abc}

        ◊ndef["abc"]{
            As of now it's not yet clear how viable the ABC chain will be. Some exchanges use the ticker BCHA, but most don't support it at all at this time.
        }

        Not only did BCH replace the reference client, they replaced it with a handful of cooperating developer teams, reducing the damage a rogue developer could cause.◊mn{problem-dev}

        ◊note-pos{problem-dev}

        ◊ndef["problem-dev"]{
            I think the developers is the weak-link in a cryptocurrency. While proof-of-work ensures even state level actors will find it difficult to disrupt the network, influencing a few developers is much easier.

            This is why I think these examples are so significant. It shows that the community can, and will, reject malicious developers.
        }
    }
    ◊li{◊strong{Marketplaces freeze your assets}

        Decentralized marketplaces that allow for non-custodial trades are created. This means the marketplaces never control your funds and all trades are made directly with the other person, making it impossible for anyone to freeze your funds.
    }
    ◊li{◊strong{Governments declare cryptocurrencies illegal}

        Governments have declared drugs and prostitution illegal for centuries, but they still manage to thrive. Making them legal would paradoxically make them easier to control, and I think it's the same with cryptocurrencies.

        If governments banned cryptocurrencies people would still trade them in person and move to decentralized marketplaces, which are inherently harder to disrupt. We would move away from centralized payment services and move towards a peer-to-peer economy, like how Satoshi envisioned.◊mn{global} ◊note-pos{global}

        For example Monero supporters worry that governments will declare cryptocurrencies with good privacy features illegal---not an unreasonable thing to worry about. This will soon be a smaller issue as work on a ◊link[farcaster]{Bitcoin-Monero atomic swap project} is underway, which would allow people to trade Bitcoin and Monero without any third party.
    }
    ◊li{◊strong{A 51% attack}

        One of the worst things that can happen to a cryptocurrency is a ◊link[51%-attack]{51% attack}, but even such an event can strengthen it.

        For example an attacked chain could change the mining algorithm, making all existing mining rigs worthless. This would make it impervious to the same type of attack and if an attacker wants to make another attempt brand new mining rigs would have to be purchased or created.

        As another example during the BCH/BSV split the BSV miners threatened to reorg the BCH chain with empty blocks. If successful this would've made it impossible to transact on the chain, as no new transactions would be added to the blockchain, essentially killing the chain. This attack was never carried out, but protection was added to the BCH software that made it more difficult to carry out such an attack.
    }
}

◊ndef["global"]{
    Remember that cryptocurrencies are completely global. Even if they're illegal in your country, you can always find an exchange, service or marketplace online that operates in another country where they're legal.
}


◊subhead{Antifragility brings confidence}

There's a worry that governments will kill cryptocurrencies by making them illegal; that PayPal will co-opt Bitcoin and turn it into a corporate coin; that Facebook or governments will create a centralized digital currency that out-competes real cryptocurrencies; that developers will go rogue; or that a fatal bug will bring it all down.

I've gotta be honest, they don't worry me too much. I see them as temporary setbacks that can be harmful in the short-term, but will in the end make cryptocurrencies even stronger.

I'm convinced that as long as internet exists, so will cryptocurrencies.

◊(define abc-ifp
   (x-ref
    "2020-11-13"
    "https://blog.bitcoinabc.org/2020/08/18/new-release-bitcoin-abc-0-22-0-is-available-to-download/"
    "Bitcoin ABC (2020) New release: Bitcoin ABC 0.22.0 is available to download"))
◊(define doomed-to-centralization
   (x-ref
    "2020-11-13"
    "https://read.cash/@noise/if-the-ifp-in-bitcoin-cash-activates-it-suggests-that-cryptocurrencies-are-doomed-to-centralization-86ff8006"
    "noise (2020) If the IFP in Bitcoin Cash activates, it suggests that cryptocurrencies are doomed to centralization"))
◊(define incerto
   (x-ref
    "2020-11-09"
    "https://www.goodreads.com/book/show/28185864-incerto-4-book-bundle?from_search=true&from_srp=true&qid=0FoB6DZfS4&rank=1"
    "Incerto 4-Book Bundle: Antifragile, The Black Swan, Fooled by Randomness, The Bed of Procrustes"))
◊(define monero-dev
   (x-ref
    "2020-11-13"
    "https://monero.stackexchange.com/questions/1011/monero-inception-how-did-bitmonero-become-monero"
    "Monero Stack Exchange (2016) Monero inception - how did bitmonero become monero?"))
◊(define farcaster
   (x-ref
     "2020-11-23"
     "https://github.com/farcaster-project/rfcs"
     "GitHub (no date) Farcaster RFCs"))

