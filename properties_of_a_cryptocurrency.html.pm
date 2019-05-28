#lang pollen

◊(define-meta title "Properties of a cryptocurrency")
◊(define-meta subtitle "Trustless and permissionless")
◊(define-meta updated "2019-04-03T20:03:32+0200")
◊(define-meta uuid "176f3433-baba-49d6-ab43-9c08061f0682")

◊epigraph{
  ◊qt[#:author "Satoshi Nakamoto"
      #:src "A Peer-to-Peer Electronic Cash System"
      #:url "/files/bitcoin.pdf"
      #:quote-src #t]{
     What is needed is an electronic payment system based on cryptographic proof instead of trust, allowing any two willing parties to transact directly with each other without the need for a trusted third party.
  }
}

These are the most important inherent properties of cryptocurrencies as I see it:

◊ul{
    ◊li{No trusted third party}
    ◊li{Avoid fake coins}
    ◊li{Irreversible}
    ◊li{Predetermined emission rate}
    ◊li{Anonymous}
    ◊li{Large and small amounts behave the same}
    ◊li{Borderless}
}

They highlight the difference between cryptocurrencies and other payment systems and ultimately they're what makes cryptocurrencies useful.



◊subhead{No trusted third party}

The important difference between a cryptocurrency and digital payments we have today is the removal of a third party. Payments are ◊em{peer-to-peer} just as if you gave someone a dollar bill or a gold coin.◊sn{p2p}

