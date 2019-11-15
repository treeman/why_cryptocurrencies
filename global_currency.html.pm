#lang pollen

◊(define-meta title "A global currency")
◊;(define-meta subtitle "Donations governments cannot stop")
◊(define-meta updated "2019-09-02T07:02:25+02:00")
◊(define-meta uuid "bec2e177-8ccd-4f8d-a90e-a3d0b4269e43")

◊todo{IMG of sending coins across the world}

◊subhead{A currency for the world}

The U.S. dollar is the closest we have to a global currency.

Because a cryptocurrency can be used anywhere on earth (or in space) as long as you have internet access

JPMorgan: We Believe The Dollar Could Lose Its Status As World's Reserve Currency
◊link{https://privatebank.jpmorgan.com/gl/en/insights/investing/is-the-dollar-s-exorbitant-privilege-coming-to-an-end}

◊qt[#:author "Chris Troutner"
    #:src "Twitter"
    #:url "https://twitter.com/christroutner/status/1142080363981709313"]{
  I wanted to help someone in #Venezuela , so I'm tutoring a novice #JavaScript developer as he writes #opensource software. I pay him $100 per week. It's making a huge difference in his life. With #BitcoinCash we don't have to consider what governments or banks think about it.
}
◊; https://www.reddit.com/r/btc/comments/c3brvi/chris_troutner_i_wanted_to_help_someone_in/


◊subhead{Remittance}

Sending money to other countries, called remittance, is one of the first promoted use-cases for cryptocurrencies. The benefits over existing solutions, such as Western Union, are numerous:◊sn{compare-to-banks}

◊ndef["compare-to-banks"]{
    Why not make a comparison to bank transfers? Because the problem with remittance is transfers to countries far away, often poorer countries. There's no problem with transferring money from Sweden to Finland for example---bank transfers work great there. 

    But it's very difficult to make a bank transfer from Sweden to Zimbabwe; or impossible, if you ◊link[unbanked]{don't have a bank account at all}. With Western Union you can effectively send physical cash, to many parts of the world.
}

◊(define unbanked "/for_the_unbanked.html")

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

        Compared with the ◊link[rel-crypto-fees]{cryptocurrency fees}, which are ◊strong{less than a cent}.

◊;https://www.westernunion.com/us/en/web/send-money/start
    }
    ◊li{Faster

        It can take 0--6 days for Western Union to process a payment to a bank account, and sometimes only minutes for a cash pickup. If you want a cash pickup you will of course have to visit a physical store, which can take some time especially as they're not always open.

        Cryptocurrencies ◊link[rel-crypto-speed]{are sent in seconds} (and become irreversible in an hour).
    }
    ◊li{Send any amount

        Western Union also has limits on the amount you can send. I got a limit of $5,000 to Zimbabwe for example. It's a fairly high limit, but it cannot compare to cryptocurrencies where you can send any amount with a single transaction.◊sn{large-BTC-tx}

        ◊ndef["large-BTC-tx"]{
            Someone transferred 94,504 BTC---valued around ◊nbsp{1 billion USD} at the time---◊link[large-BTC-tx]{with a single transaction}.
        }
    }
}

The big drawback with cryptocurrencies is that you're sending cryptocurrency coins, and if you wanted fiat money you need to find a way to exchange the coins for fiat.

◊(define western-union-fees "https://www.westernunion.com/us/en/web/send-money/start")
◊(define large-BTC-tx "https://blockchair.com/bitcoin/transaction/4410c8d14ff9f87ceeed1d65cb58e7c7b2422b2d7529afc675208ce2ce09ed7d")

