#lang pollen

◊(define-meta title "A global currency")
◊(define-meta subtitle "Money without borders")
◊(define-meta published "2019-12-10T00:00:00+01:00")
◊(define-meta updated "2020-10-24T11:38:56+02:00")
◊(define-meta uuid "bec2e177-8ccd-4f8d-a90e-a3d0b4269e43")

◊(clear-sidenotes)

◊img[#:src "/images/global.png" #:alt "You can send coins all over the world."]{}

Cryptocurrencies don't have any borders. They allow you to send and receive money from anywhere in the world, to bypass sanctions and border control, opt-out of local monetary policies, and use a currency that's global to an extent we've never seen before.


◊subhead{Remittance}

Sending money to other countries, called ◊def{remittance}, is one of the first promoted use-cases for cryptocurrencies. The benefits over existing solutions, such as Western Union, are numerous:◊mn{compare-to-banks}

◊ndef["compare-to-banks"]{
    Why not make a comparison to bank transfers? Because the problem with remittance is transfers to countries far away, often poorer countries. There's no problem with transferring money from Sweden to Finland for example---bank transfers work great there. 

    But it's very difficult to make a bank transfer from Sweden to Zimbabwe; or impossible, if you ◊link[for_the_unbanked]{don't have a bank account at all}. With Western Union you can effectively send physical cash, to many parts of the world.
}

◊ol{
    ◊li{You can send to any country

        For example it's not possible to send money from Sweden to Venezuela or North Korea using Western Union (or any bank). With cryptocurrencies you can.
    }
    ◊li{Cheaper

        The cost to use Western Union varies depending on the amount, the target country, your payment method and how the recipient should receive the money.

        ◊figure{
            ◊table-body{
                ◊tr{◊td{}              ◊tds{United States (to bank)}  ◊tds{Zimbabwe (cash pick up)}}
                ◊tr{◊tds{Credit Card}  ◊td{$27}                       ◊td{$56.50}}
                ◊tr{◊tds{Debit Card}   ◊td{$15}                       ◊td{$42}}
                ◊tr{◊tds{Bank Account} ◊td{$0.99}                     ◊td{$21}}
            }
            ◊figcaption{
                Western Union fees to various countries, using different payment methods, measured in USD.◊br{}
                You can either send it to a bank account or as a cash pick up. It's cheaper to send it to a bank account, but it's not always available. I could only choose the cash pick up option for Zimbabwe.◊br{}
                Fees are calculated from sending $400 using ◊link[western-union-fees]{their homepage} in 2019-11-15.
            }
        }

        This is expensive compared to ◊link[cryptocurrency-fees]{cryptocurrency fees}, which are ◊strong{less than a cent} no matter the amount or receiving country.

◊;https://www.westernunion.com/us/en/web/send-money/start
    }
    ◊li{Faster

        It can take between zero to six days for Western Union to process a payment to a bank account, and sometimes only minutes for a cash pickup. If you want a cash pickup you will of course have to visit a physical store, which can take some time especially as they're not always open.

        Cryptocurrencies ◊link[speed-comparisons]{are sent in seconds} (and become irreversible in an hour).
    }
    ◊li{Send any amount

        Western Union also has limits on the amount you can send. I got a limit of $5,000 to Zimbabwe for example. It's a fairly high limit, but it cannot compare to cryptocurrencies where you can send any amount with a single transaction.◊mn{large-BTC-tx}

        ◊note-pos{large-BTC-tx}

        ◊ndef["large-BTC-tx"]{
            Someone transferred 94,504 BTC---valued around ◊nbsp{1 billion USD} at the time---◊link[large-BTC-tx]{with a single transaction}.
        }
    }
}

The big drawback with cryptocurrencies is that you're sending cryptocurrency coins, and if you wanted fiat money you need to find a way to exchange the coins for fiat, which might be difficult, slow or expensive.

◊(define western-union-fees
   (x-ref
     "2019-12-10"
     "https://www.westernunion.com/us/en/web/send-money/start"
     "Western Union: Send Money Online"))
◊(define large-BTC-tx
   (x-ref
     "2019-12-10"
     "https://blockchair.com/bitcoin/transaction/4410c8d14ff9f87ceeed1d65cb58e7c7b2422b2d7529afc675208ce2ce09ed7d"
     "Bitcoin transaction 4410c8d14ff9f87ceeed1d65cb58e7c7b2422b2d7529afc675208ce2ce09ed7d"))

