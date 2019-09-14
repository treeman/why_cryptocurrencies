#lang pollen

◊(define-meta title "How do cryptocurrencies work?")
◊(define-meta subtitle "Decentralized consensus")
◊(define-meta updated "2019-04-03T20:05:00+02:00")
◊(define-meta uuid "320751d9-9a28-4e91-9469-b44b83e12475")

As stated in the introduction the focus isn't on technical details, but it's a hard balance to make between keeping it simple and explaining how cryptocurrencies work. If this chapter is too technical you can safely skip to the ◊link[next-chapter]{next chapter} or just read ◊link[summary]{the summary}, it's not required knowledge.

◊(define summary "#summary")

This is my attempt to explain how a standard cryptocurrency like Bitcoin works. Other cryptocurrencies may diverge on various points but the fundamentals are the same.◊sn{others}

◊ndef["others"]{
    For example Ethereum adds Turing complete smart contracts and CryptoNote protocols (like Monero) hides transaction details.
}


◊subhead{The ledger}

If you want to create a digital currency you only really need to keep track of how many coins everyone have. For example your bank might have entries in a ledger like this:

◊stable{
  Person      Swedish krona
  Sneaky Steve       7 000 SEK
  Honest Harry         1 000 SEK
}

When Sneaky Steve wants to send ◊tf{500 SEK} to Honest Harry the bank simply updates the ledger:

◊stable{
  Person      Swedish krona
  Sneaky Steve       6 500 SEK (-500 SEK)
  Honest Harry         1 500 SEK (+500 SEK)
}

Cryptocurrencies work this way as well. In fact the ledger in a cryptocurrency, often referred to as the ◊em{blockchain}, contains the balance of all addresses. ◊sn{stores-transactions}


◊subhead{Your keys, your coins}

To be able to create a transaction you need to have the ◊em{private keys} to the address you want to send from. Think of it as a secret password that unlocks your account. This prevents anyone else from stealing your coins, unless of course they steal your private key!◊sn{private-key}

◊ndef["private-key"]{
    You typically don't use the private key directly. Instead you can interact with a ◊em{seed}, which encodes the private key hash into a human-readable format. It's commonly made of 12 or 24 words.
}

It uses ◊link[public-key-cryptography]{◊em{public-key cryptography}} which allows you to prove you control the private key without sharing the private key itself. Compare it to credit card numbers which act as both a private and public key. Explaining how the cryptographic primitives work is out of the scope of this book.◊sn{pubkey}

◊ndef["pubkey"]{
    If you're intrigued by the promise of public-key cryptography I encourage you to look it up, it's quite fascinating.

    If the history of cryptography interests you I can also recommend the book "The Code-Breakers" by David Kahn. You can enjoy it even without much math knowledge.
}


◊subhead{Copying a coin & double spending}

So far cryptocurrencies don't do anything new. The hard problem is how do you prevent someone from copying a coin and sending the copies the different receivers?

For example Sneaky Steve wants to buy a computer from Honest Harry and wants to pay with Bitcoin. The computer costs ◊tf{1 BTC} and the Bitcoin ledger looks like this:

◊stable{
  Address     Bitcoin
  Sneaky Steve 1     1 BTC
  Sneaky Steve 2     0 BTC
  Honese Harry         0 BTC
}

What Sneaky Steve tries to do is send ◊tf{1 BTC} to the merchant Honest Harry and then send the same ◊tf{1 BTC} to his other address ◊tf{Sneaky Steve 2}. It's possible because you can have as many addresses you want, this is a consequence of the permissionless nature of Bitcoin.

