#lang pollen

◊(define-meta title "An introduction to cryptography")
◊(define-meta subtitle "A reference for cryptographic references in the book")
◊(define-meta updated "2019-09-16T07:28:35+02:00")
◊(define-meta uuid "6a8759d6-2e0c-4224-b0b8-61009c5484d0")

This chapter serves as a reference for cryptographic terms and constructs mentioned in the book. Again, this isn't a technical deep-dive, but to give a basic understanding of what they are. If this interests you I encourage you to research more on your own.


◊subhead{Hashes}

Hashes, or to be more precise ◊def[#:link cryptographic-hash-functions]{cryptographic hash functions}, are commonly used in the cryptocurrency space. They're commonly used as the basis of proof-of-work, to verify the integrity of downloaded files and we used them when we created ◊link[timestamping-service]{a timestamped message}.

Hashes are ◊def{one-way functions}. As the name implies we can give data to a function to get a result, but we cannot go the other way to get back the original data if we only have the result. For example using the popular SHA-256 hash function:

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

}

◊code{b409d7f485033ac9f52a61750fb0c54331bfdd966338015db25efae50984f88f}

When you give up ◊toggle[iron-man]{click here for the answer.}

To get a sense for how hard it can be to figure out the matching data for a hash, let's look at the mining in Bitcoin. Because that's really what miners do---they calculate hashes with different kinds of input again and again until they find a match. And they don't require an exact match either, they only want to find a hash with a certain number of leading zeroes.

The current ◊link[bitcoin-hashrate]{hashrate for Bitcoin} is around 113 exahashes per second (2020-02-18). That's a staggering 113 x 10◊sup{18}, or 133 000 000 000 000 000 000, hashes per second. Yet they're still only expected to find a single solution every 10 minutes.

Therefore it's practically impossible to reverse a hash if the content has sufficient variation in it.


◊(define bitcoin-hashrate "https://bitinfocharts.com/comparison/bitcoin-hashrate.html")

◊;This is known as ◊def{brute force} and it's a very





◊(define iron-man "Iron Man is my favorite superhero")


◊subhead{Public-key cryptography}

Public-key cryptography might sound complicated at first, and some details certainly are, but conceptually it's quite simple. It's a digital version of a locked mailbox.

◊todo{Image of a locked mailbox}

Anyone can give you mail, just slide it into the mailbox at the top, but you're the only one who can read them because you're the only one with a key.

Image of elliptic curve?

Also explain that you can ◊em{sign} messages to prove you were the one who sent them and ◊em{encrypt} messages so nobody but the receiver can read them.


◊subhead{Bitcoin addresses}

Create an example address with public/private keys. Show how you can sign and verify messages and encrypt/decrypt messages as well.


◊subhead{Seeds}

Explain ◊em{seeds} and different ways to store private keys from wallets.

◊(define timestamping-service "/timestamping_service.html")