◊(define (tds txt)
   `(td (strong ,txt)))

◊(define eatbch
   (x-ref
     "2019-12-10"
     "https://eatbch.org/"
     "eatBCH - We're helping to bring communities closer."))
◊(define eatbch-news
   (x-ref
     "2019-12-10"
     "https://news.bitcoin.com/meet-the-charity-eat-bch-the-p2p-electronic-cash-to-food-system/"
     "Meet the Charity 'eat BCH' – the P2P Electronic Cash-to-Food System"))


◊subhead{Borderless charity}

Venezuela is currently going through ◊link[venezuela-crisis]{an economic crisis of extreme proportions}. It's much worse than for example the ◊link[great-depression]{Great Depression} in the 1930s and perhaps it's better to compare it to a country devastated by war. Millions of people have fled the country and those left struggle with unemployment, a collapsed health care system and starvation. Corruption and strict border control makes it difficult for Venezuelans to receive outside help.◊mn{petro}

◊ndef["petro"]{
    Venezuela also has their own "cryptocurrency", called ◊link[petro]{Petro}. But it's not decentralized---it's ◊link[snake_oil]{snake oil}.
}

◊(define petro
   (x-ref
     "2019-12-10"
     "https://en.wikipedia.org/wiki/Petro_(cryptocurrency)"
     "Wikipedia: Petro (cryptocurrency)"))

There's an opportunity here for cryptocurrencies, which is demonstrated by the charity ◊link[eatbch]{eatBCH}, that use cryptocurrencies to help feed people in Venezuela. They receive donations in Bitcoin Cash from all over the world, which goes directly to volunteers inside the country, who then use them to buy food and water from local vendors and give them to people in need.◊mn{venezuela-adoption}


◊ndef["venezuela-adoption"]{
    People often wonder how much cryptocurrencies are used in Venezuela. While there are heartwarming stories like how ◊link[venezuela-bitcoin-saved-my-family #:quote #t]{Bitcoin Has Saved My Family}, it's still a niche.

    But adoption is growing and enough merchants accept Bitcoin Cash directly to support eatBCH for example.
}

◊img[#:src "/images/venezuela-hero-wide.jpg"
     #:alt "Kids with food holding a sign with \"@eatBCH\"."]{
    ◊link[eatbch]{eatBCH} converts donations from all over the world to food for people in Venezuela.  
    Image used with permission from eatBCH.
}

This kind of charity is only possible if you can cheaply transfer money to the heart of a very unstable and closed off country, bypassing sanctions and border control.

◊note-pos[#:top -49]{petro}
◊note-pos[#:top -38]{venezuela-adoption}

◊(define venezuela-crisis
   (x-ref
     "2019-12-10"
     "https://www.worldvision.org/disaster-relief-news-stories/venezuela-crisis-facts"
     "Kathryn Reid Venezuela crisis: Facts, FAQs, and how to help"))


◊subhead{Capital flight}

◊qt[#:src "Worried Hong Kong Residents Are Moving Money Out as Protests Escalate"
    #:url hong-kong-moving
    #:date "Aug, 2019"]{
    “It’s very unsettling here,” said Ms. Fairhurst, who has lived in Hong Kong for 12 years. She said seeing videos of police using tear gas near her office have made her particularly nervous. “I don’t know what’s going to happen, but I know that I don’t want my money trapped here.”
}

◊(define hong-kong-moving
   (x-ref
     "2019-12-10"
     "https://www.wsj.com/articles/worried-hong-kong-residents-are-moving-money-out-as-protests-escalate-11566120603"
     "Steven Russolillo, Joanne Chiu, Eli Binder (2019) Worried Hong Kong Residents Are Moving Money Out as Protests Escalate "))

If you decided to leave Venezuela, but wanted to bring your wealth with you, what would you do? Sell your bolívar for U.S. dollars and cross the border? You might get searched and lose it all. Same with gold, jewelry or other valuable items you can think off---it's not easy to hide them from the search at the border. You also cannot send the money abroad digitally, because there are no banks and no Western Union to help you.

Fortunately cryptocurrencies may aid you here. You can store any amount on a piece of paper in your pocket, an encrypted key online or even on a dozen memorized words in your head, and there's not much the border search will reveal.

You don't have to physically leave the country to benefit from storing your wealth in a global currency. China is ◊link[china-capital-flight]{struggling with capital leaving the country} and it's one reason they've been trying to ban cryptocurrencies for years.◊mn{cannot-stop}

◊ndef["cannot-stop"]{
    China banning cryptocurrencies has become a joke in the community. One week they're legal, the next they're illegal and then they make it legal again. Last I checked ◊link[china-bans-anti-crypto]{they made it all legal}, but I'm sure they'll change their mind again.

    I think this is what happens:

    1. China wants to ban cryptocurrencies.
    2. But banning them is very difficult.
    3. Maybe it's better to embrace them?
    4. Permissionless doesn't fit China's ideology.
    5. And the cycle repeats.

    ◊link[chinacoin]{The next logical step} for China is to announce "ChinaCoin"---their own ◊link[snake_oil]{snake oil}.
}

◊(define china-capital-flight
   (x-ref
     "2019-12-10"
     "https://www.wsj.com/articles/how-china-copes-with-capital-flight-1542672901"
     "John Greenwood, Steve H. Hanke (2018) How China Copes With Capital Flight"))
◊(define china-bans-anti-crypto
   (x-ref
     "2019-12-10"
     "https://www.ccn.com/china-unironically-bans-blockchain-slurs-as-crypto-launch-looms/"
     "Will Heasman (2019) China Unironically Bans Blockchain Slurs as Crypto Launch Looms"))
◊(define chinacoin
   (x-ref
     "2019-12-10"
     "https://www.independent.co.uk/life-style/gadgets-and-tech/news/china-cryptocurrency-blockchain-bitcoin-a9176636.html"
     "Anthony Cuthbertson (2019) China bans anti-blockchain sentiment as it prepares for launch of state cryptocurrency"))


◊subhead{Hyperinflation is real}

Cryptocurrency skeptics often ask why anyone would ever want to use money with such large volatility. They have a point---daily swings of 5% are almost expected and larger changes are common---but that's nothing in the face of ◊def[hyperinflation]{hyperinflation}.

Venezuela had a monthly inflation of 815,194%, in May 2019 alone. It's a huge number that causes prices to double in less than two days---all the time. This means if you could afford two chickens today, in two days you can only afford one. For those living through it they would prefer ◊em{anything} else over the local currency; be it gold, U.S. dollars, ◊link[venezuela-bitcoin]{Bitcoin}, clothes, food---you name it.

It's easy to think that hyperinflation is a thing of the past, or that it only affects poor countries far away. But according to the ◊link[hanke-krus]{Hanke-Krus hyperinflation table} we've had 55 cases of hyperinflation since 1920, with 31 of them after 1990 (roughly half related to the collapase of the Soviet Union).◊mn{line-inflation}

For example:


◊section[#:class "inflation-examples"]{
    ◊inflation["Germany"
               #:date "1920s"]{
        In Germany after the first world war, when inflation was at its height prices doubled in less than four days. It's not the worst case of hyperinflation, but it might be the most well-known, maybe because it happened to a powerful western nation and it's related to the world wars.
    }
    ◊inflation["Hungary"
               #:date "1945--1946"]{
        The worst hyperinflation in history ◊link[hungary-inflation]{happened in Hungary}, when they had to repay the cost of the second world war. There prices doubled in only 15 hours.◊mn{inflation-fascination} ◊note-pos{inflation-fascination}
    }
    ◊inflation["Zimbabwe"
               #:date "2004--2009"]{
        The first example of hyperinflation in the 21◊sup{th} century is Zimbabwe. At its worst prices doubled in just over 24 hours. While things settled down, Zimbabwe is ◊link[zimbabwe-trouble]{once again in trouble} and the ◊link[imf-inflation]{International Monetary Fund projects} an inflation of 319% for 2020.
    }
    ◊inflation["Lebanon"
               #:date "2020--"]{
        After an ◊link[libanon-inflation]{inflation of 56.53% in May}, Lebanon became the second country after Venezuela to experience hyperinflation in 2020.
    }
}

◊(define (inflation title #:date date . text)
   `(div ((class "example"))
      (div ((class "header"))
        (h3 ,title)
        (div ((class "date")) ,date))
      (div ((class "txt")) ,@text)))