◊(define (tds txt)
   `(td (strong ,txt)))

◊(define rel-crypto-fees "/cheaper_faster.html#cryptocurrency-fees")
◊(define rel-crypto-speed "/cheaper_faster.html#speed-comparisons")

◊(define eatbch "https://eatbch.org/")
◊(define eatbch-news "https://news.bitcoin.com/meet-the-charity-eat-bch-the-p2p-electronic-cash-to-food-system/")


◊subhead{Borderless charity}

Venezuela is currently going through ◊link[venezuela-crisis]{an economic crisis of extreme proportions}. It's much worse than for example the ◊link[great-depression]{Great Depression} in the 1930s and perhaps it's better it to compare to a country devastated by war. Millions of people have fled the country and those left struggle with starvation, a collapsed health care system and extreme hyperinflation. Corruption and strict border control makes it difficult for Venezuelans to receive outside help.◊sn{petro}

◊ndef["petro"]{
    Venezuela also has their own "cryptocurrency", called ◊link[petro]{Petro}. But it's not decentralized---it's ◊link[snake-oil]{snake oil}.
}

◊(define snake-oil "/look_out_for_snake_oil.html")
◊(define petro "https://en.wikipedia.org/wiki/Petro_(cryptocurrency)")

There's an opportunity here for cryptocurrencies, which is demonstrated by the charity ◊link[eatbch]{eatBCH}, who use cryptocurrencies to help feed people in Venezuela. They receive donations in Bitcoin Cash from all over the world, which goes directly to volunteers inside the country, who use them to buy food and water from local vendors and give them to people in need.◊sn{venezuela-adoption}

◊ndef["venezuela-adoption"]{
    It would be nice if I could say that everyone in Venezuela has adopted cryptocurrencies, but that's not true. Adoption is growing, and Bitcoin Cash is accepted enough to support eatBCH, but it's still a niche.
}

◊img[#:src "https://eatbch.org/_assets/img/venezuela-hero-wide.jpg"]{
    ◊link[eatbch]{eatBCH} converts donations from all over the world to food for kids in Venezuela.
}

This kind of charity is only possible if you can cheaply transfer money to the heart of a very unstable and closed off country.

◊(define venezuela-crisis "https://www.worldvision.org/disaster-relief-news-stories/venezuela-crisis-facts")
◊(define great-depression "https://en.wikipedia.org/wiki/Great_Depression")


◊subhead{Capital flight}

◊qt[#:src "WSJ: Worried Hong Kong Residents Are Moving Money Out as Protests Escalate"
    #:url "https://www.wsj.com/articles/worried-hong-kong-residents-are-moving-money-out-as-protests-escalate-11566120603"]{
    “It’s very unsettling here,” said Ms. Fairhurst, who has lived in Hong Kong for 12 years. She said seeing videos of police using tear gas near her office have made her particularly nervous. “I don’t know what’s going to happen, but I know that I don’t want my money trapped here.”
}

If you decided to leave Venezuela, but wanted to bring your wealth with you, what would you do? Sell your bolívar for U.S. dollars and cross the border? You might get searched and lose it all. Same with gold, jewelry or other valuable items you can think off---it's not easy to hide them from the search at the border. You also cannot send the money abroad digitally, because there are no banks and no Western Union to help you.

Fortunately cryptocurrencies may aid you here. You can store any amount on a piece of paper in your pocket, an encrypted address online or even on a dozen memorized words in your head, and there's not much the border search will reveal.

You don't have to physically leave the country to benefit from storing your wealth in a global currency. China is ◊link[china-capital-flight]{struggling with capital leaving the country} and it's one reason they've been trying to ban cryptocurrencies for years.◊sn{cannot-stop}

◊ndef["cannot-stop"]{
    China banning cryptocurrencies has become a joke in the community. One week they're legal, the next they're illegal and then they make it illegal once more. Last I checked ◊link[china-bans-anti-crypto]{they made it all legal}, but I'm sure they'll change their mind again.

    I think this is what happens:

    1. China wants to ban them
    2. But banning them is very difficult
    3. Maybe it's better to embrace them?
    4. Cryptocurrencies go up against China's ideology
    5. GOTO 1

    ◊link[chinacoin]{The next logical step} for China is to announce "ChinaCoin"---their own ◊link[snake-oil]{snake oil}.
}

◊(define china-capital-flight "https://www.wsj.com/articles/how-china-copes-with-capital-flight-1542672901")
◊(define china-bans-anti-crypto "https://www.ccn.com/china-unironically-bans-blockchain-slurs-as-crypto-launch-looms/")
◊(define chinacoin "https://www.independent.co.uk/life-style/gadgets-and-tech/news/china-cryptocurrency-blockchain-bitcoin-a9176636.html")


◊subhead{Hyperinflation is real}

Some examples of hyperinflation:

◊ol{
    ◊li{Germany 1920s}
    ◊li{Hungary 1946}
    ◊li{Yugoslavia 1990s}
    ◊li{Zimbabwe 2004--2009}
    ◊li{Venezuela 2016--now}
}

◊; Inflation of the world.
◊; https://www.imf.org/external/datamapper/PCPIPCH@WEO/WEOWORLD/VEN/ARG/SDN/IRN

◊; Made in 2013, a list of countries which have had hyperinflation.
◊; https://www.cato.org/sites/cato.org/files/pubs/pdf/hanke-krus-hyperinflation-table-may-2013.pdf

Why are Venezuelans seeking refuge in cryptos?
◊link{https://www.bbc.com/news/business-47553048}

Protection against hyperinflation, see for example Venezuela and Zimbabwe.

Historically how many currencies have gone under to hyperinflation?

◊link{https://cryptoslate.com/venezuelan-crisis-cryptocurrency-privacy/}
◊link{https://www.nytimes.com/2019/02/23/opinion/sunday/venezuela-bitcoin-inflation-cryptocurrencies.html}

