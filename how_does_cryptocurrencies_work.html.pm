#lang pollen

◊(define-meta title "How does cryptocurrencies work?")
◊;(define-meta subtitle "Byzantine fault tolerance")

As stated in the introduction the focus isn't on technical details but it's a hard balance to make between keeping it simple and explaining how cryptocurrencies work. If this chapter is too technical you can safely skip to the ◊link[next-chapter]{next chapter}.

◊subhead{The ledger}

If you want to create a digital currency you only really need to keep track of how many coins everyone have. For example your bank might have entries in a ledger like this:

◊table{
  Person      Swedish krona
  Alice       7 000 SEK
  Bob         1 000 SEK
}

When Alice wants to send ◊tf{500 SEK} to Bob the bank simply updates the ledger:

◊table{
  Person      Swedish krona
  Alice       6 500 SEK (-500 SEK)
  Bob         1 500 SEK (+500 SEK)
}

Cryptocurrencies work this way as well. In fact the ledger in a cryptocurrency, often referred to as the "blockchain", contains the balance of all addresses. ◊mn{stores-transactions}


◊subhead{Your keys, your coins}

To be able to create a transaction you need to have the private keys to the address you want to send from. Think of it as a secret password that unlocks your account. This prevents anyone else from stealing your coins, unless of course they steal your private key!

It uses ◊link[public-key-cryptography]{public-key cryptography} which allows you to prove you have the private key without showing the private key itself. Compare it to credit card numbers which act as both a private and public key. I won't explain how it works in detail, look it up if you're interested.


◊subhead{Copying a coin & double spending}

So far cryptocurrencies doesn't do anything new. The hard problem is how do you prevent someone from copying a coin and sending the copies the different receivers?

For example Alice wants to buy a computer from Bob and wants to pay with Bitcoin. The computer costs ◊tf{1 BTC} and the Bitcoin ledger looks like this:

◊table{
  Address     Bitcoin
  Alice 1     1 BTC
  Alice 2     0 BTC
  Bob         0 BTC
}

What Alice tries to do is send ◊tf{1 BTC} to the merchant Bob and then send the same ◊tf{1 BTC} to her other address ◊tf{Alice 2}.◊mn{addresses}

◊todo{IMG alice doublespend}

◊ndef["addresses"]{
    You can have as many addresses you want. This is a consequence of the permissionless nature of Bitcoin.
}

If we didn't prevent this the ledger might look like this:

◊table{
  Address     Bitcoin   Diff
  Alice 1     -1 BTC    (-2 BTC)
  Alice 2     1 BTC     (+1 BTC)
  Bob         1 BTC     (+1 BTC)
}

We copied our coin and printed ◊tf{1 BTC} out of thin air so now the ledger contains a negative balance. This is a form of ◊em{double spending}---spending the same coin twice.

This isn't really a problem with physical cash since you can't just copy gold coins or paper notes. It's not a problem for banks either since the bank can just deny one or both of the transactions.

But this is a hard problem for a digital currency that tries to remove the central authority. This is why before Bitcoin no decentralized◊sn{decentralized} digital currency existed.

◊ndef["decentralized"]{
    Decentralization is a common term used to refer to the lack of trusted third party. Instead multiple unrelated entities come together and decide as a group.
}


◊subhead{The Byzantine Generals Problem}

To solve double spending it's enough to choose one of double spending transactions. But how do you do that when there are many unrelated people---some who wants to cheat?

This is the same problem known as the ◊em{Byzantine Generals Problem}:

◊div[#:class "story"]{
In the Eastern Roman Empire, also referred to The Byzantine Empire, a couple of generals surround an enemy city. The city is very well defended and if they attack individually they will get crushed. They will have to work together and coordinate to attack at the same time or to retreat as a unit. If they don't then a massive defeat will follow.

This would be very easy if they could trust each other. Unfortunately they cannot trust the messages---either the messenger or the message itself could be replaced---and even some of the generals could be traitors.

◊todo{IMG 5 generals surrounding a city, 2 traitors}

It quickly becomes complicated if they need to decide on a day to attack and if they send several messages

◊todo{IMG more messages}

If given conflicting messages they might see that something is amiss, but they cannot decide what to do. Doing nothing is too dangerous if their food supply is running low or if the city is waiting for reinforcements and acting alone is a sure defeat.
}

To relate it back to cryptocurrencies the choice between "attack" and "retreat" is similar to choosing between two transactions in a double spend. You know there are bad actors---like Alice who wants to double spend---but who can you trust?


◊subhead{Sybil attack}

You may think most in the network are honest so can't you just ask everyone?

Unfortunately there's a serious problem here. As there is no barrier to participating in the network and no identity control a single person can have multiple identities.

◊todo{IMG what Bob sees}

◊todo{IMG in reality Alice controls all}

This is called a ◊em{Sybil attack}. Think of how one person can use multiple online identities to troll or attack people online, it's hard to know who's real.◊sn{trolls}

◊ndef["trolls"]{
    It's very common for cryptocurrency communites to be flooded with trolls pushing their own agenda.
}