In each case, hyperinflation is an economic disaster. Hoarding causes shortages, with even basic goods like clothes or food becoming hard to find. Importing goods become impossible and companies go out of business, causing mass unemployment. When tax revenue falls, government services fall with them.◊mn{regular-inflation-too}


◊(define zimbabwe-trouble
   (x-ref
     "2019-12-10"
     "https://nypost.com/2019/10/10/zimbabwe-struggles-with-hyperinflation-its-a-nightmare/"
     "New York Post (2019) Zimbabwe struggles with hyperinflation: ‘It’s a nightmare’"))
◊(define hanke-krus
   (x-ref
     "2019-12-10"
     "https://www.cato.org/sites/cato.org/files/pubs/pdf/hanke-krus-hyperinflation-table-may-2013.pdf"
     "Hanke-Krus hyperinflation table (2013)"))
◊(define venezuela-inflation
   (x-ref
     "2019-12-10"
     "https://tradingeconomics.com/venezuela/inflation-cpi"
     "Venezuela Inflation Rate"))
◊(define imf-inflation
   (x-ref
     "2019-12-10"
     "https://www.imf.org/external/datamapper/PCPIPCH@WEO/WEOWORLD/VEN/ARG/SDN/ZWE"
     "International Monetary Fund: Inflation rate, average consumer prices"))
