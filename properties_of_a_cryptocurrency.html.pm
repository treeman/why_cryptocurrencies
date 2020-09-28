#lang pollen

◊(define-meta title "Properties of a cryptocurrency")
◊(define-meta subtitle "Trustless and permissionless")
◊(define-meta published "2019-04-24T20:08:34+01:00")
◊(define-meta updated "2020-01-21T08:28:57+01:00")
◊(define-meta uuid "176f3433-baba-49d6-ab43-9c08061f0682")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Satoshi Nakamoto"
      #:src "Bitcoin: A Peer-to-Peer Electronic Cash System"
      #:url bitcoin-pdf
      #:quote-src #t]{
     What is needed is an electronic payment system based on cryptographic proof instead of trust, allowing any two willing parties to transact directly with each other without the need for a trusted third party.
  }
}

These are the most important properties of cryptocurrencies as I see it:

◊ul{
    ◊li{No more third parties}
    ◊li{No counterfeiting}
    ◊li{Irreversible transactions}
    ◊li{Predetermined emission rate}
    ◊li{Private}
    ◊li{Large and small amounts behave the same}
    ◊li{Borderless}
}



They highlight the difference between cryptocurrencies and other payment systems and ultimately they're what makes cryptocurrencies useful.


◊subhead{No more third parties}

The important difference between a cryptocurrency and digital payments we have today is the removal of a third party. Payments are ◊em{peer-to-peer} just as if you gave someone a dollar bill or a gold coin.◊mn{p2p}

Sending money to people via your bank isn't peer-to-peer as you rely on your bank to send it for you. VISA, PayPal, Swish, Apple Pay and other digital payments have the same problem, all except cryptocurrencies.

◊img[#:src "images/give_cash.png" #:alt "Cash is given directly from hand to hand."]{
    Cash is given directly from hand to hand.
}
◊img[#:src "images/send_bank.png" #:alt "Regular digital payments are sent through a bank or different payment processors."]{
    Regular digital payments are sent through a bank or different payment processors.
}
◊img[#:src "images/send_crypto.png" #:alt "Cryptocurrencies are sent directly from device to device."]{
    Cryptocurrencies are sent directly from device to device.
}

Transfers are therefore ◊em{trustless}◊mn{pundits} and ◊em{permissionless}.

Trustless means you don't have to rely on a third party to make or confirm the transfer for you and permissionless means you don't have to worry about your transactions being blocked. Nobody can ◊link[freezing_of_merchant_accounts]{freeze your account} or ◊link[undesirable_businesses]{prevent you from opening one}. Cryptocurrencies are ◊em{uncensorable}.

