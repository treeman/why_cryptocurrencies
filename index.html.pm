#lang pollen

◊(define-meta template "landing.html")

◊section[#:class "hero"]{
  ◊div[#:class "title"]{
    ◊h1{◊|main-title|}
    ◊h2{◊|subtitle|}

    ◊div[#:class "sell-it"]{
      Bitcoin is one of the most transformative technologies in history, but at the same time it's dismissed as useless or only seen as a speculative vehicle. This book will dispel that myth by exploring real use-cases and show how cryptocurrencies are uniquely positioned to revolutionize the way we use money today.

      ◊span[#:class "afford"]{Can you afford to miss out?}
    }

    ◊div[#:class "buy"]{
      BUY THE BOOK
    }

    ◊div[#:class "buy"]{
      Read it online for free
    }
  }

  ◊div[#:class "book"]{
    ◊raw-img[#:src "/images/cover/front.png" #:alt "Why Cryptocurrencies? Book"]{}
  }
}

◊section[#:class "what"]{
  ELI5

  ◊ul{
    ◊li{Have you ever wondered how Bitcoin works?}
    ◊li{Or how}
  }
}

◊book-type["print" "Print"]{
  ◊ul[#:class "buttons"]{
    ◊li{Buy from Amazon}
    ◊li{Download Sample PDF}
  }

  ◊ul[#:class "features"]{
    ◊li{Beautiful design}
    ◊li{Each page laid out by hand with utmost precision}
    ◊li{Hand-drawn colored illustrations}
    ◊li{ISBN: }
  }
}

◊book-type["ebook" "eBook"]{
  ◊ul[#:class "buttons"]{
    ◊li{Buy directly from me with crypto}
    ◊li{Kindle}
    ◊li{iBooks}
    ◊li{Play Books}
    ◊li{Nook}
    ◊li{EPUB}
  }

  ◊ul[#:class "features"]{
    ◊li{Meticulously tuned CSS}
    ◊li{ISBN: }
  }
}
◊book-type["pdf" "PDF"]{
  ◊ul[#:class "buttons"]{
    ◊li{Buy directly from me with crypto}
    ◊li{Buy from X}
    ◊li{Download Free Sample}
  }

  ◊ul[#:class "features"]{
    ◊li{Same hand-crafted design and layout as the printed version}
    ◊li{Looks the same on every reader and device}
    ◊li{ISBN: }
  }
}
◊book-type["web" "Web"]{
  ◊ul[#:class "buttons"]{
    ◊li{Read Now}
  }

  ◊ul[#:class "features"]{
    ◊li{Designed to look great on every device}
    ◊li{Free!}
    ◊li{Yes, the whole book is available to read online for free!}
  }
}


◊section[#:class "praise"]{
  ◊qt[#:author "Roger Ver, the \"Bitcoin Jesus\""]{
    Anyone who wishes to prepare for the future must learn about cryptocurrencies. This book is an excellent place to start.
  }

  ◊qt[#:author "SerHack, author of \"Mastering Monero\""]{
    This book is a well-written resource that should be easy to understand by everyone. From the flaws of the current financial system to the future implications, you'll see what a cryptocurrency is and why it's needed.
  }

  ◊qt[#:author "/u/MobTwo"]{
    Education is the most powerful tool which you can use to change the world and investing your time reading this book may give you the highest dividends of your life.
  }

  ◊qt[#:author "/u/e-mess" #:url "https://www.reddit.com/r/Monero/comments/g60p91/my_book_why_cryptocurrencies_which_explains_the/fo82l84/"]{
    Great book. I've been recommending it to everyone willing to learn about crypto.
  }

  ◊qt[#:author "Guarda Wallet" #:url "https://www.reddit.com/r/Monero/comments/g60p91/my_book_why_cryptocurrencies_which_explains_the/fo74gqm/"]{
    The information is correct and concise. Going with what we saw, quality work has been done.
  }

  ◊qt[#:author "/u/pgh_ski" #:url "https://www.reddit.com/r/CryptoCurrency/comments/g60pu0/my_book_why_cryptocurrencies_which_explains_the/fo7a7t0/"]{
    Very cool! I love the focus on utility instead of just speculation. That is what truly gives cryptocurrencies their value.
  }

  ◊; ok
  ◊qt[#:author "/u/n1ck9" #:url "https://www.reddit.com/r/btc/comments/g60oyw/my_book_why_cryptocurrencies_which_explains_the/fo7p0xq/"]{
    This is very good, easy to read and nice illustrations!
  }

  ◊qt[#:author "/u/fatalglory" #:url "https://www.reddit.com/r/btc/comments/g60oyw/my_book_why_cryptocurrencies_which_explains_the/fo8yihw/"]{
    Had a skim read of a few chapters. Looks like a great project, very impressive. You seem to have struck a great balance between giving enough information to be of practical help, while still keeping things simple enough that it's not overwhelming for people new to the space.
  }

  ◊; User suspended, so should be ok
  ◊qt[#:author "/u/AntiqueRole" #:url "https://www.reddit.com/r/Monero/comments/dmsram/why_cryptocurrencies_the_financial_crisis_bad/f56bhmo/"]{
    Well written based on facts. Really appreciate.
  }

  ◊qt[#:author "/u/LovelyDay" #:url "https://www.reddit.com/r/btc/comments/dmsrju/why_cryptocurrencies_the_financial_crisis_bad/f54swd8/"]{
    Great book, thanks for writing and making this available to all for free!
  }

  ◊; ok
  ◊qt[#:author "/u/Mercuun" #:url "https://www.reddit.com/r/CryptoCurrency/comments/bkavi8/how_do_cryptocurrencies_work/emfcxjr/"]{
    I like how you explain the game theory behind it. Incentivising to play by the rules is -in my opinion- the most innovative aspect about blockchains. (as opposed to current financial markets where the incentive to cheat is quite big and only punishable by third actors but not the value of the fraudulent transactions themself)
  }

}

◊section[#:class "faq"]{
  ◊h1{Frequently Asked Questions}
}

◊section[#:class "author"]{
  ◊h1{Who Am I?}
}

◊section[#:class "ending"]{
  ◊h1{Updated}
}

◊(define (book-type c type . args)
   `(section ((class ,(string-append c " format")))
      (div ((class "left"))
        (h1 ,type)
        ,@args)

      (div ((class "right"))
        (img ((src "/images/cover/front.png")))))
)
