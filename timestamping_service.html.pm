#lang pollen

◊(define-meta title "Timestamping service")
◊(define-meta subtitle "Verifiable proof of knowledge at a certain time")
◊(define-meta published "2019-09-21T00:00:00+01:00")
◊(define-meta updated "2020-10-24T11:39:47+02:00")
◊(define-meta uuid "b92733e8-9356-487e-abb9-510ac0cc5735")
◊(define-meta template "chapter.html")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Julian Assange"
      #:url julian
      #:date "Sep 16, 2014"]{
    Bitcoin is an extremely important innovation, but not in the way most people think. Bitcoin's real innovation is a globally verifiable proof publishing at a certain time. The whole system is built on that concept and many other systems can also be built on it. The blockchain nails down history, breaking Orwell's dictum of "He who controls the present controls the past and he who controls the past controls the future."
  }
}

◊(define julian
   (x-ref
     "2019-09-21"
     "https://www.reddit.com/r/technology/comments/2ghp54/i_am_julian_assange_ama_about_my_new_book_when/ckjasj0/"
     "Julian Assange (2014) I am Julian Assange. AMA about my new book, \"When Google Met WikiLeaks.\""))

In ◊link[how_do_cryptocurrencies_work]{How do cryptocurrencies work?} we saw that cryptocurrencies work by preventing ◊link[double-spending]{double spending} coins, and the system chooses one of two potentially valid transactions. While doing so it also creates an order between blocks and transactions, which can be used as the basis for a decentralized timestamping service.


◊subhead{What is a timestamping service?}

A timestamping service offers proof that a message or document existed at a certain time with certain contents. The idea of timestamping information is ◊link[trusted-timestamping]{according to Wikipedia} centuries old, dating back to ◊em{at least} the 17◊sup{th} century.

A modern example is the ◊link[wayback-machine]{Wayback Machine}, a service which allows you to see how a certain website looked at a certain time. A bit like traveling back in time, but with your web-browser instead of a ◊link[delorean]{DeLorean}.◊mn{back-to-the-future}

◊ndef["back-to-the-future"]{
    The DeLorean is the time machine in the ◊em{Back To The Future} movies. They're amazing movies but unfortunately the ◊link[back-to-the-future-timetravel]{time travel theory isn't really sound}.
}

◊(define back-to-the-future-timetravel
  (x-ref
    "2019-09-21"
    "https://www.overthinkingit.com/2009/01/16/how-time-travel-works-in-back-to-the-future/"
    "Overthinking it (2009) How Time Travel Works (and doesn’t) in Back To The Future [BTTF Week]"))
◊(define delorean
  (x-ref
    "2019-09-21"
    "https://en.wikipedia.org/wiki/DeLorean_time_machine"
    "Wikipedia: Deloran time machine"))

Let's travel back in time and look at the site ◊link[hn]{Hacker News}, a tech oriented site where you can discuss news stores. I've lost a lot of time on the site reading insightful comments or getting upset at other less insightful comments.◊mn{hn-bitcoin}

◊ndef["hn-bitcoin"]{
    I wanted to use a story of Bitcoin as an example, but they never got any traction that early on.

    Interestingly enough Hacker News is full of people extremely skeptical of cryptocurrencies, who often comment that cryptocurrencies don't have a single legal use-case. This skepticism and misunderstanding, even from highly technical people, was one of the reasons I started writing this book.
}

◊img[#:src "images/hn-html.png"
     #:alt "Hacker News on Mars 1st, 2011."]{
    The top three stories on ◊link[hn-wayback-ref]{Hacker News on Mars 1st, 2011} according to the Wayback Machine.  
    I tried to reproduce the site appearance, but it's not pixel perfect.
}

As long as we can trust the Wayback Machine (and I do consider them generally trustworthy) we can be fairly sure this is correct. Letting a trusted party like the Wayback Machine handle timestamping, called ◊def[trusted-timestamping]{trusted timestamping}, is a solved problem with different kinds of standards but---as the name implies---there's always the caveat of requiring a trusted party to verify the timestamps.

