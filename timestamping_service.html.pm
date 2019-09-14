#lang pollen

◊(define-meta title "Timestamping service")
◊(define-meta subtitle "Verifiable proof of knowledge at a certain time")
◊(define-meta updated "2019-09-13T15:26:37+02:00")
◊(define-meta uuid "b92733e8-9356-487e-abb9-510ac0cc5735")

◊epigraph{
  ◊qt[#:author "Julian Assange"
      #:url "https://www.reddit.com/r/technology/comments/2ghp54/i_am_julian_assange_ama_about_my_new_book_when/ckjasj0/"
      #:date "Sep 16, 2014"]{
    Bitcoin is an extremely important innovation, but not in the way most people think. Bitcoin's real innovation is a globally verifiable proof publishing at a certain time. The whole system is built on that concept and many other systems can also be built on it. The blockchain nails down history, breaking Orwell's dictum of "He who controls the present controls the past and he who controls the past controls the future."
  }
}

In ◊link[how-do-cryptos-work]{How do cryptocurrencies work?} we saw that cryptocurrencies work by preventing ◊link[double-spending]{double spending} coins, and the system chooses one of two potentially valid transactions. But it also create an order between blocks and transactions, which can be used to as the basis for a decentralized timestamping service.

◊(define how-do-cryptos-work "/how_do_cryptocurrencies_work.html")
◊(define double-spending "/how_do_cryptocurrencies_work.html#copying-a-coin-&-double-spending")


◊subhead{What is a timestamping service?}

A timestamping service offers proof that a message or document existed at a certain time with certain contents. The idea of timestamping information is ◊link[trusted-timestamping]{according to Wikipedia} centuries old, dating back to at least the 17th century.

A modern example is the ◊link[wayback-machine]{Wayback Machine}, a service which allows you to see how a certain website looked at a certain time. A bit like traveling back in time, but with your web-browser instead of a ◊link[delorean]{DeLorean}.

◊todo{Image of a DeLorean?}

◊(define delorean "https://en.wikipedia.org/wiki/DeLorean_time_machine")

Let's travel back in time and look at the site Hacker News. It's a tech oriented site where you can vote and comment on stories and I've lost a lot of time reading the (sometimes) insightful comments or getting upset at other less insightful comments.  ◊link[hn-wayback]{This is a how Hacker News} looked Mars 1st, 2011 according to the Wayback Machine and here are the top three stories:

◊ol{
    ◊li{Natalie Portman - Scientist (nytimes.com)}
    ◊li{Matt Blaze: How ACM and IEEE Shake Down Science (crypto.com)}
    ◊li{The Redis Manifesto (antirez.com)}
}

As long as we can trust the Wayback Machine (and I do consider them generally trustworthy) we can be fairly sure this is correct. ◊link[trusted-timestamping]{◊em{Trusted timestamping}} is a solved problem with different kinds of standards but---as the name implies---there's always the caveat of requiring a trusted party to verify the timestamps.

◊(define wayback-machine "https://web.archive.org/")
◊(define trusted-timestamping "https://en.wikipedia.org/wiki/Trusted_timestamping")
◊(define hn-wayback "https://web.archive.org/web/20110301181127/http://news.ycombinator.com/")


◊subhead{Decentralized timestamping}

With cryptocurrencies it's possible to do away with the trusted party requirement and offer a decentralized timestamping service. We know that there's ◊link[how-do-cryptos-work]{no single trusted party} that manages a cryptocurrency, but many who cooperate and reach consensus together. Therefore we only need to do two things:

◊ol{
  ◊li{Insert data to check against.

      ◊todo{Explain one-way hashes}

      This is possible as most cryptocurrencies supports additional data on transactions. We insert a hash of the data on the blockchain (which is as good as storing the whole document for security).
  }
  ◊li{Retrieve timestamps.

    ◊todo{Explain how timestamping works}

    Transactions in an older block are older, transactions in a newer block are newer and transactions in the same block occur at the same time.◊sn{partial-order} You can also observe, in a decentralized way, when blocks are created and use that as your timestamp.

    So for example if we have different block explorers 

    ◊ndef["partial-order"]{
        A blockchain creates a partial order between transactions.
    }

    ◊figure{
      ◊stable{
      Block number      Node #1                 Node #2
      #1001             2019-09-14 10:01        2019-09-14 10:01
      #1002             2019-09-14 10:15        2019-09-14 10:27
      ...
      #1007             2019-09-14 11:07        2019-09-14 11:08
      }
      ◊figcaption{Nodes may receive blocks on different timestamps.}
    }
  }
}

This way we have the basis for a decentralized timestamping service. It's far superior to trusted timestamping because it gives you a mathematical proof instead of having to trust the reputation of whatever service you use. The solution is fully opaque and you can verify it yourself (as long as you know how). Basing your timestamp on a major cryptocurrency is also much more robust. The risk that for example Bitcoin completely disappear is much lower than the risk of your trusted local lawyer goes bankrupt or dies.