◊(define hungary-inflation
   (x-ref
     "2019-12-10"
     "https://www.amusingplanet.com/2018/08/hungarys-hyperinflation-worst-case-of.html"
     "Kaushik Patowary (2018) Hungary’s Hyperinflation: The Worst Case of Inflation in History"))
◊(define venezuela-bitcoin
   (x-ref
     "2019-12-10"
     "https://www.bbc.com/news/business-47553048"
     "Mathew Di Salov (2019) Why are Venezuelans seeking refuge in crypto-currencies?"))
◊(define venezuela-bitcoin-saved-my-family
   (x-ref
     "2019-12-10"
     "https://www.nytimes.com/2019/02/23/opinion/sunday/venezuela-bitcoin-inflation-cryptocurrencies.html"
     "Carlos Hernández (2019) Bitcoin Has Saved My Family: “Borderless money” is more than a buzzword when you live in a collapsing economy and a collapsing dictatorship."))
◊(define hyperinflation
   (x-ref
     "2019-12-10"
     "https://www.thebalance.com/what-is-hyperinflation-definition-causes-and-examples-3306097"
     "Kimberly Amadeo: Hyperinflation: Its Causes and Effects With Examples"))

◊ndef["line-inflation"]{
    Hyperinflation is defined as a monthly inflation exceeding 50%.
}

◊ndef["inflation-fascination"]{
    I'm always fascinated by the hyperinflation stories. In Hungary for example the government ran out of good paper to print the new money on.
}

◊ndef["regular-inflation-too"]{
    Although hyperinflation is the extreme case, high inflation rates can still very be problematic with the same type of problems.
}


◊subhead{Always available}

I used hyperinflation as an example of economic turmoil, but it could be anything really. Another good example is if banks in your country close, which happened in Lebanon when banks ◊link[lebanon-bank-shutdown]{decided to shut down during heavy protests}. (This was before hyperinflation set in.)

◊qt[#:author "Nassim Nicholas Taleb"
    #:src "Twitter"
    #:date "24 Oct 2019"
    #:url nassim]{
The most potent case for cryptocurrencies: banks are never there when you need them. And they are trying to bully the public so they avoid accountability and profit disbursements.
Bankers are legal crooks.
#bottomup #bitcoin
#Lebanon
}

◊(define nassim
   (x-ref
     "2019-12-10"
     "https://twitter.com/nntaleb/status/1187467132646199300"
     "Nassim Nicholas Taleb (2019) The most potent case for cryptocurrencies: banks are never there when you need them."))

Because of the decentralized nature of cryptocurrencies it's very difficult for them to "shut down". It doesn't matter if the computers of some people---or even whole countries---break down, the cryptocurrency network is unaffected.◊sn{antifragile}

Cryptocurrencies are so robust we might as well say they're always available, for anyone and anywhere (as long as they have internet access).◊sn{uptime}

