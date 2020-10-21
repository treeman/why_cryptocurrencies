#lang pollen

◊(define-meta title "Extensions")
◊(define-meta subtitle "Non-currency usage of a blockchain")
◊(define-meta published "2019-09-21T00:00:00+01:00")
◊(define-meta updated "2020-10-09T19:50:51+02:00")
◊(define-meta uuid "c83f3bb3-7277-43b0-ad8d-ee5ea4592a87")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Marc Kenigsberg"]{
    Blockchain is the tech. Bitcoin is merely the first mainstream manifestation of its potential.
  }
}

Money is perhaps the most obvious usage of cryptocurrencies but they support other use cases too. With embedded data and scripts cryptocurrencies can truly become "programmable money", where we use cryptocurrencies as a base and build new functionality on top.◊mn{blockchain-hype}

There are many different ways this could be useful and I've selected some examples that I think have potential. I'll show how it's possible to tag a message with an unforgeable timestamp, create an uncensorable social media platform and make gambles provably fair. We'll finish with the usefulness of tracking assets with ◊def{tokens} and how a cryptocurrency based voting system have some surprisingly attractive properties.

◊ndef["blockchain-hype"]{
    I generally try to avoid the word ◊def{blockchain} which sometimes refer to private blockchains or blockchains which use a consensus model with known and trusted actors. Facebook's Libra is such an example and ◊link[ibm-blockchain]{IBM's blockchain} is another.

    Don't let the similar names fool you: consensus algorithms with known participants and those with unknown participants are ◊strong{very} different. I only consider those using the latter to be cryptocurrencies.
}

◊(define bft
   (x-ref
     "2019-09-21"
     "https://en.wikipedia.org/wiki/Byzantine_fault"
     "Wikipedia: Byzantine fault"))
◊(define ibm-blockchain
   (x-ref
     "2019-09-21"
     "https://www.ibm.com/blockchain"
     "IBM Blockchain is changing business, industries – and even the world"))


◊subhead{Embedding data}

The first thing we can observe is that it's possible to insert data into the ledgers of cryptocurrencies, essentially making the data immutable. It's not important exactly how, but if you're curious here are some ways:

◊ol{
    ◊li{Miners can add data to blocks

        For example Satoshi ◊link[block-0]{left a message} in the first ever Bitcoin block:◊mn{coinbase-data}

        ◊ndef["coinbase-data"]{
            Satoshi embedded his message in the "Coinbase data" entry of the block. Other miners usually include the name of their mining pool. Such as in ◊link[coinbase-ex]{this block} the coinbase data says "Mined by AntPool48".

            ◊link[coinbase-txs]{Read this} for more info about coinbase transactions.
        }

        ◊code{
            The Times 03/Jan/2009 Chancellor on brink of second bailout for banks
        }

        ◊note-pos{coinbase-data}
    }
    ◊li{Transactions can hold data

        See the OP_RETURN field in ◊link[memo-blockchair]{this Bitcoin Cash transaction} which says:

        ◊code{
            Memo has reached 500,000 on-chain actions!
        }
    }
    ◊li{Addresses are user controlled

        Even if it's not intended you can always insert arbitrary data as long as you can control your address.◊mn{control-address} For example you could chain transactions, by sending from address to address, and treat the second character of the receiving address as your message:

        ◊(gen-message "Hello")

        To produce the message "Hello".

        ◊note-pos[#:top -16]{control-address}

        ◊ndef["control-address"]{
            To control your address you can keep generating a new until you find one you like. If you want a ◊em{vanity address} for personal use you can generate one, for example one starting with "1Crypto". Keep in mind that finding an address with 6 characters or more can ◊link[vanitygen]{take a long time}.
        }
    }
}

◊; Maybe it's not such a good idea to insert a randomly generating part...
◊; Change this later if I'm bothered.
◊(define (gen-message msg)
  (define letters
    (string-append
     "abcdefghijklmnopqrstuvwxyz"
     "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
     "0123456789"))
  (define (random-char)
    (string-ref letters (random (string-length letters))))

  (define (gen-address c)
     ;`("⤹ 1"
     `("↳ 1"
     ;`("1"
       (span ((class "msg-char")) ,(string c))
       ,(apply string
          (for/list ([_ (in-range 5)])
            (random-char)))
       "…"))

  (apply table-body
    #:class "address-message"
    (for/list ([c (in-string msg)])
      `(tr (td ,@(gen-address c))))))

◊(define memo-blockchair
   (x-ref
     "2019-09-21"
     "https://blockchair.com/bitcoin-cash/transaction/786816d4f92e9b8e78bf281e2b498daa526c93dc69a5e6b493c901928ee3f51d"
     "Bitcoin transaction 786816d4f92e9b8e78bf281e2b498daa526c93dc69a5e6b493c901928ee3f51d"))
◊(define vanitygen
   (x-ref
     "2019-09-21"
     "https://en.bitcoin.it/wiki/Vanitygen"
     "Vanitygen"))
◊(define coinbase-ex
   (x-ref
     "2019-09-21"
     "https://blockchair.com/bitcoin/block/595563"
     "Bitcoin block 595563"))
◊(define coinbase-txs
   (x-ref
     "2019-09-21"
     "https://learnmeabitcoin.com/glossary/coinbase-transaction"
     "Coinbase Transaction: A transaction used to claim a block reward."))


◊subhead{Scripts}

Bitcoin does more than just transfer coins from one address to another. What it actually does is execute a ◊link[bitcoin-script]{small scripting language} which is responsible for unlocking funds and transferring them to new addresses. You can for example send funds from several addresses to many addresses or lock funds and ◊link[multisig]{require more than one key} to spend them (which is commonly called ◊def{multisig}).◊mn{bitcoin-script}

◊(define bitcoin-script
   (x-ref
     "2019-09-21"
     "https://en.bitcoin.it/wiki/Script"
     "Bitcoin Script"))

◊ndef["bitcoin-script"]{
    This is the script of a standard Bitcoin transaction (amount, destination and other data is specified elsewhere):

    ◊code{
        OP_DUP OP_HASH160 <pubKeyHash> OP_EQUALVERIFY OP_CHECKSIG
    }

    OP_RETURN is another type of opcode that marks the output as invalid. It's usually used to add data to transactions and is the preferred way to embed data because nodes concerned with storage can remove it and still be able to fully validate new transactions.
}

The scripting language in Bitcoin is fairly limited but the ◊link[solidity]{scripting language in Ethereum} is much more powerful and can do more things. You can for example create games where you ◊link[cryptokitties]{buy and sell cats} on Ethereum.◊mn{tradeoffs}

◊ndef["tradeoffs"]{
    Ethereum's powerful scripting language comes with all sorts of trade-offs. It makes it much more difficult to scale---which is already difficult with Bitcoin.

    The scripting language in Ethereum is ◊link[turing-complete]{Turing Complete}, meaning it's impossible to know if a script terminates. To avoid the problem of an infinite loop in the script every operation requires a fee (called ◊def[ether-gas]{gas}), in contrast to a fee based on the script size as in Bitcoin.
}

Now it doesn't matter if you know what a script is or how it works, just remember this: cryptocurrencies can do more than transfer coins from one address to another. We'll go into some of the examples in the following chapters.

◊note-pos[#:top -16]{bitcoin-script}
◊note-pos{tradeoffs}

◊(define cryptokitties
   (x-ref
     "2019-09-21"
     "https://www.cryptokitties.co/"
     "CryptoKitties"))
◊(define turing-complete
   (x-ref
     "2019-09-21"
     "https://en.wikipedia.org/wiki/Turing_completeness"
     "Wikipedia: Turing completeness"))
◊(define ether-gas
   (x-ref
     "2019-09-21"
     "https://blockgeeks.com/guides/ethereum-gas/"
     "What is Ethereum Gas? [The Most Comprehensive Step-By-Step Guide Ever!]"))
◊(define multisig
   (x-ref
     "2019-09-21"
     "https://en.bitcoin.it/wiki/Multisignature"
     "Bitcoin Multisignature"))
◊(define bitcoin-script-tutorial
   (x-ref
     "2019-09-21"
     "https://blockgeeks.com/guides/best-bitcoin-script-guide/"
     "The Best Step-by-Step Bitcoin Script Guide Part 1"))
◊(define solidity
   (x-ref
     "2019-09-21"
     "https://solidity.readthedocs.io/en/v0.5.11/"
     "Solidity"))

