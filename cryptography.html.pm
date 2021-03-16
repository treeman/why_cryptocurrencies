#lang pollen

◊(define-meta title "A hitchhiker's guide to cryptography")
◊(define-meta subtitle "An introduction to cryptography")
◊(define-meta published "2020-02-27T13:33:40+01:00")
◊(define-meta updated "2020-10-24T11:38:11+02:00")
◊(define-meta uuid "6a8759d6-2e0c-4224-b0b8-61009c5484d0")
◊(define-meta template "chapter.html")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Douglas Adams"
      #:src "The Hitchhiker's Guide to the Galaxy"
      #:quote-src #t]{
    Don't Panic.
  }
}

This chapter serves as an introduction to the cryptographic terms and constructs mentioned in the book. The aim is to give you an idea of what they are and how they might be used in a cryptocurrency context. I won't go into low-level details of how they work, so you don't need to know any mathematics or programming to follow along. If this interests you, I hope this introduction will be helpful as a starting point when researching the topics on your own.◊mn{history}

◊ndef["history"]{
    If the history of cryptography interests you I can also recommend the book ◊(book-link code-breakers-book) by David Kahn. You can enjoy it even without much math knowledge.
}


◊subhead{Hash functions}

Hash functions, or to be more precise ◊def[cryptographic-hash-functions]{cryptographic hash functions}, are commonly used in the cryptocurrency space.◊mn{cryptographic?} They're used as the basis of proof-of-work, to verify the integrity of downloaded files and we used them when we created ◊link[timestamping_service]{a timestamped message}.

◊ndef["cryptographic?"]{
    The difference between a cryptographic hash function and a normal hash function is that a cryptographic hash function is created to make finding the reverse of it difficult, and it should be infeasible to find two values with the same hash (called a ◊def{collision}).
}

Hashes are ◊def{one-way functions}. As the name implies we can give data to a function to get a result, but we cannot go the other way to get back the original data if we only have the hashed result.

It's similar to how we can break an egg, but there's no easy way to "unbreak" it.

◊img[#:src "/images/break_egg.png" #:alt "An egg going from an unbroken to a broken state."]{
    It's easy to break an egg.
}

◊img[#:src "/images/merge_egg.png" #:alt "It's hard to go back if the egg is already broken."]{
    But it's very hard to piece it together again.
}

In the digital world we can use the popular ◊link[sha-2]{SHA-256 hash function} as an example:

◊code{hello → 5891b5b522d5df086d0ff0b110fbd9d21bb4fc7163af34d08286a2e846f6be03}

But there's no function to unwrap a hash directly:

◊code{084c799cd551dd1d8d5c5f9a5d593b2e931f5e36122ee5c793c1d08a19839cc0 → ???}

To find out what's hidden behind the hash we have to try all possibilities:

◊code{
    1 → 4355a46b19d348dc2f57c046f8ef63d4538ebb936000f3c9ee954a27460dd865
    2 → 53c234e5e8472b6ac51c1ae1cab3fe06fad053beb8ebfd8977b010655bfdd3c3
    ...
    42 → 084c799cd551dd1d8d5c5f9a5d593b2e931f5e36122ee5c793c1d08a19839cc0
}

Found it! The answer is "42". But we were lucky that we only had to test 42 possibilities, we could have continued a ◊strong{very} long time depending on the input.◊mn{multiple}

◊ndef["multiple"]{
    I've simplified the explanation here a little. There's not a one-to-one correspondence between an input and a hash, as several inputs can result in the same hash.
}

Don't believe me? Then try to guess what message this SHA-256 output comes from, and I can even give you a hint that it's only spaces, upper- and lower case letters:

◊ndef["variation"]{
    For security it's important that the data you want to protect is sufficiently large and has enough variation to make it difficult to guess what it is.

    It's the same way you should choose a password; a short one made of only numbers is easy to guess, but a 30 character password is much harder.
}

◊code{b409d7f485033ac9f52a61750fb0c54331bfdd966338015db25efae50984f88f}

◊mn{variation}

To get a sense for how hard it can be to figure out the matching data for a hash, let's look at the mining in Bitcoin. Because that's really what miners do---they calculate SHA-256 hashes with different kinds of input again and again until they find a match. And they don't require an exact match either, they only want to find a hash with a certain number of leading zeroes.