◊note-pos[#:top -7.5]{antifragile}
◊note-pos{uptime}

◊ndef["antifragile"]{
    Taleb has minted the term ◊def[antifragile-book]{antifragile}, meaning the more you break something the stronger it becomes. ◊link[antifragility]{Cryptocurrencies are antifragile}.
}

◊ndef["uptime"]{
    According to ◊link[bitcoinuptime]{bitcoinuptime} the Bitcoin network has been down less than 15 hours since it's creation in 2009. That's an uptime of more than 99.98%.
}

◊(define lebanon-bank-shutdown
   (x-ref
     "2019-12-10"
     "http://www.dailystar.com.lb/News/Lebanon-News/2019/Oct-24/494282-top-banking-official-operations-to-fully-resume-when-lebanon-crisis-ends.ashx"
     "The Daily Star (2019) Top banking official: operations to fully resume when Lebanon crisis ends"))
◊(define bitcoinuptime
   (x-ref
     "2019-12-10"
     "http://bitcoinuptime.com/"
     "Bitcoin Uptime Tracker"))


◊subhead{A currency for the world}

The U.S. dollar is the ◊link[world-currency]{closest we have to a world currency}. More than half of all U.S. dollar bills are used outside of the U.S.---often as hard currency. Almost 40% of all debt in the world is issued in U.S. dollars and the central banks of other countries hold a large part of their reserves in U.S. dollars (making it the most widely used ◊def[reserve-currency]{reserve currency}).◊mn{jp-morgan}

◊ndef["jp-morgan"]{
    According to Craig Cohen of J.P. Morgan, the U.S. dollar dominance could be coming to an end, and says it ◊link[jp-morgan-dollar #:quote #t]{could lose its status as world’s reserve currency}.
}

◊(define world-currency
   (x-ref
     "2019-12-10"
     "https://www.thebalance.com/world-currency-3305931"
     "Kimberly Amadeo: Why the US Dollar Is the Global Currency "))
◊(define countries-us-dollars
   (x-ref
     "2019-12-10"
     "https://www.worlddata.info/currencies/usd-us-dollar.php"
     "Countries that use the US Dollar"))
◊(define jp-morgan-dollar
   (x-ref
     "2019-12-10"
     "https://privatebank.jpmorgan.com/gl/en/insights/investing/is-the-dollar-s-exorbitant-privilege-coming-to-an-end"
     "Craig Cohen (2019) Is the dollar's \"exorbitant privilege\" coming to an end?"))
◊(define reserve-currency
   (x-ref
     "2019-12-10"
     "https://www.investopedia.com/terms/r/reservecurrency.asp"
     "James Chen: Reserve Currency"))

But the U.S. dollar isn't truly a world currency, it's just one country's currency that happen to be widely used. The U.S. government and the Federal Reserve still has full control of the currency---they can dabble with the money supply however they want---and the rest of the world can only hope they won't get shafted.

In contrast cryptocurrencies exist outside the control of any country. They're instead controlled by people all over the world, who come together and agree to the rules governing the currency.

What's more, cryptocurrencies are also easier to use on a global scale. It's hard to send U.S. dollars across the world---you'd have to rely on others to do so---but cryptocurrencies can be sent as easily to your neighbour as to someone on the other side of the world.

◊qt[#:author "Chris Troutner"
    #:src "Twitter"
    #:date "21 Jun 2019"
    #:url chris]{
  I wanted to help someone in #Venezuela , so I'm tutoring a novice #JavaScript developer as he writes #opensource software. I pay him $100 per week. It's making a huge difference in his life. With #BitcoinCash we don't have to consider what governments or banks think about it.
}
◊; https://www.reddit.com/r/btc/comments/c3brvi/chris_troutner_i_wanted_to_help_someone_in/


Instead of being just a currency used throughout the world, a cryptocurrency is a currency ◊strong{for} the world.

◊(define chris
   (x-ref
     "2019-12-10"
     "https://twitter.com/christroutner/status/1142080363981709313"
     "Chris Troutner (2019) I wanted to help someone in #Venezuela, so I'm tutoring a novice #JavaScript developer as he writes #opensource software."))

◊(define libanon-inflation
   (x-ref
     "2020-09-21"
     "https://tradingeconomics.com/lebanon/inflation-cpi"
     "Trading Economics: Lebanon Inflation Rate"))