◊note-pos[#:top -36]{back-to-the-future}
◊note-pos[#:top -29]{hn-bitcoin}

◊(define trusted-timestamping
  (x-ref
    "2019-09-21"
    "https://en.wikipedia.org/wiki/Trusted_timestamping"
    "Wikipedia: Trusted timestamping"))
◊(define hn-wayback
    "https://web.archive.org/web/20110301181127/http://news.ycombinator.com/")
◊(define hn-wayback-ref
  (x-ref
    "2019-09-21"
    hn-wayback
    "Hacker News (Wayback Machine, Mars 1st, 2011)"))
◊(define hn
  (x-ref
    "2019-09-21"
    "http://news.ycombinator.com/"
    "Hacker News"))


◊subhead{Usage examples}

What is a timestamping service useful for? Here are some examples:

◊ul{
    ◊li{Proof of invention

        Surprisingly often in history a discovery happens ◊link[multiple-discoveries]{independently and at around the same time}. What if you come up with an idea or an invention and you didn't want to reveal it yet but still wanted to claim priority?

        You would use timestamping. For example Robert Hook ◊link[ceiiinosssttuv]{used it in 1660} when discovering Hooke's law by publishing the anagram ◊em{ceiiinosssttuv} and later published the translation ◊em{ut tensio sic vis} (latin for "as is the extension, so is the force").◊mn{wiki-tensio}

        ◊ndef["wiki-tensio"]{
            Interestingly if you search for "ceiiinosssttuv" on Wikipedia you'll be redirected to Hooke's law, without an explanation why.
        }

        ◊note-pos{wiki-tensio}
    }
    ◊li{Testaments

        If you're someone who likes to write testaments maybe you want to update the one you have. But after you die, how will people tell which is the newest? Sure you can write a date on the paper, but that can be altered by people who want the more beneficial one to be valid.

        The solution is to use a timestamping service. If you use one based on a cryptocurrency there's no possibility of altering the dates, not even by your lawyer.◊mn{wills}

        ◊ndef["wills"]{
            Of course the lawyer might try to forge your testament completely. If that's a worry you might want to ◊link[gpg-sign]{sign your testament digitally}, and make sure everyone has your key so they can themselves verify the validity of the document (strongly consider distributing a how-to document as well).
        }

        ◊note-pos{wills}
    }
    ◊li{Proving discovery of software bugs

        What if you've discovered a major software bug and want to disclose it anonymously, but still want the ability to prove you were the one who found it? ◊link[rel-bug]{Later in the chapter} we'll go into details of how the discoverer of one of the most catastrophic bugs in Bitcoin ever accomplished this using timestamping.
    }
}


◊(define rel-bug `("#a-real-life-example" "A real-life example"))


◊subhead{Decentralized timestamping}

With cryptocurrencies it's possible to do away with the trusted party requirement and offer a decentralized timestamping service. We know that there's ◊link[how_do_cryptocurrencies_work]{no single trusted party} that manages a cryptocurrency and instead many cooperate and reach consensus together. Therefore we only need to decide how to embed verifiable data and timestamps into a cryptocurrency:

◊ol{
  ◊li{Prepare data

      Because we might want to reveal our message at a later date we don't want to store the message in the clear. We can use an anagram like Robert Hook used, some kind of encryption with a key or a ◊link[hash-functions]{hash function} to obfuscate the message.

      After we have the obfuscated message we want to verify we can ◊link[embedding-data]{embed it into a cryptocurrency}.
  }
  ◊li{Retrieve timestamps

    Transactions in an older block are older, transactions in a newer block are newer and transactions in the same block occur at the same time.◊sn{partial-order} You can observe, in a decentralized way, when a block with your transaction is created and use that as your message timestamp.

    ◊ndef["partial-order"]{
        A blockchain creates a ◊link[partial-order]{partial order} between transactions where there's no order between transactions in the same block.
    }

    The blocks themselves don't contain a trustworthy timestamp,◊sn{miners-timestamp} but we can use the many different nodes observing the network to create an estimation. This could for example be the timestamps recorded by two nodes:

    ◊ndef["miners-timestamp"]{
        There is actually a timestamp in a block that the miner who creates the block can set themselves---with ◊link[block-timestamp]{some constraints}. If we blindly trust that timestamp we put our trust in that miner.

        Using the time different nodes received the block is a more decentralized approach, but trusting the miner is probably good enough for most practical examples because the timestamp cannot diff too much. As more blocks are built on top by other miners we can be sure that the timestamp is reasonably correct.
    }

    ◊figure{
      ◊stable{
      Block number      Node #1                 Node #2
      #1001             2019-09-14 10:01        2019-09-14 10:01
      #1002             2019-09-14 10:15        2019-09-14 10:27
      ...
      #1007             2019-09-14 11:07        2019-09-14 11:08
      }
      ◊decoded-figcaption{
        A couple of blocks and their observed timestamps by two different nodes.  
        Blocks 1003--1006 are omitted.
      }
    }

    Here we see that the timestamps differ, at most by ◊nbsp{12 minutes}. Although not visible in the table the nodes tell us that blocks 1003--1006 happened some time between 10:15 and 11:08. We cannot be sure down to seconds or minutes, but it gives a good estimate if we're only interested in an hourly or daily timestamp.◊sn{small-difference}

    ◊note-pos[#:top -33]{partial-order}
    ◊note-pos[#:top -26]{miners-timestamp}
    ◊note-pos{small-difference}

    ◊ndef["small-difference"]{
        In practice well connected nodes (with up to date clocks) will display a small time difference because blocks usually travel quickly through the network.  A ◊nbsp{12 minute} time difference is extremely unlikely and unwanted, I only used it as an illustrative example.

        The network requires that blocks travel between miners quickly otherwise it increases the risk for ◊link[forks]{forks} or hurts smaller miners disproportionally.
    }
  }
}

◊(define block-timestamp
  (x-ref
    "2019-09-21"
    "https://en.bitcoin.it/wiki/Block_timestamp"
    "bitcoin.it wiki: Block timestamp"))

This way we have the basis for a decentralized timestamping service. Insert an obfuscated message in a transaction and afterwards you can reveal the message and use the creation time of the block the transaction is included in as your timestamp. Also comparing two messages to find which the oldest is very simple: just check which block came first---there's no need to look at a timestamp.

It's much easier to use (I'll go through an example ◊link[rel-easy-example]{step-by-step} at the end of the chapter) compared to getting your message included in a publication like Hook did. You also don't have to trust a timestamping service---the solution is fully opaque and you can verify it yourself.

◊(define rel-easy-example
  `("#we-can-do-it-ourselves" "We can do it ourselves"))

◊(define partial-order
  (x-ref
    "2019-09-21"
    "https://en.wikipedia.org/wiki/Partially_ordered_set"
    "Wikipedia: Partially ordered set"))
◊(define ceiiinosssttuv
  (x-ref
    "2019-09-21"
    "https://www.stem.org.uk/system/files/elibrary-resources/legacy_files_migrated/8469-catalyst_20_2_438.pdf"
    "Catalyst (2009) Hooke’s law of springs (PDF)"))
◊(define multiple-discoveries
  (x-ref
    "2019-09-21"
    "https://en.wikipedia.org/wiki/List_of_multiple_discoveries"
    "Wikipedia: List of multiple discoveries"))
◊(define 600-microseconds
  (x-ref
    "2019-09-21"
    "https://medium.com/@awemany/600-microseconds-b70f87b0b2a6"
    "awemany (2018) 600 Microseconds: A perspective from the Bitcoin Cash and Bitcoin Unlimited developer who discovered CVE-2018–17144"))
◊(define inflation-bug
  (x-ref
    "2019-09-21"
    "https://nvd.nist.gov/vuln/detail/CVE-2018-17144"
    "National Vulnerability Database (2018) CVE-2018-17144 Detail"))
◊(define inflation-bug-reddit
  (x-ref
    "2019-09-21"
    "https://www.reddit.com/r/btc/comments/9huu11/600_microseconds_how_cve201817144_was_discovered/"
    "awemany (2018) 600 Microseconds - How CVE-2018-17144 was discovered"))
◊(define inflation-bug-timestamp
  (x-ref
    "2019-09-21"
    "https://originstamp.org/s/5c45a1ba957362a2ba97c9f8c48d4d59d4fa990945b7094a8d2a98c3a91ed9b6"
    "originstamp: Timestamp Information: 5c45a1ba957362a2ba97c9f8c48d4d59d4fa990945b7094a8d2a98c3a91ed9b6"))
◊(define gpg-sign
  (x-ref
    "2019-09-21"
    "https://www.digitalocean.com/community/tutorials/how-to-use-gpg-to-encrypt-and-sign-messages"
    "Justin Ellingwood (2017) How To Use GPG to Encrypt and Sign Messages"))


◊subhead{A real-life example}

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

Which has the SHA-256 hash:

◊code{5c45a1ba957362a2ba97c9f8c48d4d59d4fa990945b7094a8d2a98c3a91ed9b6}

And inserted it ◊link[inflation-bug-timestamp]{into the BTC blockchain} using a timestamping service. See "Advanced Verification" on the website to find the hash and see the ◊link[hash-functions]{explanation of hash functions} for why the hash is enough.

This proves that reddit user awemany had knowledge of the inflation bug before it was disclosed and therefore that he was the one who found it.◊mn{sufficient}

Please read ◊link[600-microseconds]{his writeup} of how he found the bug and the related ◊link[inflation-bug-reddit]{discussion on reddit} for more info.

◊note-pos[#:top -7]{sufficient}

◊ndef["sufficient"]{
    Technically it doesn't conclusively prove he was the one who found it, only that he knew about the bug before everyone else.
}



◊subhead{We can do it ourselves}

The previous example used a timestamping service which did the conversions for us, but it's actually easy to do everything ourselves.

Let's say we want to obscure and timestamp the message Hook used:

◊code{as is the extension, so is the force}

Let's now encode and timestamp it using the Bitcoin Cash blockchain:

◊ol{
    ◊li{Encode the message using SHA-256

        On Linux we can run the command:◊mn{others-command}

        ◊ndef["others-command"]{
            I'm sure you can find a tool for Windows if you search for it. Be sure to exclude the newline (which the -n flag is for). You can also find websites for it, but don't use them if the message is sensitive.
        }

        ◊code{
            echo -n "as is the extension, so is the force" | sha256sum
        }

        Giving us the SHA-256 hash:

        ◊code{
            dab965bb19823669b8481846b9672c694a9af1b808314956b43154a0472942d8
        }

        ◊note-pos[#:top -10]{others-command}
    }
    ◊li{Insert it in a transaction using OP_RETURN

        For this step you need a wallet capable of creating a transaction with a custom OP_RETURN field, I used the desktop version of ◊link[electroncash]{Electron Cash 4.0.14} and enabled the OP_RETURN field in settings. You need to have enough money to pay a small fee and use a small amount to transfer.◊mn{tx-value}

        ◊img[#:src "images/electroncash-opreturn.png"
             #:title "Electron Cash custom OP_RETURN"
             #:alt "Electron Cash custom OP_RETURN."]{
          Custom OP_RETURN using ◊link[electroncash]{Electron Cash}.
        }

        ◊ndef["tx-value"]{
            My transaction transferred around $0.05 with a $0.0008 fee. It might even be possible to transfer zero coins---as long as you pay the transaction fee---but the wallet I used had a minimum transaction limit.
        }

        We can double-check the transaction on a blockexplorer, ◊link[transaction-ex]{such as Blockchair}, to see that the OP_RETURN value matches our SHA-256 hash (look for the decoded OP_RETURN field).◊mn{j@}

        ◊note-pos[#:top -29]{tx-value}
        ◊note-pos{j@}
    }
}

With that our timestamp is prepared and nobody can see our original message, only the SHA-256 hash. When we're ready to reveal our message to the world, all we have to do is show everyone the message and how to verify the timestamp:

◊(define transaction-ex
  (x-ref
    "2019-09-21"
    "https://blockchair.com/bitcoin-cash/transaction/586783e17fadace136365490fd83ba59390ca55e7205ee74fbc7db2daa012ad3"
    "Bitcoin Cash transaction 586783e17fadace136365490fd83ba59390ca55e7205ee74fbc7db2daa012ad3"))
◊(define transaction-ex2
  (x-ref
    "2019-09-21"
    "https://bch.btc.com/586783e17fadace136365490fd83ba59390ca55e7205ee74fbc7db2daa012ad3"
    "Bitcoin Cash transaction 586783e17fadace136365490fd83ba59390ca55e7205ee74fbc7db2daa012ad3"))

◊ol{
    ◊li{Locate the hash in the blockchain

        It's probably easiest if we point out ◊link[transaction-ex]{which transaction} we've included our hash in. This is the txid:

        ◊code{586783e17fadace136365490fd83ba59390ca55e7205ee74fbc7db2daa012ad3}

        ◊link[transaction-ex2]{Here's the same transaction} using another blockexplorer.

        ◊ndef["j@"]{
            Blockchair includes the prefix "j@" in the decoded OP_RETURN field while other blockexplorers I checked don't. It's the encoding (64) Electron Cash inserted into the transaction and isn't part of our hash.
        }
    }
    ◊li{Verify the SHA-256 hash

        The message should encode to the the same hash that's included in the blockchain.
    }
    ◊li{Lookup the timestamp

        According to ◊link[transaction-ex]{Blockchair} the transaction was included in a block mined 20:17 September 15, 2019 (UTC). Verifying the timestamp with other blockexplorers or full nodes is left as an exercise to the reader, just be cautious of timezone differences.
    }
}

We now have a trusted timestamp for our message, backed by math instead of trust.


◊; Generate HN-like html
◊(define (hn-html . caption)
  (define base-url hn-wayback)
  (define (post n title post-url domain points usr comments comments-url)
    `((tr
         (td ((class "title") (valign "top") (align "right")) ,n ".")
         (td (span ((class "arrow")) "▲"))
         (td ((class "title"))
            (a ((href ,post-url))
               ,title)
            " "
            (span ((class "comhead")) ,(string-append "(" domain ")"))))
      (tr
         (td ((colspan "2")))
         (td ((class "subtext"))
           ,points " points by "
           (a ((href ,(string-append base-url "user?id=" usr))) ,usr)
           " 2 hours ago | "
           (a ((href ,(string-append base-url comments-url))) ,comments " comments")))
      (tr ((style "height:5px")))))

  `(figure ((class "hn-fig"))
    (div ((class "hn"))
     (div ((class "header"))
       (span ((class "logo"))
         (a ((href ,base-url))
           (img ((src "/images/y18.gif")))))
       (span ((class "pagetop"))
         (a ((href ,(string-append base-url "news")) (class "hn-title")) "Hacker News")
         (a ((href ,(string-append base-url "newest"))) "new")
         " | "
         (a ((href ,(string-append base-url "newcomments"))) "comments")
         " | "
         (a ((href ,(string-append base-url "ask"))) "ask")
         " | "
         (a ((href ,(string-append base-url "jobs"))) "jobs")
         " | "
         (a ((href ,(string-append base-url "submit"))) "submit")))

     (table ((cellspacing "0") (cellpadding "0") (border "0"))
       (tbody
        ,@(post "1"
                "Natalie Portman - Scientist"
                "https://web.archive.org/web/20110301181127/http://www.nytimes.com/2011/03/01/science/01angier.html?ref=natalieportman"
                "nytimes.com"
                "100"
                "mhb"
                "43"
                "item?id=2275844")
        ,@(post "2"
                "Matt Blaze: How ACM and IEEE Shake Down Science"
                "https://web.archive.org/web/20110301181127/http://www.crypto.com/blog/copywrongs"
                "crypto.com"
                "50"
                "alterego"
                "9"
                "item?id=2276033")
        ,@(post "3"
                "The Redis Manifesto"
                "https://web.archive.org/web/20110301181127/http://antirez.com/post/redis-manifesto.html"
                "antirez.com"
                "116"
                "tednaleid"
                "14"
                "item?id=2275413"))))
     (figcaption ,@(std-decode caption))))