◊(define blockchair-ex "https://blockchair.com/bitcoin/block/594760")
◊(define btc-ex "https://btc.com/0000000000000000001350917aa3ff6afb6900fc6a00f3f208a2dea4e7608ad0")
◊(define viabtc-ex "https://explorer.viabtc.com/btc/block/0000000000000000001350917aa3ff6afb6900fc6a00f3f208a2dea4e7608ad0")



◊subhead{Usage examples}

What is a timestamping service useful for? Here are some examples:

◊ol{
    ◊li{Proof of invention.

        Surprisingly often history a discovery happens ◊link[multiple-discoveries]{independently and at around the same time}. What if you come up with an idea or an invention and you didn't want to reveal it yet but still wanted to claim priority?

        You would use timestamping. For example Robert Hook ◊link[ceiiinosssttuv]{used it in 1660} when discovering Hooke's law by publishing the anagram ◊em{ceiiinosssttuv} and later published the translation ◊em{ut tensio sic vis} (latin for "as is the extension, so is the force").◊sn{wiki-tensio}

        ◊ndef["wiki-tensio"]{
            Interestingly if you search for "ceiiinosssttuv" on Wikipedia you'll be redirected to Hooke's law, but without explaining why.
        }
    }
    ◊li{Testaments.

        If you're someone who likes to write testaments maybe you want to update the one you have. But after you die, how will people tell which is the newest? Sure you can write a date on the paper, but that can be altered by people who want a more beneficial one to be valid.

        The solution is to use a timestamping service. If you use one based on a cryptocurrency there's no possibility of altering the dates, not even by your lawyer.◊sn{wills}

        ◊ndef["wills"]{
            Of course the lawyer might try to forge your testament completely. If that's a worry you might want to ◊link[gpg-sign]{sign your testament digitally}, and make sure everyone has your key so they can themselves verify the validity of the document (consider distributing an how-to document as well).
        }
    }
    ◊li{Proving discovery of software bugs.

        One of the most catastrophic bugs in recent years, ◊link[inflation-bug]{CVE-2018–17144}, which if left unpatched would allow an attacker to print an unlimited amount of Bitcoin. It was found and disclosed by someone who at least initially wanted to stay anonymous, but he wanted the ability to prove he was the one who found it.

        Therefore he decided to create this message:

        ◊code{
            BitcoinABC does not check for duplicate inputs when processing a block,
            only when inserting a transaction into the mempool.

            This is dangerous as blocks can be generated with duplicate transactions
            and then sent through e.g. compact block missing transactions and avoid
            hitting the mempool, creating money out of thin air.

            /u/awemany
        }

        Which has the sha256 hash:

        ◊code{5c45a1ba957362a2ba97c9f8c48d4d59d4fa990945b7094a8d2a98c3a91ed9b6}

        And inserted it ◊link[inflation-bug-timestamp]{into the BTC blockchain} using a timestamping service. See "Advanced Verification" to find the hash.

        This proves that reddit user awemany had knowledge of the inflation bug before it was disclosed and therefore that he was the one who found it.◊sn{sufficient}

        ◊ndef["sufficient"]{
            Technically it doesn't conclusively proves he was the one who found it, only that he knew about the bug before everyone else. In this case it was also an afterthought and he only created the timestamp after having disclosed the bug.
        }

        Please read ◊link[600-microseconds]{his writeup} of how he found the bug and the related ◊link[inflation-bug-reddit]{discussion on reddit} for more info.
    }
}

◊(define ceiiinosssttuv "https://www.stem.org.uk/system/files/elibrary-resources/legacy_files_migrated/8469-catalyst_20_2_438.pdf")
◊(define hookes-law "https://en.wikipedia.org/wiki/Hooke%27s_law")
◊(define multiple-discoveries "https://en.wikipedia.org/wiki/List_of_multiple_discoveries")
◊(define leibniz-newton "https://en.wikipedia.org/wiki/Leibniz%E2%80%93Newton_calculus_controversy")
◊(define 600-microseconds "https://medium.com/@awemany/600-microseconds-b70f87b0b2a6")
◊(define inflation-bug "https://nvd.nist.gov/vuln/detail/CVE-2018-17144")
◊(define inflation-bug-reddit "https://www.reddit.com/r/btc/comments/9huu11/600_microseconds_how_cve201817144_was_discovered/")
◊(define inflation-bug-timestamp "https://originstamp.org/s/5c45a1ba957362a2ba97c9f8c48d4d59d4fa990945b7094a8d2a98c3a91ed9b6")

◊; Proof of invention legal in France.
◊(define soleau-envelope "https://en.wikipedia.org/wiki/Soleau_envelope")
◊(define gpg-sign "https://www.digitalocean.com/community/tutorials/how-to-use-gpg-to-encrypt-and-sign-messages")


◊subhead{A hands-on example}

◊; TODO use electron cash and make a custom OP_RETURN message
◊(define opentimestamps "https://opentimestamps.org/")
◊(define timestamping-tech "https://news.bitcoin.com/the-tech-to-timestamp-data-in-bitcoins-blockchain-has-evolved-far-past-single-file-uploads/")