◊note-pos[#:top -11]{pundits}

You also don't have to trust a third party to hold your money like you do when you have money in a bank.◊sn{in-banks} What you really have is an IOU from the bank where they promise to give you your money when you ask for it. With cryptocurrencies you can write down the keys to your wallet and you alone have access to it.◊sn{keys}

◊note-pos[#:top -6]{in-banks}
◊note-pos{keys}

◊ndef["p2p"]{
    Technically you don't interact with each other directly but with a distributed ledger. You trust the system as a whole, not one particular entity.

    ◊raw-img[#:src "images/sending_network.png" #:alt "Cryptocurrencies are really sent to a distributed ledger, and applications interact with it."]{}
}

◊ndef["pundits"]{
    Some will be quick to point out that transfers aren't trustless. You need to trust your wallet, the OS, the hardware etc. Which is true. The context here is not having to trust a third party to handle transfers for you, not eliminating trust of all kinds---which is impossible.
}

◊ndef["in-banks"]{
    You can let a third party hold them if you want and it's probably a good choice for many.
}

◊ndef["keys"]{
    But please make sure to encrypt your ◊em{seed} (a human-readable representation of your keys) otherwise a thief can easily steal your coins if he finds it.
}


◊subhead{No counterfeiting}

Problems with counterfeit coins and bills go far back. From biting coins to test their hardness to today's advanced techniques, counterfeit prevention has always been an important feature for cash.

With cryptocurrencies anyone can independently verify the integrity of the coins you send and receive. Details on how is in the ◊link[next-chapter]{next chapter} but I assure you no biting is needed. You cannot counterfeit coins and you cannot send the same coin to multiple people ◊em{(double-spend)}. This is what allows cryptocurrencies to operate without a trusted third party.

◊img[#:src "/images/double-spend.png" #:alt "Double spending by sending a coin to someone and back to himself."]{
    A double spending occurs when someone sends the same coin both to a merchant and back to himself.
}


◊subhead{Irreversible transactions}

Just like with cash cryptocurrency transfers are irreversible.◊mn[#:top -6]{DAO} This means if you've sent someone coins you can only get them back if they agree to give them back. It prevents ◊def[charge-back-fraud]{charge back fraud} but it makes theft worse.

◊;Transactions might also hold extra data so you can treat it as an effectively immutable data storage. It's very inefficient but could still be useful. The Bitcoin white paper is for example stored ◊link[wp-blockchain]{on the Bitcoin blockchain}.

◊ndef["DAO"]{
    It's possible to reverse transfers... If everyone agrees.  Ethereum famously altered their rules in ◊link[dao]{the DAO hard fork}. Many agreed but not everyone, so Ethereum split into two coins where Ethereum Classic kept the old rules.
}


◊subhead{Predetermined emission rate}

As there's no trusted third party there's no single entity who controls the creation of new money and the inflation.  Instead new coins are minted following predetermined rules.◊mn{miners}

◊ndef["miners"]{
    The new coins are rewards for miners who secure the network, but more on that in the ◊link[next-chapter]{next chapter}.
}

◊img[#:src "/images/emission-rates.svg" #:link #t #:alt "Bitcoin's and Monero's emission schedule."]{
    Bitcoin has a hard limit of 21 million bitcoins while in Monero new coins will always be created.◊mn{bitcoin-supply}
}

◊note-pos{bitcoin-supply}

If inflation is good or bad depends on who you ask. Keynesian economists ◊link[inflation-good]{argues inflation is good} while the Austrian school ◊link[inflation-bad]{argues inflation is bad}.◊mn{austrian-podcast}

I sure don't know who's right. It's probably best to be skeptical of both camps---economics operate in an extremely complex and irregular environment. Economic theories are difficult, or impossible, to verify.


◊book-qt[thinking-fast-and-slow-book]{
    acquisition of skills requires a regular environment, an adequate opportunity to practice, and rapid and unequivocal feedback about the correctness of thoughts and actions. ◊mn{tfas}
}

Either way it's not an argument against cryptocurrencies in general as they can be made either inflationary or deflationary (although all I know of becomes deflationary).

◊ndef["tfas"]{
    The book ◊(book-link thinking-fast-and-slow-book) is fantastically thought provoking.
}

◊ndef["bitcoin-supply"]{
     The emission rate in Bitcoin approximates the rate gold is mined. In Monero the tail emission is there to replace lost coins and to make sure rewards for miners don't run out.
}

◊ndef["austrian-podcast"]{
    If you're curious about Austrian Economics, which most cryptocurrencies follow, I can recommend ◊link[aus-link]{this podcast episode}. It's not something you hear about often but it presents an interesting viewpoint and shouldn't be dismissed.
}


◊subhead{Private}

Commonly used payment systems, like credit cards for example, asks you to give up your privacy as all payments are recorded and they require you to tie your identity to them. But cryptocurrencies can be used privately---there's no need to disclose your identity or your transaction history---making them similar to cash in this respect.◊mn{bitcoin-privacy}


◊ndef["bitcoin-privacy"]{
    Bitcoin, like most cryptocurrencies, do record all transactions in a public ledger. So it's a little misleading to say that cryptocurrencies are inherently private, but some cryptocurrencies like ◊link[Monero]{Monero} tries to ◊link[privacy-challenge]{solve this problem}.
}


◊subhead{Large and small amounts behave the same}

In contrast to cash or gold where large amounts can be cumbersome to handle there's no difference between large or small transfers in a cryptocurrency. Transaction costs are the same for small transfers as for large transfers and they are just as secure and wallets can store as much as you're comfortable with.

It's also easy to split coins into small parts.◊mn[#:top -4]{satoshis} In fact you don't have to think about dividing at all, you use a wallet just like a credit card---a transfer is always exact.

◊ndef["satoshis"]{
    For example one bitcoin can be divided into one hundred million parts---called satoshis. But there's no real technical limit, only a usability concern.
}


◊subhead{Borderless}

Cryptocurrencies are inherently global. They're usable wherever you are as long as you have an internet connection. You can even send to wallets which are offline◊mn[#:top -8]{cold-storage} but to retrieve them you need to access the internet. Technically you could do transfers completely offline---on paper---but they would be unconfirmed and might not be valid when you do want to use them.

◊ndef["cold-storage"]{
    An offline wallet with no computer contact like a ◊def{paper wallet} is called ◊def{cold storage}. It's an excellent way to store large amounts you're not planning to use for some time.
}

◊(define inflation-good
  (x-ref
    "2019-04-24"
    "http://inflationmatters.com/keynesian-inflation-theory/"
    "Keynesian Inflation Theory"))
◊(define inflation-bad 
  (x-ref
    "2019-04-24"
    "https://austrianeconomics.fandom.com/wiki/Inflation"
    "Austrian Economics Wiki: Inflation"))

◊(define aus-link 
  (x-ref
    "2019-04-24"
    "https://podcast.bitcoin.com/e799-Austrian-Economics-for-Bitcoiners-with-Jeffrey-Tucker-part-1"
    "Austrian Economics for Bitcoiners with Jeffrey Tucker (part 1)"))

◊(define coinjoin 
  (x-ref
    "2019-04-24"
    "https://en.bitcoin.it/wiki/CoinJoin"
    "CoinJoin"))
◊(define next-chapter how_do_cryptocurrencies_work)

◊(define dao
  (x-ref
    "2019-04-24"
    "https://fullstacks.org/materials/ethereumbook/16_appdx-forks-history.html"
    "Ethereum Fork History"))

