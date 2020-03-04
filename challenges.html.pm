#lang pollen

◊(define-meta title "Challenges for cryptocurrencies")
◊(define-meta subtitle "Large unsolved problems with cryptocurrencies")
◊(define-meta published "2019-12-09T00:00:00+01:00")
◊(define-meta updated "2020-01-21T08:28:00+01:00")
◊(define-meta uuid "c13d8405-fb3e-411c-b035-aae08eedddf1")

While cryptocurrencies do some things very well, there are several hard unsolved problems with cryptocurrencies. Here's a description of some of them:

◊subhead{Adoption}

While this analogy might sound strange, money has an important similarity with social networks like Facebook, Twitter or Reddit: almost all their value come from them being used by others.

This is called the ◊def[#:src network-effect]{network effect}, and Wikipedia has a succinct way to describe it:

◊qt[#:src "Wikipedia"
    #:url network-effect]{
When a network effect is present, the value of a product or service increases according to the number of others using it.
}

You can have the best website in the world---beautiful, lightning fast and with all the features you could ever need---but if nobody's using it it's a worthless social network. Conversely you can have a shitty website, but it doesn't matter as long as many people use it. A beautiful example of such a site is Twitter, which has an absolutely atrocious user interface, but it's hugely valuable because so many people are invested in the platform.◊sn{twitter-bad}

◊ndef["twitter-bad"]{
    I find Twitter's user experience so bad I can't stand to read yet alone use it.

    Another bad example is Reddit's new design, but luckily you still access the old design att ◊link{https://old.reddit.com/}. I fear for the day when that option is removed.
}


The network effect is directly correlated to ◊link[money-functions]{the functions of money}: medium of exchange, unit of account and store of value. If more people use a currency, the better it'll function as money, and if very few use it the worse it'll be. Therefore I think the lack of adoption is the biggest problem cryptocurrencies face, much larger than the technical issues we'll discuss later in this chapter.◊sn{too-soon}

◊;It's my opinion that the lack of adoption is the biggest problem cryptocurrencies face and as we saw in ◊link[how-well-money-functions]{an earlier chapter} this is what holds cryptocurrencies back from functioning well as money.◊sn{too-soon}

◊;No technical issue comes close to the importance of adoption.

◊ndef["too-soon"]{
    It's fair to say that we shouldn't focus on adoption before we've solved the fundamental technical issues, as if we push too hard too soon the push back could be enormous, but it doesn't change the fact that adoption is the most important issue.
}

Low adoption means it's difficult to both accept and pay with cryptocurrencies. It even compromises censorship-resistance, as you're forced through exchanges that can censor you instead of being able to spend cryptocurrencies directly. You might also partially attribute market immaturity to low adoption, as smaller markets are easier to manipulate and are more volatile.

As you might see, there's a circular reasoning here:

◊qt{
    I don't pay with cryptocurrencies because nobody accepts them.
}

and

◊qt{
    I don't accept cryptocurrencies because nobody pays with them.
}

This is a tough cycle to break, which explains why cryptocurrencies---despite their many strengths---aren't used more than they are.

◊note-pos[#:top -44]{twitter-bad}
◊note-pos[#:top -32]{too-soon}


◊(define network-effect "https://en.wikipedia.org/wiki/Network_effect")
◊(define money-functions "/what_is_money.html#what-functions-does-money-serve?")
◊(define how-well-money-functions "/are_cryptocurrencies_money.html#how-well-do-other-forms-of-money-function?")


◊subhead{Privacy and fungibility}

Bitcoin, like most cryptocurrencies, uses a public ledger where all transactions and addresses are public. We might say that Bitcoin is ◊em{pseudo-anonymous}: while you can see all transactions and addresses you don't know who owns an address. But if you know someone's address, for example if they sent money to you, you can then trace all past and future transactions moving through that address.◊sn{rich-list}

◊ndef["rich-list"]{
    It's possible to for example build a ◊link[rich-list]{list of the Bitcoin addresses with the most coins} and to monitor them to see when they send or receive coins.

    There are also companies like ◊link[chainalysis]{Chainalysis} that work to track your cryptocurrency assets and to analyze your financial activity.
}

◊(define chainalysis "https://www.chainalysis.com/")

◊img[#:src "/images/coin-tracing.png"]{
    After the merchant receives a payment from John, the merchant can see that John has sent 13 BTC to another address and that John still has 40 - 1 - 13 = 26 BTC on the original address.
    John appears to be quite rich.
}

◊img[#:src "/images/coin-tracing2.png"]{
    It's possible to trace coins further back in history. Here we see that John's coins come from a hacked exchange, whose address is known. It might mean John is the hacker or, more probably, that John has received ◊em{tainted} coins (coins associated with illegal behavior).
}

You can explore the Bitcoin blockchain, and see all transactions and addresses, on a ◊link[blockchair]{blockchain explorer}.◊sn{surveillance-coin}

◊ndef["surveillance-coin"]{
    Tired of the moniker "privacy coins" given to coins that protect your privacy, some have started referring to cryptocurrencies with a transparent blockchain as "surveillance coins".

    I personally don't like either of them. They feel too tribal to me, like slurs used to belittle "the others".
}

In an attempt to make Bitcoin more private "mixing" services such as ◊link[coinjoin]{CoinJoin} can be used. They work by mixing together your coins with the coins of others, in an attempt to obscure where the coins are coming from.

◊img[#:src "/images/coinjoin.png"]{
    A mixing service makes several addresses send to each other, in order to obfuscate the history. Although not shown here, because it would be messy, all addresses and amounts are still visible.
}

They're not perfect because you can still have a transaction graph, and you might be able to figure out where the coins originated from anyway. Another approach is used by ◊link[zcash]{the shielded transactions of ZCash}, where all information is hidden.

◊img[#:src "/images/zcash-shielded.png"]{
    Shielded transactions hide both addresses and amount of transactions, but normal transactions still have their details visible.
}

Both mixing and the shielded transactions in ZCash has a major problem: people need to actively choose to use them. This is annoying for users but it's also ◊link[zcash-problem]{bad for privacy} (you can always try to match inputs and outputs even with a perfect black box mixer). It also raises suspicion and people might ask why you're trying to hide your coins.

With this privacy scheme governments can still ◊link[blacklisting]{blacklist certain addresses}, which might in the long run break ◊em{fungibility} as coins associated with those addresses become worth less than others.◊sn{fungibility}

◊ndef["fungibility"]{
    As noted in the chapter ◊link[what-is-money]{What is money?} fungibility is a core property of money. This is why it's wrong to label cryptocurrencies trying to address this problem as "privacy coins"---the issue goes beyond privacy.
}

◊link[Monero]{Monero} tries to solve this by hiding amounts and obscuring addresses for all transactions.

◊img[#:src "/images/monero-transactions.png"]{
    This is how the Monero blockchain appears to an observer. Each input is hidden among other transactions, but we cannot tell which one is real and which are fake. Receiving addresses are protected by stealth addresses and all amounts are also hidden.
}

◊img[#:src "/images/monero-transactions2.png"]{
    The merchant who receives the transaction can see which of the inputs is the correct one, the amount and a tag saying who the payment is from. (Alternatively the merchant could've given John a unique address and skip the transcation tagging.)
}

You can still verify the proof-of-work and even the coin supply on Monero, although verifying the coin supply isn't as simple as on a transparent blockchain. For more technical details on Monero I recommend ◊link[mastering-monero #:quote #t]{Mastering Monero} written by SerHack.

There are other ideas of how to improve privacy and fungibility for cryptocurrencies, and cryptocurrencies of the future might work differently to what I've described here. There are weaknesses to the solutions we've seen so far and they also come with disadvantages. For example transactions in Monero are larger than transactions in Bitcoin, making Monero even more difficult to scale. But research is ongoing and I'm hopeful.

◊note-pos[#:top -157]{rich-list}
◊note-pos[#:top -116]{surveillance-coin}
◊note-pos[#:top -56]{fungibility}


◊;Cryptocurrencies can be used anonymously---your identity isn't tied to your addresses. But as with all tools, cryptocurrencies won't ◊em{guarantee} your anonymity. For example if you try to buy a VPN anonymously with Bitcoin, your identity might still be revealed if the coins can be traced back to an exchange that have your name. Or they might trace your IP you purchased it with, or track browser cookies or you might just make a silly mistake like associate your name with the email you sign up with.

◊(define Monero "https://www.getmonero.org/")
◊(define blockchair "https://blockchair.com/")
◊(define zcash "https://z.cash/technology/")
◊(define coinjoin "https://en.bitcoin.it/wiki/CoinJoin")
◊(define rich-list "https://blockchair.com/bitcoin/addresses")
◊(define zcash-problem "http://jeffq.com/blog/on-the-linkability-of-zcash-transactions/")
◊(define blacklisting "https://home.treasury.gov/news/press-releases/sm556")
◊(define fungibility "/what_is_money.html#what-properties-does-good-money-have?")
◊(define mastering-monero "https://masteringmonero.com/")
◊(define what-is-money "/what_is_money.html")


◊subhead{Scalability}

Perhaps the most famous technical issue cryptocurrencies face is how to scale them and to increase transaction throughput. This is the big drawback with a decentralized system compared to a centralized system; they're just so much less efficient.

Bitcoin can for example only process 3--7 transactions per second (tx/s) at max capacity, while ◊link[paypal-transactions]{PayPal processes on average ◊nbsp{400 tx/s}} and ◊link[visa-transactions]{VISA an average of ◊nbsp{1 700 tx/s}}, with VISA's peak capacity being over ◊nbsp{24 000 tx/s}. If cryptocurrencies should live up to their potential then there's lots of work to do here.

But it's not quite as bad as the numbers seem to suggest. Bitcoin operates far from the technical limits because they didn't raise the blocksize limit, which essentially sets an artificial limit on transaction throughput. ◊link[bch]{Bitcoin Cash}, a fork of Bitcoin, has raised this limit and has more than 20 times the throughput of Bitcoin (around ◊nbsp{100 tx/s}). So cryptocurrencies can at least be in the same playing field as PayPal.◊sn{blocksize}

◊ndef["blocksize"]{
    See ◊link[history-blocksize]{this timeline} for the history of the blocksize debate (it only goes up to Dec 2017, but as of May 2019 no significant development has happened). Because Bitcoin didn't raise the blocksize Bitcoin Cash was created in 2017, keeping fees low and transaction capacity high.

    There are ◊strong{◊link[hearn]{no valid}} reasons against a moderate blocksize increase, yet there are Bitcoin developers who to this day think we should ◊link[luke-300kb]{decrease it to 300kb}.
}

But it's not as easy as "just increase the blocksize". Larger blocks have a centralizing effect, which compromises the core value proposition of a cryptocurrency, and if the network cannot handle them it may even break down.

There are a number of technical pain points that needs to be improved to scale a cryptocurrency. Here's a list of some that I think are important:

◊ol{
    ◊li{Block propagation

        When a miner finds a block it's important that it propagates around the world to all other miners, so they can continue building on it. This should be done quickly, otherwise it'll increase orphan rates (the risk that a block will get discarded as another one was found at the same time), which will have a centralizing effect as it harms smaller miners more than larger miners.
    }
    ◊li{Blockchain size

        Because full nodes must store transactions ◊em{forever}, it's important that the blockchain size (containing all transactions) doesn't outgrow the storage capacity of nodes.◊sn{btc-size}

        ◊note-pos{btc-size}
    }
    ◊li{Bandwith usage

        It's important that nodes have internet connections enough bandwidth to share transactions with each other.
    }
    ◊li{Initial sync

        When you first start up a node from scratch you need download and validate the whole blockchain. This must be fast enough so that nodes are able to catch up in a reasonable amount of time.
    }
    ◊li{Validation speed

        When a node sees blocks and transactions they must also validate them.◊sn{validation-less-mining}

        ◊note-pos{validation-less-mining}
    }
}

◊ndef["btc-size"]{
    As of 2020-03-04 the total ◊link[btc-blockchain-size]{blockchain size of Bitcoin} is 265 GB. That's not small, but a 1 TB SSD harddisk costs around $120 and can store the entire BTC blockchain for almost 15 more years (it grows around 50 GB/year).
}

◊(define btc-blockchain-size "https://www.blockchain.com/charts/blocks-size")

◊ndef["validation-less-mining"]{
    Miners can delay transaction validation and only validate the POW of a block and start mining it directly. This is a fair assumption as it's very expensive to produce a valid POW for a block.
}

When we increase transaction throughput we also increase the burden of full nodes (those who validate and store the blockchain) and it might mean that fewer people can run nodes, harming the node decentralization of the network. It's not a problem as long as enough people can and want to run a node, and at the very least exchanges, researchers, developers, payment processors and enthusiasts will want to as long as it's not prohibitively expensive.◊sn{light-wallets}

◊ndef["light-wallets"]{
    Most people won't run a full node anyway as they will use light wallets or SPV wallets on the mobile phone, which will ask other full nodes for the data they need.
}

Besides optimizing the standard basic structure defined by Bitcoin, there are other scaling proposals out there. Some say we should offload transactions to "layer two" networks, which will only occasionally settle back to a cryptocurrency thereby increasing transaction throughput.◊sn{layer2}

◊ndef["layer2"]{
    While I'm not against layer two solutions, I'm deeply skeptical of them being a solution to the scaling problem. Simply because if you transact on another network, you're not actually using a cryptocurrency, but you're using something else with different properties.
}

Others suggest we should use a completely different system, maybe giving up ◊def{proof-of-work} for ◊def{delegated proof-of-stake} or base it on the ◊link[avalanche]{Avalanche protocol}.

◊;I personally think we can come far by optimizing the base system, but whatever solutions we'll go with I'm confident we can make cryptocurrencies scale enough to be truly useful on a global scale.

It may ultimately be impossible to scale a cryptocurrency so that ◊em{everyone} in the world uses it for their daily transactions, but I'm confident it's possible to scale it to be useful on a global scale.

◊; PayPal average of 193 tx/s
◊; VISA average of 1700 tx/s

◊note-pos[#:top -22]{light-wallets}
◊note-pos[#:top -14]{layer2}

◊; 12362000000/(365 * 24 * 60 * 60)
◊; 391.9964485032978
◊(define paypal-transactions "https://www.statista.com/statistics/218495/paypals-net-number-of-payments-per-quarter/")
◊; 150 million tx/day
◊; 150000000/(24 *60*60)
◊; 1736.111111111111
◊(define visa-transactions "https://usa.visa.com/run-your-business/small-business-tools/retail.html")


◊(define avalanche "https://avalanchelabs.org/QmT1ry38PAmnhparPUmsUNHDEGHQusBLD6T5XJh4mUUn3v.pdf")
◊(define hearn "https://blog.plan99.net/the-resolution-of-the-bitcoin-experiment-dabb30201f7?gi=c2a62f310034")
◊(define bch "https://www.bitcoin.com/what-is-bitcoin-cash/")
◊(define history-blocksize "https://hackernoon.com/the-great-bitcoin-scaling-debate-a-timeline-6108081dbada")
◊(define luke-300kb "https://news.bitcoin.com/core-developers-300kb-block-proposal-bolstered-in-bid-to-push-lightning-adoption/")

◊subhead{Transaction delays}

◊subhead{Energy usage}



◊; ??
◊;subhead{User experience}
◊;subhead{Development organization}