The current ◊link[bitcoin-hashrate]{hashrate for Bitcoin} is around 113 exahashes per second (2020-02-18). That's a staggering 113 x 10◊sup{18}, or 133 000 000 000 000 000 000, hashes per second, yet they're still only expected to find a single solution every 10 minutes.

Even all of Bitcoin's hashrate, working for millions of years, are not expected to find the reverse of a single hash. Even though there's theoretically an infinite number of inputs that produce the same hash, it's computationally infeasible to ever find one, therefore we can consider it practically impossible to reverse a hash.◊mn{secure}

◊ndef["secure"]{
    We can say it's impossible to reverse a hash if we have to brute force the solution like this, but there could be weaknesses in the hash function that could allow us to find it much earlier. The ◊link[sha-1]{SHA-1 hash function} is for example not secure anymore, as weaknesses have been found that can be used to generate collisions.
}

If you want to give up and see what I encoded in the hash, ◊toggle[iron-man]{click here.}

◊(define iron-man "Iron Man is my favorite superhero")


◊subhead{Public-key cryptography}

If you jump into the mathematical definitions of ◊def[public-key-cryptography]{public-key cryptography} it might look very complicated. While some details are complicated, the cryptography is conceptually simple; it's a digital version of a locked mailbox.

◊img[#:src "/images/mailbox.png" #:alt "A locked mailbox."]{
    A locked mailbox.
}

Cryptographic schemes commonly use a single large number as their secret key, but public-key cryptography uses two keys: the ◊def{public key}, which is like the mailbox, and the ◊def{private key}, which is like the key to the mailbox. Anyone can give you mail---just slide it into the mailbox at the top---but you're the only one who can read them, because you're the only with the key to the mailbox.

You ◊em{encrypt} a message by placing it in the mailbox, this way nobody but the owner of the mailbox can ◊em{decrypt} and read it. The owner of the mailbox can also prove they own the mailbox by placing their name on it, an action that requires you to open the mailbox with the key. In digital terms this is how you ◊em{sign} a message.◊mn{mailbox-breakdown}

◊ndef["mailbox-breakdown"]{
    This is where our mailbox metaphor breaks down a bit. It may seem that it's more inconvenient to sign a message than to encrypt one, but digitally they're both straightforward.
}

◊img[#:src "/images/encrypted_mailbox.png" #:alt "Placing a letter in the mailbox."]{
    Placing a message inside the mailbox ensures that only the one with the key can read it.
}

◊img[#:src "/images/mailbox_signed.png" #:alt "A labeled mailbox."]{
    The mailbox contains the label "Jonas", which you have to open the mailbox to change. By putting my name on the mailbox I prove that I own it.
}

