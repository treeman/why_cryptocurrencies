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

Bitcoin can process 3--7 transactions per second.

PayPal average of 193 tx/s

VISA average of 1700 tx/s

◊ol{
    ◊li{Block propagation}
    ◊li{Blockchain size}
    ◊li{Initial sync}
    ◊li{Validation speed}
    ◊li{Bandwith usage}
}

Not ◊em{everyone} need to run a full node, but enough people need to run them.


◊subhead{Transaction delays}

◊subhead{Energy usage}



◊; ??
◊;subhead{User experience}
◊;subhead{Development organization}

