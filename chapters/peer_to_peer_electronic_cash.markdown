---
title: Peer-to-peer electronic cash
subtitle: Peer?
---

"Bitcoin: A Peer-to-Peer Electronic Cash System"

Is the title of the Bitcoin whitepaper where Bitcoin's anonymous creator Satoshi Nakamoto describes how Bitcoin works.[^whitepaper] I think the title is the perfect explanation for what a cryptocurrency is: it's cash but in digital form.

The important difference between a cryptocurrency and digital payments we have today is not having to trust a third party. Payments are peer-to-peer just as if you gave someone a bill or a gold coin. Sending money to people via your bank is not peer-to-peer as you rely on your bank to send it for you. VISA, PayPal, Swish, Apple Pay and any other digital payments have the same problem except cryptocurrencies.

Transfers are therefore **permissionless** and **trustless**.

Additionally digital money isn't like cash where you alone have possession. What you really have is an IOU from the bank where they promise to give you your money when ask for it. You cannot stuff the IOU in a mattress and have complete control of your money. But this is possible with a cryptocurrency&emdash;you can write down your keys to your wallet and store it wherever you want.[^keys]

<https://coincentral.com/byzantine-generals-problem/>

Cryptocurrencies have some other features as well:

* You cannot counter-fit coins.
* You cannot double-spend coins. Said in another way you cannot copy a coin to send it to two different people.


img: Bitcoin's emission rate. Monero's emission rate.

In other words cryptocurrency transfers are **trustless** and **permissionless**. You don't have to trust anyone to receive or send payments, there's no risk of receiving fake coins. And you don't have to get permission from anyone to be able to transfer coins, there is no third party that can freeze your account.


Move to next section?
* They have a predetermined emission rate.
* They're easily divisible. For example one bitcoin can be divided into one million parts&emdash;satoshis.


[^whitepaper]: The whitepaper is surprisingly easy to read and I highly recommend you [read it][whitepaper].

    If you prefer there's a simplified explanation with annotations available here:

    <https://www.bitcoin.com/guides/bitcoin-white-paper-beginner-guide>

    And in podcast format:

    <https://bitcoinnews.com/bitcoinnews-com-daily-podcast-5th-november-2018-the-bitcoin-white-paper/>

    Note that the whitepaper was created in 2008 and some terminology and implementation details have changed, but the high level description is just as true today more than 10 years later.

    There have been suggestions to [alter the whitepaper hosted on bitcoin.org][] so if you want to make sure you're reading the original one you can compare the pdf's sha256 hash with this:

    `b1674191a88ec5cdd733e4240a81803105dc412d6c6708d53ab94fc248f4f553`

    The whitepaper is also embedded in the blockchain. Instructions on how to parse it [here][whitepaper-blockchain].

[whitepaper]: https://www.bitcoin.com/bitcoin.pdf "Bitcoin: A Peer-to-Peer Electronic Cash System"
[alter-whitepaper]: https://github.com/bitcoin-dot-org/bitcoin.org/issues/1325 "Amendments to the Bitcoin paper"
[whitepaper-blockchain]: https://bitcoin.stackexchange.com/questions/35959/how-is-the-whitepaper-decoded-from-the-blockchain-tx-with-1000x-m-of-n-multisi/35970 "Stackexchange: How is the whitepaper decoded from the blockchain"

[^keys]: But please make sure to encrypt them.