◊ndef["p2p"]{
    Technically you don't interact with each other directly but with a distributed ledger. You trust the system as a whole, not one particular entity.

    ◊raw-img[#:src "images/sending_network.png"]{}
}

Sending money to people via your bank is not peer-to-peer as you rely on your bank to send it for you. VISA, PayPal, Swish, Apple Pay and other digital payments have the same problem, all except cryptocurrencies.

◊img[#:src "images/give_cash.png"]{
    Cash is given directly from hand to hand.
}
◊img[#:src "images/send_bank.png"]{
    Regular digital payments are sent through a bank or different payment processors.
}
◊img[#:src "images/send_crypto.png"]{
    Cryptocurrencies are sent directly from device to device.
}

Transfers are therefore ◊em{trustless}◊sn{pundits} and ◊em{permissionless}.

◊ndef["pundits"]{
    Some will be quick to point out that transfers aren't trustless. You need to trust your wallet, the OS, the hardware etc. Which is true. The context here is not having to trust a third party to handle transfers for you, not eliminating trust of all kinds---which is impossible.
}

Trustless means you don't have to rely on a third party to make or confirm the transfer for you and permissionless means you don't have to worry about your transactions being blocked. Nobody can freeze your account or prevent you from opening one. Cryptocurrencies are ◊em{uncensorable}.

You also don't have to trust a third party to hold your money like you do when you have money in a bank.◊sn{in-banks} What you really have is an IOU from the bank where they promise to give you your money when you ask for it. With cryptocurrencies you can write down the keys to your wallet and you alone have access to it.◊sn{keys}

◊ndef["in-banks"]{
    You can let a third party hold them if you want and it's probably a good choice for many.
}


◊subhead{Avoid fake coins}

Problems with counterfeit coins and bills go far back. From biting coins to test their hardness to today's advanced techniques, counterfeit prevention has always been an important feature for cash.

With cryptocurrencies anyone can independently verify the integrity of the coins you send and receive. Details on how is in the ◊link[next-chapter]{next chapter} but I assure you no biting is needed.

You cannot counterfeit coins and you cannot send the same coin to multiple people ◊em{(double-spend)}. This is what allows cryptocurrencies to operate without a trusted third party.

◊img[#:src "/images/double-spend.png"]{
    A double spending occurs when someone sends the same coin both to a merchant and back to himself.
}


◊subhead{Irreversible}

Just like cash cryptocurrency transfers are irreversible.◊sn{DAO}

This means if you've sent someone coins you can only get them back if they agree to give them back. It prevents credit card charge back fraud but it makes theft worse.

Transactions might also hold extra data so you can treat it as an effectively immutable data storage. It's very inefficient but could still be useful. The Bitcoin white paper is for example stored ◊link[wp-blockchain]{on the Bitcoin blockchain}.

◊ndef["DAO"]{
    It is possible to reverse transfers... If everyone agrees.

    Ethereum famously altered their rules in ◊link[dao]{the DAO hard fork}. Many agreed but not everyone, so Ethereum split into two coins where Ethereum Classic kept the old rules.
}


◊subhead{Predetermined emission rate}

As there is no trusted third party there isn't a single entity who controls the creation of new money and the inflation.  Instead new coins are minted following predetermined rules.◊sn{miners}

◊ndef["miners"]{
    The new coins are rewards for miners who secure the network, but more on that in the ◊link[next-chapter]{next chapter}.
}



◊img[#:src "/images/emission-rates.svg"]{
    Bitcoin has a hard limit of 21 million bitcoins while in Monero new coins will always be created.◊sn{bitcoin-supply}
}

If deflation in a currency is good or bad depends on who you ask. Keynesian economists ◊link[inflation-good]{argues inflation is good} while the Austrian school ◊link[inflation-bad]{argues inflation is bad}.◊sn{austrian-podcast}

I sure don't know who's right. It's probably best to be skeptical of both camps---economics operate in an extremely complex and irregular environment. Economic theories are difficult, or impossible, to verify.

◊(define inflation-good "http://inflationmatters.com/keynesian-inflation-theory/")
◊(define inflation-bad "https://austrianeconomics.fandom.com/wiki/Inflation")

◊qt[#:author "Daniel Kahneman" #:src "Thinking, Fast and Slow"]{
    acquisition of skills requires a regular environment, an adequate opportunity to practice, and rapid and unequivocal feedback about the correctness of thoughts and actions. ◊mn{tfas}
}

Either way it's not an argument against cryptocurrencies in general as they can be made either inflationary or deflationary.

◊ndef["tfas"]{
    The book "Thinking, Fast and Slow" is fantastically thought provoking.
}

◊ndef["bitcoin-supply"]{
     The emission rate in Bitcoin approximates the rate gold is mined. In Monero the tail emission is there to replace lost coins and to make sure rewards for miners don't run out.
}

◊ndef["austrian-podcast"]{
    If you're curious about Austrian Economics, which most cryptocurrencies follow, I can recommend ◊link[aus-link]{this podcast episode}. It's not something you hear about often but it presents an interesting viewpoint and shouldn't be dismissed.
}

◊(define aus-link "https://podcast.bitcoin.com/e799-Austrian-Economics-for-Bitcoiners-with-Jeffrey-Tucker-part-1")


◊subhead{Anonymous}

Bitcoin uses a public ledger where all transactions are public, so it isn't anonymous. It's pseudo-anonymous---while you can see transactions and addresses you don't know who owns an address. But you know someones address and can then trace all past and future transactions moving through that address. You can use a ◊link[blockchair]{blockchain explorer} to see for yourself.

There are cryptocurrencies that tries to hide all transactions.◊sn{monero} On them you cannot trace transactions on the blockchain and it makes blacklisting addresses impossible.

Since these projects exists I will call cryptocurrencies anonymous, just keep in mind not all are.

◊ndef["monero"]{
    Monero is perhaps the most well known cryptocurrency that hides transactions' details by default.

    There are others where you can opt-in to hide some transactions but otherwise they can be traced. This also exists as a service on top of Bitcoin, see for example ◊link[coinjoin]{CoinJoin}.
}




◊subhead{Large and small amounts behave the same}

In contrast to cash or gold where large amounts can be very cumbersome to handle there is no difference between large or small transfers in a cryptocurrency. Transaction costs are the same for small transfers as for large transfers and they are just as secure. Wallets can store as much as you're comfortable with.

It's also easy to split coins into small parts.◊sn{satoshis} In fact you don't have to think about dividing at all---you use a wallet just like a credit card---a transfer is always exact.

◊ndef["satoshis"]{
    For example one bitcoin can be divided into one million parts---called satoshis. But there is no real technical limit, only a usability concern.
}


◊subhead{Borderless}

Cryptocurrencies are inherently global. They are usable wherever you are as long as you have an internet connection. You can even send to wallets which are offline◊sn{cold-storage} but to retrieve them you need to access the internet.

Technically you could do transfers completely offline---on paper---but they would be unconfirmed and might not be valid when you do want to use them.

◊ndef["cold-storage"]{
    Offline wallets with no computer contact is called cold storage. It's an excellent way to store large amounts you're not planning to use for some time.
}


◊(define coinjoin "https://en.bitcoin.it/wiki/CoinJoin")
◊(define next-chapter "/how_do_cryptocurrencies_work.html")

◊ndef["keys"]{
    But please make sure to encrypt your ◊em{seed} (a human-readable representation of your keys) otherwise a thief can easily steal your coins if he finds it.
}

◊(define blockchair "https://blockchair.com/")
◊(define dao "https://fullstacks.org/materials/ethereumbook/16_appdx-forks-history.html")

