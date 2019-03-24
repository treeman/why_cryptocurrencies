#lang pollen

◊(define-meta title "Properties of a cryptocurrency")
◊(define-meta subtitle "Trustless and permissionless")

◊epigraph{
  ◊qt[#:author "Satoshi Nakamoto" #:src "A Peer-to-Peer Electronic Cash System" #:url "/files/bitcoin.pdf"]{
     What is needed is an electronic payment system based on cryptographic proof instead of trust, allowing any two willing parties to transact directly with each other without the need for a trusted third party.
  }
}

These are the most important inherent properties of cryptocurrencies as I see it. They highlight the difference between cryptocurrencies other payment systems and from them we can derive usefulness.


◊subhead{No trusted third party}

The important difference between a cryptocurrency and digital payments we have today is the removal of a third party. Payments are peer-to-peer just as if you gave someone a dollar bill or a gold coin.◊sn{p2p}

◊ndef["p2p"]{
    Technically you don't interact with each other directly but with a distributed ledger. You trust the system as a whole, not one particular entity.
}

Sending money to people via your bank is not peer-to-peer as you rely on your bank to send it for you. VISA, PayPal, Swish, Apple Pay and other digital payments have the same problem, all except cryptocurrencies.

◊img[#:src "krita/give_coin.png"]{}

◊todo{IMG giving coins}
◊todo{IMG sending via VISA}
◊todo{IMG paying via crypto}

Transfers are therefore ◊em{trustless}◊sn{pundits} and ◊em{permissionless}.

◊ndef["pundits"]{
    Some will be quick to point out that transfers aren't trustless. You need to trust your wallet, the OS, the hardware etc. Which is true. The context here is not having to trust a third party to handle transfers for you, not eliminating trust of all kinds---which is impossible.
}

Trustless means you don't have to rely on a third party to make or confirm the transfer for you and permissionless means you don't have to worry about your transactions being blocked. Nobody can freeze your account or prevent you from opening one.

You also don't have to trust a third party to hold your money like you do when you have money in a bank.◊sn{in-banks} What you really have is an IOU from the bank where they promise to give you your money when you ask for it. With cryptocurrencies you can write down the keys to your wallet and you alone have access to it.◊sn{keys}

◊ndef["in-banks"]{
    You can let a third party hold them if you want and it's probably a good choice for many.
}


◊subhead{Avoid fake coins}

Problems with counter-fit coins and bills go far back. From biting coins to test their hardness to today's advanced techniques, counterfeit prevention has always been an important feature for cash.

With cryptocurrencies anyone can independently verify the integrity of the coins you send and receive. Details on how is in the ◊link[next-chapter]{next chapter} but I assure you no biting is needed.

You cannot counter-fit coins and you cannot send the same coin to multiple people (double-spend). This is what allows cryptocurrencies to operate without a trusted third party.


◊subhead{Irreversible}

Just like cash cryptocurrency transfers are irreversible.◊sn{DAO}

This means if you've sent someone coins you can only get them back if they agree to give them back. It prevents credit card chargeback fraud but it makes theft worse.

Transactions might also hold extra data so you can treat it as an effectively immutable data storage. It's very inefficient but could still be useful. The Bitcoin whitepaper is for example stored ◊link[wp-blockchain]{on the Bitcoin blockchain}.

◊ndef["DAO"]{
    It is possible to revert transfers... If everyone agrees.

    Ethereum famously altereted their rules in the DAO hard fork. Many agreed but not everyone, so Ethereum split into two coins where Ethereum Classic kept the old rules.
}


◊subhead{Predetermined emission rate}

As there is no trusted third party there isn't a single entity who controls the creation of new money and the inflation.  Instead new coins are minted following predetermined rules.◊sn{miners}

◊ndef["miners"]{
    The new coins are rewards for miners who secure the network, but more on that in the ◊link[next-chapter]{next chapter}.
}

Most cryptocurrencies are deflationary with an absolute limit on the supply, but it's not a requirement.

◊img[#:src "/images/emission-rates.svg"]{
    Bitcoin has a hard limit of 21 million bitcoins while in Monero new coins will always be created.◊sn{bitcoin-supply}
}

If deflation in a currency is good or bad depends on who you ask. Keynesian economists argues it's bad while the Austrian school argues it's good. But you should also be sceptical of both camps---economics is highly complex and theories are difficult, or impossible, to verify. To quote a nobel price winner in economy:

◊qt[#:author "Daniel Kahneman" #:src "Thinking, Fast and Slow"]{
    acquisition of skills requires a regular environment, an adequate opportunity to practice, and rapid and unequivocal feedback about the correctness of thoughts and actions.
}

Either way it's not an argument against cryptocurrencies in general as they can be either inflationary or deflationary.  Most cryptocurrencies choose to avoid an exponential increase in supply.

◊ndef["bitcoin-supply"]{
     The emission rate in Bitcoin was chosen to approximate the rate gold is mined. In Monero the tail emission is there to replace lost coins and to make sure rewards for miners don't run out.
}


◊subhead{Amounts don't matter}

In contrast to cash or gold where large amounts can be very cumbersome to handle there is no difference between large or small transfers in a cryptocurrency. Transaction costs are the same for small transfers as for large transfers and they are just as secure. Wallets can store as much as you're comfortable with.

It's also easy to split coins into small parts.◊sn{satoshis} In fact you don't have to think about dividing at all---you use a wallet just like a credit card---a transfer is always exact.


◊subhead{Borderless}

Cryptocurrencies are inherently global. They are useable wherever you are as long as you have an internet connection. You can even send to wallets which are offline◊sn{cold-storage} but to retrieve them you need to access the internet.

Technically you could do transfers completely offline---on paper---but they would be unconfirmed and might not be valid when you do want to use them.

◊ndef["cold-storage"]{
    Referred to as cold storage.
}


◊ndef["satoshis"]{
    For example one bitcoin can be divided into one million parts---called satoshis. But there is no real technical limit, only a usability concern.
}


◊(define next-chapter "/how_does_cryptocurrencies_work.html")

◊ndef["keys"]{
    But please make sure to encrypt your seed otherwise a thief can easily steal your coins if he finds it.
}
