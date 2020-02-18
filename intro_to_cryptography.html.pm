#lang pollen

◊(define-meta title "An introduction to cryptography")
◊(define-meta subtitle "A reference for cryptographic references in the book")
◊(define-meta updated "2019-09-16T07:28:35+02:00")
◊(define-meta uuid "6a8759d6-2e0c-4224-b0b8-61009c5484d0")

This chapter serves as a reference for cryptographic terms and constructs mentioned in the book. Again, this isn't a technical deep-dive, but to give a basic understanding of what they are. If this interests you I encourage you to research more on your own.


◊subhead{Hashes}

Hashes, or to be more precise ◊def[#:src cryptographic-hash-functions]{cryptographic hash functions}, are commonly used in the cryptocurrency space.◊mn{cryptographic?} They're commonly used as the basis of proof-of-work, to verify the integrity of downloaded files and we used them when we created ◊link[timestamping-service]{a timestamped message}.

◊ndef["cryptographic?"]{
    The difference between a cryptographic hash function and a normal hash function is that a cryptographic hash function is created to make finding the reverse of it is difficult, and it should be infeasible to find two values with the same hash.
}

Hashes are ◊def{one-way functions}. As the name implies we can give data to a function to get a result, but we cannot go the other way to get back the original data if we only have the hashed result. For example using the popular ◊link[sha-2]{SHA-256 hash function}:

◊code{hello → 5891b5b522d5df086d0ff0b110fbd9d21bb4fc7163af34d08286a2e846f6be03}

But there's no function to unwrap the hash directly:

◊code{084c799cd551dd1d8d5c5f9a5d593b2e931f5e36122ee5c793c1d08a19839cc0 ↛ ???}

To find out what's hidden behind the hash we have to try all possibilities:

◊code{
    1 → 4355a46b19d348dc2f57c046f8ef63d4538ebb936000f3c9ee954a27460dd865
    2 → 53c234e5e8472b6ac51c1ae1cab3fe06fad053beb8ebfd8977b010655bfdd3c3
    ...
    42 → 084c799cd551dd1d8d5c5f9a5d593b2e931f5e36122ee5c793c1d08a19839cc0
}

Found it! The answer is "42". But we were lucky that we only had to test 42 possibilities, we could have continued a ◊strong{very} long time depending on the input.

Don't believe me? Then try to guess what message this SHA-256 output comes from, and I can even give you a hint that it's only spaces and upper or lower case letters:◊sn{variation}

◊ndef["variation"]{
    For security it's important that the data you want to protect is sufficiently large and has enough variation to make it difficult to guess what it is.

    It's the same way you should choose a password; a short one made of only numbers is easy to guess, but a 30 character password is much harder.
}

◊code{b409d7f485033ac9f52a61750fb0c54331bfdd966338015db25efae50984f88f}

When you give up ◊toggle[iron-man]{click here for the answer.}

To get a sense for how hard it can be to figure out the matching data for a hash, let's look at the mining in Bitcoin. Because that's really what miners do---they calculate hashes with different kinds of input again and again until they find a match. And they don't require an exact match either, they only want to find a hash with a certain number of leading zeroes.

The current ◊link[bitcoin-hashrate]{hashrate for Bitcoin} is around 113 exahashes per second (2020-02-18). That's a staggering 113 x 10◊sup{18}, or 133 000 000 000 000 000 000, hashes per second, yet they're still only expected to find a single solution every 10 minutes. So we can conclude that it's so difficult that we can consider it impossible to reverse a hash.◊sn{secure}

◊ndef["secure"]{
    It's important to choose a secure hash. The ◊link[sha-1]{SHA-1 hash function} is for example not secure anymore, as weaknesses have been found that can be used to generate collisions.
}

◊(define iron-man "Iron Man is my favorite superhero")


◊subhead{Public-key cryptography}

If you jump into the mathematical definitions of ◊def[#:src public-key-cryptography]{public-key cryptography} it might look very complicated. While some details are complicated, the cryptography is conceptually simple. It's a digital version of a locked mailbox.

◊todo{Image of a locked mailbox}

It's called public-key cryptography because you have two keys: the ◊def{public key}, which is the mailbox, and the ◊def{private key}, which is the key to the mailbox.  Anyone can give you mail---just slide it into the mailbox at the top---but you're the only one who can read them, because you're the only one with a key.

You ◊em{encrypt} a message by placing it in the mailbox, this way nobody but the owner of the mailbox can read it. The owner of the mailbox can also prove they own the mailbox by placing their name on it, an action that requires you to open the mailbox with the key. In digital terms this is how you ◊em{sign} a message.◊sn{mailbox-breakdown}

◊ndef["mailbox-breakdown"]{
    This is where our mailbox metaphor breaks down a bit. It may seem that it's more inconvenient to sign a message than to encrypt one, but digitally they're both straightforward.
}

◊todo{Encrypt a message as it goes into the mailbox}

◊todo{Signing a message from a mailbox}

Large parts of the internet depends on public-key cryptography. For example when you connect to your bank over the internet, this scheme helps secure it.

◊img[#:src "/images/https.png"]{
    The lock icon or the "https" label means you're using public-key cryptography (among other things) to secure your connection to the website.
}

I won't go into details on how the mathematics behind this scheme work, as I'm not able to without making the explanation needlessly complicated, but if this interests you I encourage you to look it up---I personally find it fascinating. We will look at public-key cryptography in practice when we look at how Bitcoin addresses work.

◊;If you're intrigued by the promise of public-key cryptography I encourage you to look it up, it's quite fascinating.


◊subhead{Bitcoin addresses}

The addresses in Bitcoin (and other cryptocurrencies) are directly using public-key cryptography. The address is a public key that everyone can send coins to, but to send coins from an address you need the private key.

This is for example a standard ◊strong{Bitcoin address}:

◊code{1Nx5czgPZiwBQghqcbVqkz8S1eTmdQo5D9}

The address could be displayed in various different ways, Bitcoin just happened to do it this way.◊sn{bch-address}

◊ndef["bch-address"]{
    Bitcoin Cash is a fork of Bitcoin and they have an additional address format. The same Bitcoin address, with the same public key, could also be displayed as this Bitoin Cash address:

    ◊code{qrcv2cz7z4rasm4xf2s6m4yrxacpl9f2c5vz268lry}
}

The ◊strong{private key} to this address looks like this:

◊todo{Does it really look like this?}

◊code{037bae943f5d94c7f80aba52a801c6ffbc2e6ce9241a8eebb8ba0d619b5cce99bf}

Again, the actual private key is the binary data and it could be displayed in various ways as well. Here's the same key in the ◊link[wif]{Wallet Import Format}, which is shorter and includes error checking codes:

◊(define wif "https://en.bitcoin.it/wiki/Wallet_import_format")

◊code{L51avt2qoya13EpyKug8eM1UTg7jhSiuvtoUhLKkRZHMCbh9DJuk}

It's important to note that you should ◊em{never} reveal your private key like this. Don't take a screenshot of it, email it or post it on social media. Because if someone sees your key, they can steal all the coins from your address. The private key really is the key to the castle, and if you lose it you'll lose all your funds forever. So please back up your private key somewhere safe (or the more user-friendly ◊em{seed}, but we'll get to that shortly).

The reason Bitcoin uses public-key cryptography for the addresses is because you can ◊strong{sign} messages with it. For example if I sign the message:◊sn{electron-cash}

◊ndef["electron-cash"]{
    I used the desktop version of ◊link[electroncash]{Electron Cash} for these examples.
}

◊code{Jonas sent the money}

With the address:

◊code{1Nx5czgPZiwBQghqcbVqkz8S1eTmdQo5D9}

I'll get this signature:

◊code{H8rf3p7pfAIT+0LMeuE3iJkrms2K/5HwInES/drI9pCEcWhz3OitXZQ8bJZreP/h6E2Y2F/HTHduJfEaNBJiniU=}

Which if you can verify you know that I control the private key to the address, even if I never showed it to you. This can be useful if we've sent money to someone and we want to prove who did it.◊sn{payments}

◊ndef["payments"]{
    Payment systems are usually smarter, so this is normally not needed.
}

This also happens in the background when you authorize a transaction; you sign it with your private key and your signature is validated before the transaction is accepted. If the signature doesn't validate then the transaction is invalid and gets discarded.◊sn{how-difficult?}

◊ndef["how-difficult?"]{

}


◊strong{Encrypting} messages using your Bitcoin keys aren't used that much to my knowledge, they typically use protocols such as ◊link[pgp]{PGP}, but it's possible. I'll include a short example of it for completeness sake.

For example if you want to send me the message:

◊code{I secretly love your book!}

But only want me to be able to read it, you can encrypt it with my Bitcoin address (the public key):

◊code{1Nx5czgPZiwBQghqcbVqkz8S1eTmdQo5D9}

And you'll get the encrypted message:


◊(define pgp "https://en.wikipedia.org/wiki/Pretty_Good_Privacy")

◊;time layer today pencil buzz wing bird excess tone rebuild arrange size

◊;public key:  1Nx5czgPZiwBQghqcbVqkz8S1eTmdQo5D9	
◊;private key: L51avt2qoya13EpyKug8eM1UTg7jhSiuvtoUhLKkRZHMCbh9DJuk

◊subhead{Seeds}

Explain ◊em{seeds} and different ways to store private keys from wallets.

◊(define sha-2 "https://en.wikipedia.org/wiki/SHA-2")
◊(define sha-1 "https://en.wikipedia.org/wiki/SHA-1")
◊(define timestamping-service "/timestamping_service.html")
◊(define bitcoin-hashrate "https://bitinfocharts.com/comparison/bitcoin-hashrate.html")
◊(define public-key-cryptography "https://en.wikipedia.org/wiki/Public-key_cryptography")

