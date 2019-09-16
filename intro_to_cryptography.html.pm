#lang pollen

◊(define-meta title "An intro to cryptography")
◊;(define-meta subtitle "Benefits over existing payment systems")
◊(define-meta updated "2019-09-16T07:28:35+02:00")
◊(define-meta uuid "6a8759d6-2e0c-4224-b0b8-61009c5484d0")


◊subhead{Hashing}

Describe ◊em{one-way hashes} and ◊em{cryptographic has functions}. Give SHA-256 as an example.

How difficult is it to break a hash? You would have to test...

If you don't believe me then you can try to guess what message this SHA-256 output comes from:

◊code{b409d7f485033ac9f52a61750fb0c54331bfdd966338015db25efae50984f88f}

When you give up ◊toggle[iron-man]{here's the answer.}

◊(define iron-man "Iron Man is my favorite superhero")

◊subhead{Public-key cryptography}

Public-key cryptography might sound complicated at first, and some details certainly are, but conceptually it's quite simple. It's a digital version of a locked mailbox.

◊todo{Image of a locked mailbox}

Anyone can give you mail, just slide it into the mailbox at the top, but you're the only one who can read them because you're the only one with a key.

Image of elliptic curve?

Also explain that you can ◊em{sign} messages to prove you were the one who sent them and ◊em{encrypt} messages so nobody but the receiver can read them.


◊subhead{Addresses in Bitcoin}

Create an example address with public/private keys. Show how you can sign and verify messages and encrypt/decrypt messages as well.


◊subhead{Your wallet keys}

Explain ◊em{seeds} and different ways to store private keys from wallets.

