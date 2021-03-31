#lang pollen

◊(define-meta template "landing.html")

◊section[#:class "hero"]{
  ◊div[#:class "header"]{
    ◊div[#:class "book"]{
      ◊raw-img[#:src "/images/cover/front.png" #:alt "Why Cryptocurrencies? Book"]{}
    }

    ◊div[#:class "title"]{
      ◊;h1{◊|main-title|}
      ◊;h2{◊|subtitle|}

      ◊div[#:class "sell-it"]{
        Bitcoin is one of the most transformative technologies in history, but at the same time it's dismissed as useless or only seen as a speculative vehicle. ◊strong{Why Cryptocurrencies?} will dispel that myth by exploring real use-cases and show how cryptocurrencies are uniquely positioned to revolutionize the way we use money today.

        ◊span[#:class "afford"]{Can you afford to miss out?}

        ◊;abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
      }

      ◊nav[#:class "buttons"]{
        ◊link[rel-buy]{Buy the book}
        ◊link[read-now]{Read it online for free}
      }
    }
  }
}

◊section[#:class "what"]{
  ◊div[#:class "head"]{
    ◊h1{What makes this book special?}
  }

  ◊div[#:class "examples"]{
    ◊ex["Gives you the important conceptual ideas" "concepts"]{
      It's all too easy to get bogged down with technical details; the high-level concepts are what's truly important.
    }

    ◊ex["Easy to read" "easy"]{
      The book is beginner-friendly and doesn't require any prior knowledge.
    }

    ◊ex["Focused on utility" "utility"]{
      The focus is on concrete use-cases, instead of the more seductive speculative approach.
    }

    ◊ex["It's bigger than Bitcoin" "general"]{
      There are many more cryptocurrencies other than Bitcoin. The focus is on the general cryptocurrency concept and it's potential, instead of on a single implementation. 
    }

    ◊ex["Visits a wide variety of topics" "variety"]{
      This isn't only about cryptocurrencies. It's also about money, censorship, our financial system, and the dark secrets that Chelsea Manning and Edward Snowden revealed.
    }

    ◊ex["The order doesn't matter" "order"]{
      Chapters are self-contained, so you can jump around and read the sections you're interested in.
    }
  }
}

◊(define coming-soon
   (div #:class "soon" "Coming Soon™"))

◊div[#:class "books"]{

  ◊book-type["print" `(a ((name "print")) "Print")]{
    ◊nav[#:class "buttons"]{
      ◊link[amazon.com-print]{Pre-order from Amazon}
      ◊link[book-depository-print]{Book Depository}
      ◊link[barnes-and-nobles-print]{Barnes & Nobles}
      ◊link["#"]{Download Sample PDF}
      ◊;◊|coming-soon|
    }

    ◊ul[#:class "features"]{
      ◊li{Beautiful design}
      ◊li{Each page laid out by hand with utmost precision}
      ◊li{Hand-drawn colored illustrations}
      ◊li{ISBN: 978-91-986762-0-4}
    }
  }

  ◊book-type["ebook" "eBook"]{
    ◊nav[#:class "buttons"]{
      ◊|coming-soon|
      ◊;◊li{Buy directly from me with crypto}
      ◊;◊li{Kindle Amazon}
      ◊;◊li{iBooks Apple}
      ◊;◊li{Play Books Google}
      ◊;◊li{Nook B&N}
      ◊;◊li{EPUB Smashwords}
    }

    ◊ul[#:class "features"]{
      ◊li{Meticulously tuned CSS}
      ◊li{ISBN: 978-91-986762-1-1}
    }
  }
  ◊book-type["pdf" "PDF"]{
    ◊nav[#:class "buttons"]{
      ◊|coming-soon|
      ◊;◊li{Buy directly from me with crypto}
      ◊;◊li{Buy from X}
      ◊;◊li{Download Free Sample}
    }

    ◊ul[#:class "features"]{
      ◊li{Same hand-crafted layout as the printed version}
      ◊li{Looks the same on every reader and device}
      ◊li{ISBN: 978-91-986762-2-8}
    }
  }
  ◊book-type["web" "Web"]{
    ◊nav[#:class "buttons"]{
      ◊link[read-now]{Read Now}
    }

    ◊ul[#:class "features"]{
      ◊li{Designed to look great on every device}
      ◊li{Free!}
      ◊li{Yes, the whole book is available online for free!}
      ◊li{◊link[source-code]{The book is also open source}}
    }
  }
}


◊div[#:class "user-comments"]{
  ◊h1{Reader Comments}

  ◊section[#:class "praise"]{
    ◊; ok
    ◊qt[#:author "Roger Ver, the \"Bitcoin Jesus\""]{
      Anyone who wishes to prepare for the future must learn about cryptocurrencies. This book is an excellent place to start.
    }

    ◊; ok
    ◊qt[#:author "SerHack, author of \"Mastering Monero\""]{
      This book is a well-written resource that should be easy to understand by everyone. From the flaws of the current financial system to the future implications, you'll see what a cryptocurrency is and why it's needed.
    }

    ◊; ok
    ◊qt[#:author "/u/MobTwo"]{
      Education is the most powerful tool which you can use to change the world and investing your time reading this book may give you the highest dividends of your life.
    }

    ◊; ok
    ◊qt[#:author "Michal Salaban"
        #:src "creator of the Monero Python module"]{
      Great book. I've been recommending it to everyone willing to learn about crypto.
    }

    ◊qt[#:author "Guarda Wallet" #:url "https://www.reddit.com/r/Monero/comments/g60p91/my_book_why_cryptocurrencies_which_explains_the/fo74gqm/"]{
      The information is correct and concise. Going with what we saw, quality work has been done.
    }

    ◊; ok
    ◊qt[#:author "Josh McIntyre" #:url "https://www.reddit.com/r/CryptoCurrency/comments/g60pu0/my_book_why_cryptocurrencies_which_explains_the/fo7a7t0/"]{
      Very cool! I love the focus on utility instead of just speculation. That is what truly gives cryptocurrencies their value.
    }

    ◊; ok
    ◊qt[#:author "/u/n1ck9" #:url "https://www.reddit.com/r/btc/comments/g60oyw/my_book_why_cryptocurrencies_which_explains_the/fo7p0xq/"]{
      This is very good, easy to read and nice illustrations!
    }

    ◊; ok
    ◊qt[#:author "/u/fatalglory" #:url "https://www.reddit.com/r/btc/comments/g60oyw/my_book_why_cryptocurrencies_which_explains_the/fo8yihw/"]{
      Had a skim read of a few chapters. Looks like a great project, very impressive. You seem to have struck a great balance between giving enough information to be of practical help, while still keeping things simple enough that it's not overwhelming for people new to the space.
    }

    ◊; User suspended, so should be ok
    ◊qt[#:author "/u/AntiqueRole" #:url "https://www.reddit.com/r/Monero/comments/dmsram/why_cryptocurrencies_the_financial_crisis_bad/f56bhmo/"]{
      Well written based on facts. Really appreciate.
    }

    ◊; ok
    ◊qt[#:author "/u/LovelyDay" #:url "https://www.reddit.com/r/btc/comments/dmsrju/why_cryptocurrencies_the_financial_crisis_bad/f54swd8/"]{
      Great book, thanks for writing and making this available to all for free!
    }

    ◊; ok
    ◊qt[#:author "/u/Mercuun" #:url "https://www.reddit.com/r/CryptoCurrency/comments/bkavi8/how_do_cryptocurrencies_work/emfcxjr/"]{
      I like how you explain the game theory behind it. Incentivising to play by the rules is -in my opinion- the most innovative aspect about blockchains. (as opposed to current financial markets where the incentive to cheat is quite big and only punishable by third actors but not the value of the fraudulent transactions themself)
    }

  }
}

◊section[#:class "faq"]{
  ◊h1{Frequently Asked Questions}

  ◊div[#:class "questions"]{
    ◊faq["Do the different versions have different content?"]{
      No! They all have the same chapters, the same illustrations and the same text. Even the free web version.
    }

    ◊faq["The book is too expensive, how can I get it cheaply?"]{
      I made the web version completely free to make it available for as many people as possible. And if you buy the digital version with crypto you can pay whatever you want! That's almost free!
    }

    ◊faq["Which version pays you the most?"]{
      Buying the digital versions directly from me with crypto removes all third-party fees, leaving me with the most amount of money in the end. It also allows you to set the amount to whatever you want, so if you want to shower me with money you can do that too!
    }

    ◊faq["How can I buy the printed version with crypto?"]{
      Unfortunately I haven't found a way for you to buy it with crypto directly. What you can do is buy Amazon gift cards with crypto and use them to buy the book from Amazon. I've used ◊link[coinsbee]{Coinsbee} and ◊link[keys4coins]{Keys4Coins}, but there are many other alternatives.
    }

    ◊faq["Who made the amazing cover?"]{
      Brad Lark, ◊(blark-email)
    }

    ◊faq["Can I get the cover as a poster?"]{
      Unfortunately, not now. If there's demand for it I might look into it.
    }

    ◊faq["Can I get the cover as a background?"]{
      Yes! ...
    }

    ◊faq["What if I find an error in the book?"]{
      One of the benefits of an open-source book is that you can open an issue or send me a pull request ◊link[source-code]{on GitHub}. You can also contact me at ◊(link mailto email).
    }

    ◊faq["What if I have any other questions?"]{
      Just send me an email: ◊(link mailto email)
    }
  }
}

◊(define coinsbee
  (x-ref
    #f
    "https://www.coinsbee.com/"
    "Coinsbee"))

◊(define keys4coins
  (x-ref
    #f
    "https://www.keys4coins.com/"
    "Keys4Coins"))

◊(define amazon.com-print
  (x-ref
    #f
    "https://www.amazon.com/Why-Cryptocurrencies-What-they-matter/dp/9198676202"
    "Why Cryptocurrencies? on amazon.com"))
◊(define book-depository-print
  (x-ref
    #f
    "https://www.bookdepository.com/Why-Cryptocurrencies-Jonas-Hietala/9789198676204"
    "Why Cryptocurrencies? on Book Depository"))
◊(define barnes-and-nobles-print
  (x-ref
    #f
    "https://www.barnesandnoble.com/w/why-cryptocurrencies-jonas-hietala/1139072236"
    "Why Cryptocurrencies? on Barnes & Nobles"))


◊section[#:class "ending"]{
  ◊(follow-section)
}

◊(define (follow-section)
  `(section((class "follow"))
     (div ((class "wip"))
          "If you want to get updates on the book, consider subscribing:")
     ,subscription-form
     ))

◊(define (book-type c type . args)
   `(section ((class ,(string-append c " format")))
      (div ((class "left"))
        (h1 ,type)
        ,@args)

      (div ((class "img-wrapper"))))
)

◊(define (ex title c . args)
  `(div ((class ,(string-append c " ex")))
     (div ((class "img-wrapper")))

     (div ((class "right"))
       (h2 ,title)
       ,@args)))

◊(define (faq question . answer)
   `(div ((class "question-answer"))
      (div ((class "question"))
         ,question)
      (div ((class "answer"))
         ,@answer)))

◊(define (blark-email)
  (define email "blark@blark.com")
  `(a ((href ,(string-append "mailto:" email))) ,email))


◊(define rel-buy "#print")
◊(define read-now "/toc.html")