◊img[#:src "/images/double-spend.png"]{Sneaky Steve sends a digital coin both to Honest Harry and himself.}

If we didn't prevent this the ledger might look like this:

◊stable{
  Address     Bitcoin   Diff
  Sneaky Steve 1     -1 BTC    (-2 BTC)
  Sneaky Steve 2     1 BTC     (+1 BTC)
  Honest Harry         1 BTC     (+1 BTC)
}

We copied our coin and printed ◊tf{1 BTC} out of thin air, so now the ledger contains a negative balance. This is a form of ◊em{double spending}---spending the same coin twice.

This isn't really a problem with physical cash since you can't just copy gold coins or paper notes. It's not a problem for banks either since the bank can just deny one or both of the transactions.

But this is a hard problem for a digital currency that tries to remove the central authority. This is why before Bitcoin no ◊em{decentralized}◊sn{decentralized} digital currency existed.

◊ndef["decentralized"]{
    Decentralization is a common term used to refer to the lack of trusted third party. Instead multiple unrelated entities come together and decide as a group.

    There are different types of decentralization in a cryptocurrency to consider. For example:

    1. Mining centralization
    2. Development centralization
    3. Node centralization
}


◊subhead{The Byzantine Generals Problem}

To resolve double spending it's enough to choose one of double spending transactions. But how do you do that when there are many unrelated people---some who wants to cheat?

This is the same problem known as the ◊link[byzantine-generals]{◊em{Byzantine Generals Problem}}. Here's my description of a simple variation:

◊div[#:class "story"]{
In the Eastern Roman Empire, also referred to as the Byzantine Empire, a couple of generals surround an enemy city:

◊img[#:src "/images/generals.png"]{
    The five generals surround a well defended enemy city. They don't have direct contact and instead need to communicate by sending messengers.
}

The city is very well defended and if they attack individually they will get crushed. They will have to work together and coordinate to attack at the same time or to retreat as a unit. Doing nothing is not an option either as they have limited food supply and the city is waiting for reinforcements.

If they try to act without a majority they will for sure get defeated, they must coordinate.

This would be very easy if they could trust each other. Unfortunately they cannot trust the messages---either the messenger or the message itself could be replaced---and even some of the generals could be traitors.◊sn{cryptography}

◊ndef["cryptography"]{
    One countermeasure is to encrypt messages. Unfortunately it doesn't protect against a traitor who knows the code, like one of the generals. Also in ancient times encryption weren't very advanced and could possibly be broken, see the ◊link[ceasar-cipher]{Ceasar cipher} as an example.
}


◊img[#:src "/images/generals_decisions.png"]{
    One general sends out messengers declaring his intent to attack to the generals next to him, who then sends messengers of their own, and so on until all generals have received the message. However two of the messengers are traitors and change the message from "attack" to "retreat".
}

    In this simple example three of the generals now believe they will attack while two are preparing to retreat. In a more complex scenario they might receive conflicting messages and notice something is amiss, but they don't know what's real and what's not.
}

To relate it back to cryptocurrencies the choice between "attack" and "retreat" is similar to choosing between two transactions in a double spend. You know there are bad actors---like Sneaky Steve---but who can you trust?


◊(define ceasar-cipher "http://practicalcryptography.com/ciphers/caesar-cipher/")
◊(define byzantine-generals "https://www.microsoft.com/en-us/research/publication/byzantine-generals-problem/")


◊subhead{Sybil attack}

You may think most in the network are honest so can't you just ask everyone?

Unfortunately there's a serious problem here. As there is no barrier to participate in the network and no identity control a single person can have multiple identities.

◊img[#:src "/images/sybil-generals.png"]{
    This is what Honest Harry sees. A diverse group of honest individuals.
}
◊img[#:src "/images/sybil-steves.png"]{
    But in reality they're all controlled by Sneaky Steve.
}

This is called a ◊em{Sybil attack}. Think of how one person can use multiple online identities to troll or attack people online, it's hard to know who's real.◊sn{trolls}

◊ndef["trolls"]{
    It's very common for cryptocurrency communites to be flooded with trolls pushing their own agenda.
}


◊subhead{Proof-of-work}

If you've heard about cryptocurrencies then maybe you've also heard about cryptocurrency miners or Bitcoin miners. This is how Bitcoin provides sybil resistance and prevents double spends.

The core idea is: if you want to choose which transaction is valid◊sn{valid} you have to do work. The process is known as ◊em{proof-of-work}, shortened to POW.

The work is to find a solution to a computing problem◊sn{asics}. The problem itself is not that important and it doesn't have any meaning outside of mining.◊sn{useful-pow} There some important properties it should have:

◊ul{
    ◊li{◊strong{Hard enough}

        In Bitcoin one solution is expected every 10 minutes. The difficulty is continuously adjusted to allow miners to join and leave.

        An example is playing a game of Yatzy, where the goal is to cast dice and get them all have the same number, and you change the number of dice in play.
    }
    ◊li{◊strong{Easy to verify}

        While a problem should be hard to solve it must be very easy to verify. It should be easy to verify on mobile phones for example.

        For instance while multiplying two ◊link[primes]{prime numbers} is easy, it can be very difficult to determine which two primes given only the product. This is used to make a type of ◊link[public-key-cryptography]{public-key cryptography} safe.
    }
    ◊li{◊strong{Memoryless}

        It means knowing earlier outcomes to similar problems doesn't give any advantage. Finding a solution is essentially random.

        It's similar to how you're just as likely---or unlikely---to get a ◊link[royal-flush]{Royal Flush} on your first hand as on your 1000th hand. Whatever you got the other 999 hands doesn't matter.
    }
}

Cryptographic hash functions are excellent choices, Bitcoin uses SHA-256 for example. For more details I recommend ◊link[mine-pen-paper]{this post (2014)} which shows how to mine Bitcoin with pen and paper.

A solution is proof that you've done the work---it's proof that you've expended energy. It's like a lottery and you can get lucky, but in the long run it balances out.  Since you require a significant investment to find a block this can be used as sybil resistance. You can't just create thousands of fake identities for free.

Important to note is that everyone doesn't have to be a miner. The blockchain is open for anyone to read and validate, it's only writing that's exclusive to miners.

◊ndef["asics"]{
    In Bitcoin specialized hardware, ◊link[ASICs]{ASICs}, are used which are many magnitudes faster than regular computers at solving POW problems.

    They can only be used for a specific type of POW algorithm and cannot be used to mine on any cryptocurrency.
}

◊ndef["useful-pow"]{
    It's difficult to create a problem that satisfy the POW properties while having a useful side-effect. For example ◊link[protein-folding]{The Protein Folding Problem} is not easy to verify and it's hard to adjust the problem difficulty.

    Additionally if there was a useful side-effect it might alter the economic incentives of mining. If mining is purely done to secure a cryptocurrency then the miners investment rests on the success of the cryptocurrency. A secondary use for specialized mining hardware lessens the incentive to secure the chain.
}

◊(define protein-folding "https://en.wikibooks.org/wiki/Structural_Biochemistry/Proteins/Protein_Folding_Problem")
◊(define ASICs "https://en.wikipedia.org/wiki/Application-specific_integrated_circuit")
◊(define royal-flush "https://www.mathcelebrity.com/5cardbasic.php?hand=AAKQJ&pl=Royal+Flush")
◊(define primes "https://whatis.techtarget.com/definition/prime-number")
◊(define mine-pen-paper "http://www.righto.com/2014/09/mining-bitcoin-with-pencil-and-paper.html")


◊subhead{The blockchain}

When a miner finds a solution she can then update the ledger by adding a block to the blockchain. A block is basically a collection of transactions.

A blockchain is what it sounds like: a chain of blocks where a new block builds on previous blocks. When a miner searches for a solution she must target a block on a specific height---the POW problem includes a reference to the previous block. It only fits at a specific place in the chain.◊sn{specific-height} When a new block is added all miners need to work on a new problem targeting that block.

◊ndef["specific-height"]{
    This is why ◊link["#forks"]{◊em{forks}} naturally happen.

    It's also a necessity to prevent miners from pooling blocks and using them to assemble a very long chain at a later date in an attempt to reverse transactions.
}

◊img[#:src "/images/add_block.png"]{
    The blocks in the blockchain are linked with a key obtained by solving the POW problem.
}

The transactions must follow common rules, called ◊em{consensus rules}, otherwise other miners and users who use the blockchain will discard the block. For example a transaction cannot spend coins from an empty wallet or spend coins without having access to the private key of an address.

In return for adding the block you get to collect the rewards. One for finding a block◊sn{blockreward} and you can also collect transaction fees for the transactions you include in the block.

The blockchain is public and anyone can see all transactions. You can use a ◊link[blockchair]{blockchain explorer} to see for yourself. See for example the full history of ◊link[blockchair-addr]{this random address} or ◊link[blockchair-tx]{this transaction} which contains one input and two outputs.◊sn{outputs}

Cryptocurrencies like Monero also have a public blockchain---see ◊link[xmrchain]{this blockchain explorer}---but they hide transaction amounts, where the coins are coming from and where they're going. Exactly how it works is outside the scope of this book.

The blockchain is duplicated, stored and maintained with many different people, you might think of it as similar to how torrents work. When you send and receive transactions you're really interacting with the blockchain and not with each other directly.◊sn{node-types}

◊img[#:src "images/sending_network.png"]{
    A payment is sent to the network and not directly to the receiver. The transaction then gets forwarded to miners who eventually add it to the blockchain. The receiver then confirms the payment in the blockchain, without trusting the payee.
}



◊ndef["node-types"]{
    There are several differnet ways to interact with the blockchain. For the end user there are three main ways, with different trade-offs:

    1. Run a full node
    2. Use an SPV wallet
    3. Use a light wallet

    A full node stores a complete copy of the blockchain on your computer and verifies all transactions. This is the most trustless way but also the most resource intensive.

    An ◊link[spv-jonald]{SPV wallet} confirms that the proof-of-work is valid and that your transaction is inside the block but it does not validate the transactions. This means it's trusting that the longest chain is always valid---a reasonable assumption---and is much less resource intensive.

    A light wallet interacts with a third party node but does not validate anything itself. The least resource intensive but you also need to trust a third party service.
}

◊ndef["blockreward"]{
    As I'm writing this the current ◊em{block reward} for Bitcoin is 12.5 BTC, about $50,000. With one block expected every 10 min that's about $7,200,000 per day. Bitcoin mining is big business.
}

◊ndef["outputs"]{
    One output is usually a ◊em{change output} where you send change back to one of your own addresses.
}

◊(define spv-jonald "https://medium.com/@jonaldfyookball/why-every-bitcoin-user-should-understand-spv-security-520d1d45e0b9")
◊(define blockchair "https://blockchair.com/")
◊(define blockchair-tx "https://blockchair.com/bitcoin/transaction/0c4c723ea0b78722a79c3e34fb714b92e5aac355041f490cd56937c14458d44f")
◊(define blockchair-addr "https://blockchair.com/bitcoin/address/33esJQRYoc5V98bGxJi3sAQxQj3iAAVXSx")
◊(define xmrchain "https://xmrchain.net/")


◊subhead{Forks}

But what happens if two miners find a block at the same height? For example one where Sneaky Steve sends money to Honest Harry and one where Sneaky Steve sends money to himself?

◊img[#:src "/images/double_spend_fork.png"]{
    Two blocks at the same height with different transactions.
}

The chain will split and there will be a ◊em{fork}.◊sn{code-fork} Each miner will independently choose which one they will build on and one will eventually become longer:

◊ndef["code-fork"]{
    Forking a cryptocurrency is different from forking the code, although both are common.
}

◊img[#:src "/images/double_spend_fork_long.png"]{
    Here there are two chains after a fork, one of height two and one of height four.
}

The longer chain is to be considered "the correct" chain and the shorter chain will be abandoned.◊sn{orphan} Coming to consensus by following the longest chain is often referred to as ◊em{Nakamoto consensus}.

Because rewards on each chain can only be used on that particular chain any rewards on the abandoned chain will be effectively worthless. Therefore the miners are heavily incentivized to work on the longest chain and so the shorter chain will get abandoned quickly.

◊ndef["orphan"]{
    When a shorter chain gets abandoned we say it gets ◊em{orphaned}. It is a natural consequence of the system but high orphan rates are problematic because they hurt smaller miners more than larger miners.
}

In the example Honest Harry should wait until he knows which chain is longer and then decide from there.


◊subhead{Reversing transactions}

If Sneaky Steve can't trick Honest Harry by showing him a fake transaction he can try to reverse his payment after receiving goods from Honest Harry.◊sn{chargeback}

It works like this:

◊ol{
    ◊li{Make a transaction to Honest Harry which is confirmed on the blockchain.}
    ◊li{Create a longer hidden chain where Sneaky Steve instead keeps the money.}
    ◊li{After receiving the goods Sneaky Steve publishes the second chain.

        Because people automatically follow the longer chain this effectively reverses the transaction to Honest Harry and Sneaky Steve has successfully commited fraud.
    }
}

◊img[#:src "/images/reversal1.png"]{
    Sneaky Steve pays Honest Harry and they wait until the transaction has two confirmations.
}
◊img[#:src "/images/reversal3.png"]{
    Satisfied, Honest Harry gives Sneaky Steve a new pair of beautiful jeans.
}
◊img[#:src "/images/reversal4.png"]{
    Sneaky Steve walks away with his jeans, all while secretly working on his own chain.
}
◊img[#:src "/images/reversal2.png"]{
    After Sneaky Steve has walked away he releases his hidden chain of length four, which ◊strong{doesn't contain his payment to Honest Harry}.  Since the new chain is longer the old chain will get discarded and the payment to Honest Harry will also disappear. It will seem like the payment never happened.
}

This is a different type of double spend and it's the primary attack vector ◊link[wp]{the white paper} is concerned about. It's called a ◊link[51-attack]{51% attack}, for reasons we'll soon explain.

◊ndef["chargeback"]{
    In the credit card world this type of fraud is called ◊link[chargeback-fraud]{chargeback fraud} or friendly fraud.
}


◊(define 51-attack "https://www.investopedia.com/terms/1/51-attack.asp")


◊subhead{Transaction security}

The deeper a transaction is in the blockchain---the more confirmations it has---the harder a transaction is to reverse.

◊img[#:src "/images/confirmations.png"]{
    Confirmations for different blocks. ◊br{}Each block added to the blockchain makes every earlier block---and transaction---more secure.
}

Bitcoin's security isn't absolute but probabilistic. One way to think about it is to find one block you need to get lucky. To find more blocks you need to get lucky several times, which you have to do if you want to reverse a transaction with more confirmations.

◊link[wp]{Bitcoin's white paper} goes into more details and recommends 6 confirmations---roughly one hour---to be sure you don't get defrauded. Today for most normal payments a single confirmation is enough.◊sn{0-conf}

A crucial mistake people make is to think more miners, or more energy used, means more transactions can be handled. This is not true. Miners ◊strong{only} care about securing the chain and to prevent your transactions from being reversed.

In fact we could spend 100x more energy on mining and process the same amount of transactions or we could spend 1% of the energy and process more transactions. Transaction throughput is a separate problem.◊sn{more-energy}

◊ndef["0-conf"]{
    You can actually even accept transactions without any confirmation, called ◊em{0-conf}. They are much less secure than a confirmed transaction but since most miners respect the first seen rule it's fairly safe for small purchases.

    There are investigations on how to make 0-conf more secure. One of the more interesting proposals is ◊link[z-forfeits]{0-conf forfeits} where you provide a larger sum as hostage and if you try to double spend you lose them.
}

◊ndef["more-energy"]{
    There is some correlation here. Because each transaction contains a fee the miner can claim, more transactions means the reward is bigger which supports more miners. But the reverse is not true, more energy does not mean higher transaction throughput.
}

◊(define z-forfeits "https://gist.github.com/awemany/619a5722d129dec25abf5de211d971bd")


◊subhead{The 50% security assumption}

The whole system relies on a majority of miners being honest---it's the core security assumption behind proof-of-work.

Honest miners work for profit so they absolutely don’t want to risk their block being rejected by the other miners and lose their reward. Therefore the rational thing to do is to work on the longest chain.

This means for Sneaky Steve to successfully reverse a transaction he needs to control more than half of all mining power---otherwise his hidden chain can never become the longest.  It's called a 51% attack because you need to control at least 51% of all mining power to pull it off consistently.◊sn{51-attack-btg}

◊ndef["51-attack-btg"]{
    Bitcoin Gold ◊link[51-btg]{was successfully 51% attacked} and exchanges were double spent. The attacker managed to reverse transactions 22 blocks deep.

    This is the danger for smaller cryptocurrencies who don't have much mining power securing the chain. 51% attacking Bitcoin would be ◊strong{much} harder.
}

◊(define 51-btg "https://forum.bitcoingold.org/t/double-spend-attacks-on-exchanges/1362")

This touches on the immutability of the blockchain. As long as more than 50% of miners don't want to change the chain it will always be longest and correct. But if they do then they can reverse transactions.


◊subhead{Economics of a 51% attack}

How secure is Bitcoin, really? What do we need to pull off a 51% attack?

Here's some quick napkin math to estimate the cost to achieve 51% of mining power:

◊; Couldn't really be bothered to update the existing string to table to support x-expressions...
◊table-body{
    ◊tr{◊td{◊link[btc-hashrate]{Total Bitcoin hash rate}}   ◊td{44,078,986 TH/s}}
    ◊tr{◊td{◊link[s9-hashrate]{Antminer S9i hash rate}}     ◊td{14 TH/s (+-5%)}}
    ◊tr{◊td{◊link[s9-cost]{Antminer S9i cost}}              ◊td{$400}}

Core destruction program TRX:
* Suspended Crunch (first knees to chest then pike)
Pendulum (first regular, then knees to elbows)
Standing body crunch ?
Standing oblique twist ?
Oblique Suspended crunch ?
Suspended alternating crunch ?
Suspended plan
Good for back:
* Low ro
Extra:
Hamstring runner
Biceps/triceps
    ◊tr{◊td{Number of S9i to cover the whole network}       ◊td{3,148,499}}
    ◊tr{◊td{Total network miner cost}                       ◊td{$1,259,399,600}}
}

So about $650 million for just the miners themselves (assuming you could purchase that many). On top of that we need power supply, cooling, storage and maintenance for more than a million miners. We're looking at a massive warehouse, or several. Suffice to say it's a very large investment, but maybe not impossible to get.

If we manage to get enough miners it should allow us to double-spend and defraud exchanges and merchants. It almost sounds like we can get free money, but it's not that simple.

A 51% can be detected and there can be severe negative consequences:

◊ul{
    ◊li{The Bitcoin price might crash.}
    ◊li{Exchanges might blacklist the stolen funds.}
    ◊li{The community might change POW and make all mining rigs worthless.◊sn{monero-POW}}
    ◊li{It's hard to keep warehouses full of mining rigs of that scale a secret, there's a big risk to get caught.}
}

Bitcoin miners are rewarded in bitcoin and they also can't be spent until after 100 blocks---roughly 16 hours. Executing a 51% attack that crashes the price would directly affect the rewards. If the community goes for the nuclear option and change POW then the massive initial investment into mining equipment might be lost.

These risks needs to weighed against what profits a 51% attack could generate. Maybe exchanges could get defrauded for $50 million? A 51% miner would make that back in about two weeks---risk free.◊sn{btg2}

The economic incentives are so strong that it might be rational even for a 51% for-profit miner to be honest. In fact Bitcoin has ◊link[ghash]{had pools with 51% before} without incidents.

The biggest security risk for Bitcoin might instead be actors of state levels who wants to destroy it no matter the costs. For example if the United States would spend billions on a "War on Bitcoin".


◊subhead{An economic innovation}

While cryptocurrencies combine several different technologies in an interesting way the real innovation is how they're secured by economic incentives---the most profitable way for miners is to follow the network rules.

As noted earlier the current block reward for Bitcoin is 12.5 BTC---about $50,000. Losing out on just one block reward is a big loss in the cutthroat mining business, so miners are heavily incentivized to always work on the longest chain.

For example in a fork with two competing chains the most profitable move is to jump to the longest chain as quickly as possible. This ensures a double-spend gets resolved quickly.

It also doesn't make sense for a minority miner to try to double-spend, it will only cause them to lose money in the long run. Therefore only a miner with 51% can compromise the network security, and even then it might be more profitable to play by the rules.


◊ndef["btg2"]{
    The case is a little different for cryptocurrencies that share POW algorithm with others. The miners could attack the minority chain and jump back to the majority chain after executing the attack.
}

◊(define ghash "https://www.coindesk.com/bitcoin-mining-detente-ghash-io-51-issue")


◊ndef["monero-POW"]{
    As an example Monero has changed POW several times bricking existing ASICs. The expensive mining rigs are now practically worthless.
}

◊(define btc-hashrate "https://www.blockchain.com/charts/hash-rate")
◊(define s9-hashrate "https://shop.bitmain.com/promote/antminer_s9i_asic_bitcoin_miner/specification")
◊(define s9-cost "https://www.cryptocompare.com/mining/blokforge/antminer-s9i-14-ths/")



◊subhead{Network upgrades and new cryptocurrencies}

There is another situation where forks can arise: when consensus rules are changed. Here are some examples of consensus changes:

◊ul{
    ◊li{Removing the 21 million supply cap in Bitcoin.}
    ◊li{Blacklisting or stealing coins from an address.}
    ◊li{Allowing a new transaction type.}
    ◊li{Tweaking the POW algorithm.}
    ◊li{Raising the 1 MB blocksize limit in Bitcoin.}
}

Some cryptocurrencies, for example Monero and Bitcoin Cash, have regular network upgrades where consensus rules are changed.◊sn{hard-soft}

◊ndef["hard-soft"]{
    I have deliberatly simplified my usage of fork terminology. On a technical level it's useful to distinguish between two types of forks: ◊em{hard-forks} and ◊em{soft-forks}.

    A hard-fork is a backwards incompatible change and all nodes must upgrade to avoid ending up on the old chain. Bitcoin Cash forked off from Bitcoin using a hard-fork for example.

    A soft-fork instead doesn't break older node implementations. They will simply ignore the new soft-fork rules---they will not fully validate the chain anymore but they will follow it. The rules are instead enforced by the miners who must upgrade. SegWit in Bitcoin was for example implemented using a soft-fork.
}

Because a network upgrade is a fork there will be two chains (as long as someone mines them). Sometimes the minority chain lives on as a new cryptocurrency, Ethereum Classic is for example the continuation of the old chain ◊link[dao]{after an Ethereum fork}.

Other times the fork is initiated by people who want to create a new cryptocurrency from another one, but the mechanism is exactly the same. This means you can fork Bitcoin at any point if you want, the tricky part is getting other people to join you.

You may then wonder---what decides which is the correct one? There is no clear answer, social consensus decide which of the chains is called "Original Coin" and which is called "New Coin".


◊(define dao "https://fullstacks.org/materials/ethereumbook/16_appdx-forks-history.html")
◊(define nb 'nbsp)

◊ndef["valid"]{
    Remember that to resolve double spending one transaction must be chosen, which one doesn't matter.
}


◊subhead{Alternative consensus models}

There are alternatives to proof-of-work but none have so far been proven to work well. The most popular is ◊em{proof-of-stake} where instead of miners expending energy you have coin holders who vote.

One problem is the ◊link[nothing-at-stake]{nothing at stake problem} where a coin holder can vote on all forks where a proof-of-work miner can only vote on one of the forks.

It causes a situation where everyone are incentivized to vote on all forks. An attacker can abuse it to reverse a transaction by only mining on their fork, which is initially a block behind, to overtake the main chain and reverse their transaction. This only requires a small percentage of total voting power in contrast to proof-of-work where you need 50%.

◊(define nothing-at-stake "https://ethereum.stackexchange.com/questions/2402/what-exactly-is-the-nothing-at-stake-problem")


◊subhead{More details}

The chapter became very long despite skipping out on details here and there. If you want to go deeper I encourage you to do more research on your own.

◊link[wp]{Bitcoin's white paper} is always a good place to begin and there are many good resources online. I've tried to include key concepts which you can use as starting points in your search.


◊subhead{Summary}

◊ol{
    ◊li{The blockchain is like a ledger which stores balances}
    ◊li{The crucial problem is deciding between double spends (using a coin twice)}
    ◊li{Proof-of-work makes miners expend energy and compete for rewards}
    ◊li{Miners are used to resolve double spends}
    ◊li{The security assumption is that most miners work for profit}
}


◊ndef["stores-transactions"]{
    It's a slight simplification to say the blockchain stores balances.  It actually stores all transactions from which you can calculate all balances.

    To lighten the load you can run your software in a pruned mode which discards the transactions after validation and only keeps the balances.
}

◊(define chargeback-fraud "https://en.wikipedia.org/wiki/Chargeback_fraud")
◊(define public-key-cryptography "https://en.wikipedia.org/wiki/Public-key_cryptography")
◊(define next-chapter "/look_out_for_snake_oil.html")
◊(define byzantine "https://en.wikipedia.org/wiki/Byzantine_fault_tolerance")

◊; Table format
◊(define (tf . args)
    (sans-tnum (apply nbsp args)))