◊subhead{Proof-of-work}

If you've heard about cryptocurrencies then maybe you've also heard about cryptocurrency miners or Bitcoin miners. This is how Bitcoin provides sybil resistance and prevents double spends.

The core idea is: if you want to choose which transaction is valid◊sn{valid} you have to do work. The process is known as ◊em{proof-of-work}, shortened to POW.

The work is to find a solution to a computing problem. The problem itself is not that important and it doesn't have any meaning outside of mining. There are two important properties it should have:

◊ul{
    ◊li{◊strong{Hard enough}

        In Bitcoin one solution is expected every 10 minutes. The difficulty is continuously adjusted.
    }
    ◊li{◊strong{Memoryless}

        It means working on a problem longer doesn't bring any advantage. You're just as likely---or unlikely---to solve it after just starting as if you've worked on it an hour. It's essentially random.
    }
}

A solution is proof that you've done the work---it's proof that you've expended energy. Yes it's like a lottery and you can get lucky, but in the long run it balances out.

The solution allows you to update the ledger by adding a block with many transactions to the blockchain. Other miners now have to restart and work to add a block on top of your new block, the problem is slightly different for each block so you cannot add a block anywhere.

Importantly you're not allowed to add any invalid transactions, like sending coins from an empty wallet or double spends.

◊todo{IMG a straight blockchain}

In return for adding the block you get a reward, both a fixed one for finding a new block and you can collect transaction fees for the transactions you include in the block.◊mn{gold}


◊ndef["gold"]{
    As I'm writing this the current blockreward for Bitcoin is 12.5 BTC or around $50,000.
}

Important to note is that everyone doesn't have to be a miner. From our example Bob can confirm for himself that Alice has money for her transaction. The blockchain is open for anyone to read and validate.

But what happens if there are two chains? One where Alice sends money to Bob and one where Alice sends money to herself? Which one is the correct one?

◊todo{IMG alice double spend, two chains}

This all relies on a majority of miners being honest---it is the core assumption for POW to work at all. Honest miners work for profit so they absolutely don't want to risk their block being rejected by the other miners and lose their reward.◊sn{orphan} Therefore the rational thing to do is to work on the longest chain.

If most miners are honest then one chain will become longer. In our example Bob simply waits too see which chain wins and decide from there. Coming to consensus by following the longest chain is often referred to as ◊em{Nakamoto consensus}.

◊todo{IMG two chains, one shorter}

This touches on the immutability of the blockchain. As long as more than 50% of miners don't want to change the chain it will always be longest and correct. But if they do then they can rewrite the rules.


This prevents someone like Alice to reverse their transaction after paying Bob.◊sn{chargeback}


◊ndef["orphan"]{
    This might happen unintentionally if two blocks are produced at the same time. One of them gets ◊em{orphaned}.
}


◊ndef["hashing"]{
    Hashing
}


◊hr{}


◊ndef["valid"]{
    Remember that to prevent double spending one transaction must be chosen, which one doesn't matter.
}


A crucial mistake people make is to think more miners, or more energy used, means more transactions can be handled. This is not true. Miners ◊strong{only} care about securing the chain and to prevent your transactions from being reverted or double spent. 

In fact we could spend 100x more energy on securing the chain and process the same amount of transactions or we could spend 1% of the energy and process more transactions. Transaction throughput is a separate problem.


◊subhead{Where do your transactions go?}

When you want to pay a merchant you don't send it directly to them like you would pay them with cash in hand. Instead you send the transaction out to the network which gets forwarded to the miners who then adds it to the blockchain.

The merchant can now look up the transaction in the blockchain to confirm they've received it and can then give you the goods without fear of the transaction being reversed.◊mn{reversed}

◊ndef["reversed"]{
    It's not completely true that there is no risk of fraud. The security model isn't absolute but probabilistic and the deeper in the blockchain the transaction is the harder it is to reverse.

    In ◊link[wp]{the whitepaper} 6 confirmations---roughly 1 hour---is recommended to be sure you won't get defrauded. Today with the considerable security today of the Bitcoin blockchain a single confirmation is enough for most normal payments.
}


◊ndef["chargeback"]{
    In the credit card world reverting transactions leads to ◊link[chargeback-fraud]{chargeback fraud}.
}


◊ndef["stores-transactions"]{
    It's a slight simplification to say the blockchain stores balances.  It actually stores all transactions from which you can calculate all balances.

    To lighten the load you can run your software in a pruned mode which discards the transactions and only keeps the balances.
}

Sneaky Steve and Honest Harry instead of Alice and Bob?

◊(define chargeback-fraud "https://en.wikipedia.org/wiki/Chargeback_fraud")
◊(define public-key-cryptography "https://en.wikipedia.org/wiki/Public-key_cryptography")
◊(define next-chapter "/look_out_for_snake_oil.html")
◊(define byzantine "https://en.wikipedia.org/wiki/Byzantine_fault_tolerance")

◊; Table format
◊(define (tf . args)
    (sans-tnum (apply nbsp args)))