◊note-pos[#:top -45]{mailbox-breakdown}

Large parts of the internet depends on public-key cryptography. For example when you connect to your bank over the internet, this scheme helps ensure that nobody can see how much money you have, who you pay and that you're the only one that can transfer your money.

◊img[#:src "/images/https.png" #:alt "A screenshot of a lock icon on a webbrowser."]{
    The lock icon or the "https" label means you're using public-key cryptography (among other things) to secure your connection to the website.
}

I won't go into details on the mathematics behind public-key cryptography, as I'm not able to without making the explanation needlessly complicated, but if this interests you I encourage you to look it up---I personally find it fascinating.◊mn{further-public-key}

◊ndef["further-public-key"]{
    ◊link[rsa]{RSA} is one of the first public-key cryptography schemes and it was also the first one I studied. It's fairly simple, so I think it's a good starting point to understand public-key cryptography.

    Bitcoin uses another, more secure, scheme called ◊link[ecdsa]{ECDSA}, which uses ◊link[elliptic-curve]{elliptic-curve cryptography}.
}

◊(define rsa
   (x-ref
     "2020-02-27"
     "https://en.wikipedia.org/wiki/RSA_(cryptosystem)"
     "Wikipedia: RSA (cryptosystem)"))
◊(define elliptic-curve
   (x-ref
     "2020-02-27"
     "https://en.wikipedia.org/wiki/Elliptic-curve_cryptography"
     "Wikipedia: Elliptic curve cryptography"))
◊(define ecdsa
   (x-ref
     "2020-02-27"
     "https://en.wikipedia.org/wiki/Elliptic_Curve_Digital_Signature_Algorithm"
     "Wikipedia: Elliptic Curve Digital Signature Algorithm"))


We will look at public-key cryptography in practice when we look at how Bitcoin addresses work.

◊note-pos[#:top -7]{further-public-key}


◊subhead{Bitcoin addresses}

The addresses in Bitcoin (and other cryptocurrencies) uses public-key cryptography to protect your funds. The address is a public key that everyone can send coins to, but to send coins from an address you need the private key.

This is for example a standard ◊strong{Bitcoin address}:

◊code{19WoNYNXnfNPmLteC8YmZFsTQoN9gBSbCG}

Which corresponds to the ◊strong{public key}:

◊code{049f6aad24669d180cfe4c974a677407cbf26f03242a09126ebf88621d31f01a218d40fcbcb769b44b014d502a1c9ce8c2ca629bc339fe14b4db56e27e80ac30a7}

The address could be displayed in various different ways, Bitcoin just happened to do it this way. Using an address is more convenient as it's shorter and includes error checking codes.◊mn{bch-address}

◊ndef["bch-address"]{
    Bitcoin Cash is a fork of Bitcoin and they have an additional address format. The same Bitcoin address, with the same public key, could also be displayed as this Bitoin Cash address:

    ◊code{qpwk83ew0xwpe87mmm9v43nvzj2y4d783cmv7ayctd}
}

The ◊strong{private key} to this address looks like this:

◊code{5298e83a0c0884cdcf34294f663220bc73e3c6689e95b53158a9a89e95fd78bb}

The private key is just a large number and can be be displayed in different ways. Here's the same key in the ◊link[wif]{Wallet Import Format}, which is shorter and includes error checking codes:

◊(define wif
   (x-ref
     "2020-02-27"
     "https://en.bitcoin.it/wiki/Wallet_import_format"
     "bitcoin.it wiki: Wallet import format"))

◊code{5JSfRE8qNQZTtdwuRx6pxVohC3C3VeAHvzKvLsZWHEGPdW2zF3o}

It's important to note that you should ◊em{never} reveal your private key like this. Don't take a screenshot of it, email it or post it on social media. Because if someone sees your key, they can steal all the coins from your address. The private key really is the key to the castle, and if you lose it you'll lose all your funds forever. So please back up your private key somewhere safe (or the more user-friendly ◊em{seed}, but we'll get to that shortly).

There are other types of addresses and other formats for the private and public keys, and other cryptocurrencies may handle them differently, but the concepts are the same.

◊note-pos[#:top -38]{bch-address}

The reason Bitcoin uses public-key cryptography for the addresses is because you can ◊strong{sign} messages with it. For example if I sign the message:

◊code{Jonas sent the money}

With the private key to the address:

◊code{19WoNYNXnfNPmLteC8YmZFsTQoN9gBSbCG}

I'll get this signature:

◊code{HCZl2+vEZboqXgaVYi1nLNgwoa/INLiEsA2yXe+87j5iFoo/G96m4AoA5dL5T+rTiFKpXHuS5w3rP1IWSPZZv0Q=}

Which lets you ◊strong{verify} that I know the private key to the address, even if I never showed it to you.  This can be useful if we've sent money to someone and we want to prove who did it.◊sn{payments}

◊ndef["payments"]{
    Payment systems are usually smarter, so it's normally not needed to sign a message to prove you sent them a payment.
}

This is also what happens in the background when you authorize a transaction; you sign it with your private key and your signature is verified before the transaction is accepted. If the signature doesn't verify then the transaction is invalid and gets discarded, ensuring that coins can only be spent by the owner of the address.◊sn{how-difficult?}

◊ndef["how-difficult?"]{
    How hard is it to fake a signature? Very hard, as there's no known attack that can do it. The biggest threat is quantum computers, which ◊em{if} they live up to the hype could break public-key cryptography.

    Quantum computers wouldn't actually be able to steal all Bitcoins directly, since they can only discover the private key if there's a signature. And if you have coins in your address, but you've never sent any coins from it before, no signature exists.

    If quantum computers can break public-key cryptography we as a society would have much bigger problems than the security of Bitcoin, as it would break the security of the internet itself. (There is quantum secure cryptography we could potentially move to, so everything isn't lost yet.)
}

◊note-pos[#:top -11]{payments}
◊note-pos{how-difficult?}

◊strong{Encrypting} messages using your bitcoin keys isn't that common to my knowledge---they typically use protocols such as ◊link[pgp]{PGP}---but it's possible. I'll include a short example for completeness sake.

For example if you want to send me the message:

◊code{I secretly love your book!}

But only want me to be able to read it, you can encrypt it with my public key:

◊code{049f6aad24669d180cfe4c974a677407cbf26f03242a09126ebf88621d31f01a218d40fcbcb769b44b014d502a1c9ce8c2ca629bc339fe14b4db56e27e80ac30a7}

And you'll get the encrypted message:

◊code{QklFMQJ+CTugTvsEmuB7owU3DvC5taXqC5DhsJ3Wq8EmUMHwgsE54GlY1PI9d1R/OoGfq1mG9dcThW5T9fpUtQTY+ogLLvKsrN6ngeulLMrfoyCxFtLTjH78PGSd8eROQ1yPq1k=}

Which only I can ◊strong{decrypt} to the original message. (Since I've given out the private key, you can decrypt it as well.)


◊; Private key:  5298e83a0c0884cdcf34294f663220bc73e3c6689e95b53158a9a89e95fd78bb
◊; Public key:  049f6aad24669d180cfe4c974a677407cbf26f03242a09126ebf88621d31f01a218d40fcbcb769b44b014d502a1c9ce8c2ca629bc339fe14b4db56e27e80ac30a7
◊; Wif:  5JSfRE8qNQZTtdwuRx6pxVohC3C3VeAHvzKvLsZWHEGPdW2zF3o
◊; Address:  19WoNYNXnfNPmLteC8YmZFsTQoN9gBSbCG
◊; bitcoincash address: bitcoincash:qpwk83ew0xwpe87mmm9v43nvzj2y4d783cmv7ayctd


◊(define pgp
   (x-ref
     "2020-02-27"
     "https://en.wikipedia.org/wiki/Pretty_Good_Privacy"
     "Wikipedia: Pretty Good Privacy"))

◊subhead{Seeds}

Because private keys aren't very user-friendly Bitcoin wallets use seeds. The seed is made up of a sequence of 12, or sometimes 24, words selected from a ◊link[bip-39]{pre-determined set of 2048 possible words}.◊mn{variations}

This is for example a 12-word seed:

◊ndef["variations"]{
    Variations among cryptocurrencies exist. A Monero seed is for example 25 words long.
}

◊code{reward tip because lock general culture below strike frog fox chunk index}

Which corresponds to the private key:

◊code{KyRoQMYWAtfj5cGLThb1fznm5Utjq7Etmn9DLtdxYCiE3Vntcz3E}

Much more user friendly right?  Even though memorizing the public key directly is very difficult, you can see that it would not be too difficult to memorize the seed!

◊note-pos[#:top -20]{variations}

In addition to being easy to use, seeds act as a starting point in deterministic wallets to generate multiple private and public key pairs (giving you multiple addresses).◊mn{pseudo-random}

Giving out a new address each time you receive money is useful for privacy purposes, as it makes it harder to connect your transactions with your identity. This is why all modern wallets generates a new address each time you press receive.

◊ndef["pseudo-random"]{
    See the discussion about ◊link[seeds-and-pseudo-random-generators]{pseudo-random generators} in the chapter about ◊link[provably_fair_gambling]{provably fair gambling} for some theory of how it might be possible to generate a set of random-looking outputs from a seed.
}

◊note-pos[#:top -9]{pseudo-random}

Here are for example the first 10 addresses and their private keys of our seed:

◊table-body[#:class "address-examples"]{
    ◊tr{◊ths{Address} ◊ths{Private key}}
    ◊tr{◊tdc{19oN2GWEH1uiPz11WyChkUp2che9Z11Q5A} ◊tdc{KyRoQMYWAtfj5cGLThb1fznm5Utjq7Etmn9DLtdxYCiE3Vntcz3E}}
    ◊tr{◊tdc{1LverDkyaWMEyyFHiEWQaJt6UGxRjeBfQR} ◊tdc{L1NH4wpuKzafbq2PtVXaGCE8hjc7KGzRfyfYik73APu7kZvdJxUp}}
    ◊tr{◊tdc{1QHQ8uFrEL29WAkMLQgkoDzHimEQNqubM1} ◊tdc{Kx3c9ZeS2pzYPuLa2NoA14SavnsWpkf1BJDLDu1N52oGoNWgv9KM}}
    ◊tr{◊tdc{1HiohATeEm6BBeRCgWZ5vY3ZKFrCDsJnt9} ◊tdc{KyCWZEpJ3AYUmB7MGEVvZfr6eiwgag89jmZtHC1tEVv9XynSqmot}}
    ◊tr{◊tdc{1KJ5oMUEJTyd3igAYjJGvpdVjGDvF1Brc6} ◊tdc{L4exrFikcfgSYm1ZZBkJrbwouLjzrrJB6VPyaH4vyK8cAkK2V2nt}}
    ◊tr{◊tdc{1DzZJ6R1xXiQ3HJ3BsBAcviVdtUEeiu2UG} ◊tdc{Kx37aUKrHRVdinxzHWTK8ebXWeMtRSbtshzonTMTQBrssQ2ms1JV}}
    ◊tr{◊tdc{134TjnZ8xiu4wxfyy4xQQtiMiKhhe6AVur} ◊tdc{KwPqA3XUaWCX2dhRRm4WXArm5DJKXko1ydgwwApJ3BC3dgnQ3Ydg}}
    ◊tr{◊tdc{12XiJHvYT6TyaWcUhzdcBgqFZc3bNWpYdd} ◊tdc{L2WakaNFfBehyL17c13iQwJKR8H1hQtsVvR5jsdugFfj9si8DZm2}}
    ◊tr{◊tdc{12MuxMtJb9jbrzMQrr7zDiLYcn6xwaXMkq} ◊tdc{L2ScmsyKJYzW2koEPjHmLKzjFMYNfR8UZMifP2yvggrRrJEBU4UJ}}
    ◊tr{◊tdc{1MqBeJiVW6FqxKbrMq8mVUcukjXWMzuYew} ◊tdc{KypFcqzaJRHPwxQfGDiYyJMtAdyKNSQuR78yZPTU57baS42dp4tr}}
}
◊(define (ths txt)
   `(td ((class "ths")) ,txt))
◊(define (tdc txt)
   `(td ((class "tdc")) ,(icode txt)))

I reiterate the importance of backing up and protecting your seed. Here are just some ways you could lose your money:

◊ul{
    ◊li{You have a wallet on your phone but you lose it or it breaks down.}
    ◊li{You've written down your seed on paper, but it burns up.}
    ◊li{You forgot where you wrote down your seed.}
    ◊li{Someone finds your seed, and steals your money.}
}

Therefore it's of utmost importance for you to backup and protect your seed. Ideally you should have multiple encrypted copies in different locations, protected from fire and theft.

Does this sound too difficult? It's true, there are many pitfalls and it's easy to do a bad job. But in practice, for reasonably small amounts, it's enough just to write down your seed somewhere.

◊(define sha-2
   (x-ref
     "2020-02-27"
     "https://en.wikipedia.org/wiki/SHA-2"
     "Wikipedia: SHA-2"))
◊(define sha-1
   (x-ref
     "2020-02-27"
     "https://en.wikipedia.org/wiki/SHA-1"
     "Wikipedia: SHA-1"))
◊(define bitcoin-hashrate
   (x-ref
     "2020-02-27"
     "https://bitinfocharts.com/comparison/bitcoin-hashrate.html"
     "BitInfoCharts: Bitcoin Hashrate historical chart"))
◊(define public-key-cryptography
   (x-ref
     "2020-02-27"
     "https://en.wikipedia.org/wiki/Public-key_cryptography"
     "Wikipedia: Public-key cryptography"))
◊(define bip-39
   (x-ref
     "2020-02-27"
     "https://github.com/bitcoin/bips/blob/master/bip-0039/bip-0039-wordlists.md"
     "Bitcoin: BIP-39 wordlists"))

