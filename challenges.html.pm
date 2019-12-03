#lang pollen

◊(define-meta title "Challenges for cryptocurrencies")
◊(define-meta subtitle "Large unsolved problems with cryptocurrencies")
◊(define-meta updated "2019-12-02T07:16:54+01:00")
◊(define-meta uuid "c13d8405-fb3e-411c-b035-aae08eedddf1")

While cryptocurrencies do some things very well, there are several hard unsolved problems with cryptocurrencies. Here's a collection of some of them.

(I'll add more items as I continue working on the book.)

◊subhead{Privacy}

Bitcoin, like most cryptocurrencies, uses a public ledger where all transactions and addresses are public. We might say that Bitcoin is ◊em{pseudo-anonymous}: while you can see all transactions and addresses you don't know who owns an address. But if you know someone's address, for example they sent money to you, you can then trace all past and future transactions moving through that address.◊sn{rich-list}

◊ndef["rich-list"]{
    It's possible to for example build a ◊link[rich-list]{list of the Bitcoin addresses with the most coins} and to monitor them to see when they send or receive coins.
}

◊img[#:src "/images/coin-tracing.png"]{
    After the merchant receives a payment from John, the merchant can see that John has sent 13 BTC to another address and that John still has 40 - 1 - 13 = 26 BTC on the original address.
}

You can explore the Bitcoin blockchain, and see all transactions and addresses, on a ◊link[blockchair]{blockchain explorer}.

In an attempt to make Bitcoin more private "mixing" services can be used. They work by mixing together your coins with the coins of others, in an attempt to obscure where the coins are coming from:

◊todo{IMG of a coinjoin-style shuffle}

They're not perfect because you can still have a transaction graph, and you might be able to figure out where the coins originated from anyway. Another approach is used by ◊link[zcash]{the shielded transactions of ZCash}, where all information is hidden:

◊todo{IMG of a ZCash shielded transaction}

Both mixing and the shielded transactions in ZCash has a major problem: they're opt-in. This is annoying for users but it's also bad for privacy.

◊todo{IMG of a Monero transaction}



◊;Cryptocurrencies can be used anonymously---your identity isn't tied to your addresses. But as with all tools, cryptocurrencies won't ◊em{guarantee} your anonymity. For example if you try to buy a VPN anonymously with Bitcoin, your identity might still be revealed if the coins can be traced back to an exchange that have your name. Or they might trace your IP you purchased it with, or track browser cookies or you might just make a silly mistake like associate your name with the email you sign up with.

◊(define Monero "https://www.getmonero.org/")
◊(define blockchair "https://blockchair.com/")
◊(define zcash "https://z.cash/technology/")
◊(define coinjoin "https://en.bitcoin.it/wiki/CoinJoin")
◊(define rich-list "https://blockchair.com/bitcoin/addresses")

◊;subhead{Scalability}

◊;subhead{Transaction delays}

◊;subhead{Energy usage}

◊;subhead{Adoption}

