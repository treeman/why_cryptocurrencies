#lang pollen

◊(define-meta title "What is money?")
◊(define-meta subtitle "It's subjective")
◊(define-meta published "2019-05-16T00:00:00+01:00")
◊(define-meta updated "2021-05-07T19:11:00+01:00")
◊(define-meta uuid "67cd34c5-058b-4908-a4a6-aed09aff22cc")
◊(define-meta template "chapter.html")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "J.P. Morgan" #:date "1912"]{
     Money is gold, and nothing else.
  }
}

Money is something completely necessary in our society, and most people come in contact with money every day. We might use it to buy things, worry about our expenses, that we don't have enough, or even be glad for how much we have. But we seldom stop and think of what money really is.

Not just how the physical coins and pieces of paper are made, but why does money exist? What makes it valuable? Are there different kinds of money? And are some forms of money better than others?◊mn{money-or-currency}

Before getting interested in cryptocurrencies I too had never asked these questions and with this chapter, I hope to provide some insight into this admittedly complex topic.

◊note-pos[#:top -8]{money-or-currency}


◊subhead{Historical examples of money}

First, let's look at some interesting historical examples of items that have been used as money. Some are quite fascinating.

◊ndef["money-or-currency"]{
    The terms ◊em{money} and ◊em{currency} are often used interchangeably. Although I might be sloppy in my usage, there's a subtle difference. Money refers to an intangible concept---you cannot reach out and grab it. Currency instead refers to the physical coins themselves.

    If that's the definition then maybe cryptocurrencies should instead be called crypto-money?

    Even though we cannot reach out and grab them, the coins do exist. Similar to how digital pictures exist---they're not an abstract concept. Therefore I, as much as the community, will still call cryptocurrencies a type of currency.
}

◊section[#:class "money-examples"]{
    ◊money["Shells"
           #:date "1200 B.C."
           #:img "/images/cowry.png"
           #:alt "Sea shells."]{
        Sea shells ◊link[sea-shells]{have been used as money for centuries} and were commonly used in parts of Africa and Asia but also in other parts of the world. In West Africa, they saw ◊link[shell-usage]{significant use until the 20◊sup{th} century}.
    }
    ◊money["Coins in ancient Greece"
           #:date "500 B.C."
           #:img "images/greek_coin.png"
           #:alt "A greek coin."]{
        The Greeks ◊link[ancient-greece-coinage]{used coins} made from precious metal like silver, bronze, and gold. They also stamped the coins with beautiful portraits for a truly modern look.
    }
    ◊money["Rai stones"
           #:date "1000 - 1400 A.D."
           #:img "images/rai_stones.png"
           #:alt "A huge rai stone"]{
        ◊link[rai-stones]{Rai stones} is a form of stone money on the Yap Islands. They can be up to 4 m in diameter but most are much smaller, down to around 3.5 cm in diameter. Instead of moving the big ones, you simply tell people you've transferred them, like a social ledger. ◊link[rai-stones-pictures]{Here are some great pictures}.
    }
    ◊money["A 20kg copper coin"
           #:date "1644"
           #:img "images/20kg_copper.png"
           #:alt "A 20kg copper coin in a wheelbarrow."]{
        Another example of---let's say interesting---form of money is ◊link[largest-coin]{the world's largest coin.} It's a copper coin weighing 20kg, issued in Sweden.

        Since copper was worth much less than silver, very large coins had to be made to offset the difference. At that time, coins did contain raw materials according to their value, which isn't the case today.
    }
    ◊money["A 100 billion mark note"
           #:date "1924"
           #:img "images/german_notes.png"
           #:alt "A large pyramid of paper money."]{
        Bank notes---paper money---are easy to use but they do have problems of their own. Unless kept in check, by for example ◊link[rel-gold-standard]{the gold standard}, they can be mass produced to cause ◊link[hyperinflation]{hyperinflation}.

        ◊link[germany-wallpaper]{This is what happened in Germany} after the first World War. They had massive debts after losing the war, so they tried to print enough money to pay off the debts.◊mn{germany-stories}

        While the inflation was slow at first it quickly ramped up. It culminated in 1924 with a ◊link[germany-notes]{100 billion mark note}, while only four years earlier 100 mark notes were used.

        ◊note-pos[#:top -9]{germany-stories}
    }
    ◊money["Cigarettes in prison"
           #:date `("20" (sup "th") " century")
           #:img "images/prison_money.png"
           #:alt "A cigarette."]{
        Like depicted in the movie Shawshank Redemption cigarettes are used in some prisons ◊link[prison-cigarettes]{as a form of money}. Today, some prisons have started to ban smoking, so they instead use things like ◊link[prison-stamps]{stamps} or ◊link[prison-ramen]{ramen}.
    }
    ◊money["Euro bank notes"
           #:date `("21" (sup "th") " century")
           #:img "images/bank_notes.png"
           #:alt "Euro bank notes."]{
        There are many kinds of ◊em{fiat currencies},◊mn{fiat-commodity} for example, the Euro. Modern coins aren't made of valuable metal and paper notes are used for large denominations.

        ◊note-pos[#:top -6 #:bottom -20]{fiat-commodity}
    }
    ◊money["Dogecoin"
           #:date "2013"
           #:img "images/doge.png"
           #:alt "Doge."]{
        Dogecoin is a cryptocurrency and while created as a "joke currency" it quickly gained popularity as a tipping tool online. You can still find merchants who accept it today for things like domain names, web hosting, VPNs, or games.
    }
    ◊money["Marbles on the school yard"
           #:date "2017"
           #:img "images/marbles.png"
           #:alt "Two people playing with marbles."]{
        Kids on the school-yard often come up with interesting forms of money. For example, collectible card games or game components. Another example is  marbles used in a Swedish game where you win your opponents marbles. (And those with many marbles had higher status in class.)◊mn{pokemon}

        ◊note-pos[#:bottom -20]{pokemon}
    }
}

◊ndef["germany-stories"]{
    There are many ◊link[germany-wallpaper]{interesting stories} (with pictures). For example, kids playing with stacks of money, how it was cheaper to use the notes themselves as wallpaper, or how kids created kites with the notes.
}

◊ndef["pokemon"]{
    I'm not up to date with the games kids play these days. I still live with the memories of skipping class to play Pokémon. Good times.
}

◊ndef["fiat-commodity"]{
    There is a popular classification of money into different types. ◊em{Fiat money} is what we typically use today---government-issued money.

    ◊em{Commodity money} refers to money which derives its value from the commodity it's made of. For example, coins made of gold. The fact that the value comes from the commodity itself is questionable, see the ◊link[rel-subjective-theory-of-value]{subjective theory of value}.
}



◊(define (money title #:img img #:alt alt #:date [date #f] . text)
   (define xdate
     (cond
       [(and (list? date) (not (null? date)))
        `(div ((class "date")) ,@date)]
       [date
        `(div ((class "date")) ,date)]
       [else
        ""]))
   `(div ((class "example"))
      (img ((src ,img) (alt ,alt)))
      (div ((class "txt"))
        (div ((class "header"))
          (h3 ,title)
          ,xdate)
        ,@text)))


◊subhead{The gold standard}

There's an important historical point to make about fiat. First used 1821 in the United Kingdom, the ◊link[gold-standard]{gold standard} made sure to back each currency unit with gold.◊mn{gold-standard} So if you had 1,000 bank notes, you could exchange them for a specific weight in gold bullion. This was used in various ways up until 1971, when it was finally abandoned completely.

◊ndef["gold-standard"]{
    Like a lot of things we'll touch, whether the gold standard is preferable or not is ◊link[gold-debate]{hotly debated}.
}

◊(define gold-debate
  (x-ref
    "2019-05-16"
    "https://www.thebalance.com/what-is-the-gold-standard-3306137"
    "Kimberley Amadeo: History of the Gold Standard"))


◊subhead{Bartering, and why do we need money?}

What would life look like if we didn't have money? We would have to turn to bartering---trading goods or services directly.◊mn{bartering}

◊img[#:src "images/pig_chair_exchange.png"
     #:alt "Trading a chair for a pig."]{
    Imagine if you're a farmer and you have a bunch of pigs. To buy a new chair, you need to trade with the carpenter, and maybe you can buy the chair for a single pig.
}

But there are problems with this system:

◊ul{
    ◊li{What if the carpenter doesn't want your pig?

        You would have to trade with others and find something the seller would accept.

        ◊img[#:src "images/pig_chair_exchange_long.png"
             #:alt "Trading a pig for a wheel, the wheel for a shovel, the shovel for a bottle and finally the bottle for a chair."]{
            It can sometimes be very cumbersome to trade for something the carpenter wants---in this case a bottle of rum. Each step in the process needs a matching buyer and seller.
        }
    }
    ◊li{What if you want to buy a loaf of bread, worth much less than a single pig?

        You would have to kill a pig and offer parts to him. It's undesirable if the pig hasn't grown up yet and you'll get stuck with leftover parts.
    }
}

In short, it's extremely inefficient.

This is why we as a society prefer to use money. Even if the thing we use as money itself is basically worthless---like pieces of paper---the function it serves is very valuable.

◊ndef["bartering"]{
    Bartering can happen on a small scale today. For example, in your social circle, you might trade favors instead of money.

    In an economical collapse, like in the case of hyperinflation or a zombie invasion, bartering might make sense on a larger scale as well.
}


◊subhead{State theory of money}

One common answer to the question "what gives money value?" is ◊def[state-theory-of-money]{the State Theory of Money} (many refer to it unknowingly).

The basic thesis is that it's the state that gives value to money:

◊ul{
    ◊li{Fiat currency is declared by the state to be ◊def[legal-tender]{legal tender}.

        Which, among other things, means merchants have to accept it by law.}
    ◊li{The state is responsible to regulate inflation.◊mn{fed}}
    ◊li{Banks are insured by the state, increasing safety of the currency.}
    ◊li{During the gold standard the state ensured that fiat currencies were backed by gold.}
}

While this might on the surface explain why fiat currencies are valuable, it fails to explain why other forms of money become valuable.

◊ndef["fed"]{
    In the US, it's actually the ◊link[federal-reserve]{Federal Reserve System}, a central bank, that controls printing of money. Most other countries use a similar system. In the EU, it's called the ◊link[ecb]{European Central Bank}.
}

◊note-pos[#:top -11]{fed}

◊(define legal-tender 
  (x-ref
    "2019-05-16"
    "https://en.wikipedia.org/wiki/Legal_tender"
    "Wikipedia: Legal tender"))
◊(define federal-reserve 
  (x-ref
    "2019-05-16"
    "https://www.investopedia.com/terms/f/federalreservebank.asp"
    "James Chen: Federal Reserve System (FRS)"))
◊(define ecb
  (x-ref
    "2019-05-16"
    "https://www.ecb.europa.eu/home/html/index.en.html"
    "European Central Bank (ECB)"))


◊subhead{Subjective theory of value}

Instead, a better explanation is given by the ◊def[subjective-theory-of-value]{subjective theory of value}. It describes how goods are valued, but it serves just as well to explain why money is valuable.

In short, it says that ◊em{value is subjective}.

It might sound too simplistic or like a tautology. But what it means is there's no global deciding function that gives value. Instead, each person independently assigns value.◊mn{subjective-commodity}

◊ndef["subjective-commodity"]{
    In the context of commodity money, it means they can be more valuable than what they're made of. This can happen if their value as a medium of exchange is more than the value of the raw materials.

    A related fact is that the material in US nickels ◊link[nickels-metal]{can be worth more than the value of the nickel itself}. (The melt value varies).
}

◊(define nickels-metal 
  (x-ref
    "2019-05-16"
    "https://www.thepennyhoarder.com/smart-money/hoarding-nickels-pocket-change-might-worth-think/"
    "Owen Ferguson (2019) Hoarding Nickels: Why Your Pocket Change Might Be Worth More Than You Think"))

For instance, medicine can be extremely valuable for those who need it, but could have little value to others. So if you have the medicine, but don't need it, you'll gladly sell. But someone who needs it would be reluctant to sell, unless it's for a very high price.

What does it mean for money? That ◊strong{the value of money is emergent from a group of individuals}. If, for example, everyone in your social group declare that tomorrow they'll use Pokémon trading cards as money, then the trading cards suddenly become very valuable to you. The more people that use a form of money, the better it works and the more value it will have.

States don't give money value, but they can contribute. For example, declaring fiat legal tender makes more people accept it, which in turn increases its value.


◊subhead{What functions does money serve?}

If anything can be used as money, it makes more sense to look at how money is used. ◊link[3-fun-money]{Knowledgeable people} seem to agree money has three major functions:◊mn{4-fun-money}

◊ndef["4-fun-money"]{
    ◊link[4-fun-money]{Some also use a fourth function}: ◊em{standard of deferred payment}. I chose to focus on the three functions; it seems to me it's the popular way.
}

◊(define 3-fun-money 
  (x-ref
    "2019-05-16"
    "https://www.khanacademy.org/economics-finance-domain/ap-macroeconomics/ap-financial-sector/definition-measurement-and-functions-of-money-ap/a/definition-measurement-and-functions-of-money"
    "Khan Academy: definition, measurement, and functions of money"))
◊(define 4-fun-money 
  (x-ref
    "2019-05-16"
    "https://opentextbc.ca/principlesofeconomics/chapter/27-1-defining-money-by-its-functions/"
    "Principles of Economics: Defining Money by Its Functions"))

◊ol{
    ◊li{◊strong{Medium of exchange}

        It can be used to intermediate the exchange of goods and services.

        For example, the use of sea shells as money. The shells themselves aren't particularly useful, but their use as a medium of exchange is.
    }
    ◊li{◊strong{Unit of account}

        A standard unit to measure the market value of goods and services.

        For instance, car prices across Sweden can be compared in SEK.◊mn{cars-south}

        ◊note-pos{cars-south}
    }
    ◊li{◊strong{Store of value}

        It maintains its value over time.

        A piece of gold could, for example, buy clothes in both ancient Greece and today.
    }
}

◊ndef["cars-south"]{
    Used cars are usually cheaper in the south of Sweden, for some reason unknown to me.
}

Medium of exchange is the ◊link[most-important]{most important} defining property of money, the other properties follow.

◊(define most-important 
  (x-ref
    "2019-05-16"
    "https://mises.org/library/mises-basics-money"
    "Dan Sanchez (2012) Mises on the Basics of Money"))

Note that these are functions of usage and adoption. For instance, if something has been a store of value for a period of time, it doesn't mean it will continue to be a good store of value in the future.◊mn{gold-sov}

Now we may wonder, can anything be used as money? And are there "good" and "bad" forms of money?

As seen from historical examples, I think it's safe to conclude that yes, basically anything can be used as money. But if we want to compare how well different forms of money work, we need to look at other properties.

◊ndef["gold-sov"]{
    Gold is the classical example of a store of value. But it has also seen large up and down movements in valuation. ◊link[gold-valuation]{This is the yearly closing price of gold}:

    ◊raw-img[#:src "images/gold-valuation.svg" #:link #t
             #:alt "The yearly closing price of gold from 1970 to 2019."]{}

    For example in 2010 it increased 27.74% and in 2013 it decreased 27.79%.
}

◊(define gold-valuation 
  (x-ref
    "2021-01-31"
    "https://www.macrotrends.net/1333/historical-gold-prices-100-year-chart"
    "Macrotrends: Gold Prices - 100 Year Historical Chart"))


◊subhead{What properties does good money have?}

To function as money, money should have these properties:◊mn{money-props}

◊ndef["money-props"]{
    What properties money should have also differ. Some list ◊em{stability in value} as a property, but I chose to go with ◊em{limited in supply} as I wanted to focus on intrinsic properties that don't change with time. Other ◊link[money-props]{popular descriptions} leave out ◊em{recognizable}, but I felt counterfeit-resistance is too important to leave out.
}

◊(define money-props
  (x-ref
    "2019-05-16"
    "http://money.visualcapitalist.com/tag/properties-of-money/"
    "The Money Project: Properties of money"))

◊ol{
    ◊li{◊strong{Acceptable}

        Everyone must be able to use the money for transactions.

        If only the very rich can use it, then it's not good money.
    }
    ◊li{◊strong{Divisible}

        Can be divided into smaller units of value.

        If it's difficult to subdivide, then it's hard to use in practice. It's why cash always come with coins and notes with different values.
    }
    ◊li{◊strong{Durable}

        An item must be able to withstand repeated use.

        Food is not durable and makes for poor money.
    }
    ◊li{◊strong{Fungible & Uniform}

        Two items of the same type should always be considered equal.

        All shares in a company should be worth the same, even if bought at different times and at different prices. All gold coins of the same denomination should contain the same amount of gold.◊mn{fungible-uniform}

        ◊note-pos[#:top -9]{fungible-uniform}
    }
    ◊li{◊strong{Limited in supply}

        There should be a limited and predictable amount of money.◊mn{limited-supply}

        A limited amount is needed for the money to hold its value.

        ◊note-pos{limited-supply}
    }
    ◊li{◊strong{Portable}

        It's easy to carry around money and to transfer it to others.

        Money should be practical.
    }
    ◊li{◊strong{Recognizable}

        Money should be easy to identify and difficult to counterfeit.

        You should be able to differentiate between different types of money, so you don't mistake Dollar notes for Euro or Monopoly notes, and you should be able to separate real from fake notes. This is sometimes referred to as ◊em{cognizable}.
    }
}

We can summarize the properties as: money should be practical and efficient.

It makes sense as the point of money is to increase efficiency. If money isn't practical, it's not a good medium of exchange.

◊ndef["fungible-uniform"]{
    The difference between ◊em{fungibility} and ◊em{uniformity} is confusing, so I'll bundle them together.

    ◊em{Fungibility} refers to one unit being interchangeable with another while ◊em{uniformity} refers to two versions of the same denomination having the same purchasing power.

    Perfect uniformity implies fungibility, but non-uniform goods can still be fungible. For example, barrels of oil aren't uniform---their quality differ. But oil can be classified into different qualities, where they are treated as the same. Thus oil of the same quality is fungible.
}

◊ndef["limited-supply"]{
    In the ideal situation money should function as a medium of exchange between goods and services, in a closed system. Therefore, it's important that money cannot be created out of thin air---the supply should be limited. The only way to earn money is to trade for it somehow.
}


◊subhead{How well do our historical examples work as money?}

How do our historical examples of money hold up? They don't include examples of outright bad forms◊sn{really-bad}, but some are indeed better than others.

◊ndef["really-bad"]{
    Food or sand would be examples of really bad money. Food spoils quickly while sand exist in extreme quantities.
}

The large ◊strong{Rai stones} and the ◊strong{20kg copper coin} are great examples of money that isn't portable. Therefore, they don't work very well as money.◊sn{smaller-denominations}

◊ndef["smaller-denominations"]{
    Both Rai stones and the Swedish copper coins have smaller versions as well, making them more practical.
}

◊strong{Cigarettes}, ◊strong{marbles}, ◊strong{stamps} and other types of commodities are decent forms of money---on a small scale. They have some durability issues (wear and tear) and they're not perfectly uniform. But most importantly, they can be mass produced which prevents their use on a larger scale.◊sn{marble-coin}

◊ndef["marble-coin"]{
    Let's run a thought experiment: what if we wanted to use marbles as money on a global scale?

    If we control the creation of a special kind of marble, we can make them durable and uniform. We can also add some sort of counterfeit protection---maybe embed holograms with cryptographic messages---to ensure a limited supply. Of course, it's easy to create different kinds of denominations.

    Then, let's consider the shape---a sphere isn't very good. It might roll away and it's hard to carry in the wallet. So, why not make it a flat cylinder?

    Now, we've reinvented the coin. A coin is actually remarkably efficient!
}

◊strong{Sea shells} work well as money---assuming they're not too plentiful. If used in a local market---for example on an island---there's always a risk of the market being overrun by shells from other islands, where they're more common. But they're durable, lightweight and easy to use, which are great properties for money to have.

◊strong{Metal coins} is a very good form of money, especially if made by scarce material. Gold is naturally very scarce, ensuring a limited supply, and coins are easy to use and very durable. This is the reason coins have been the dominating type of currency for over 2000 years.

How well ◊strong{cryptocurrencies} work as money is a topic for the ◊link[next-chapter]{next chapter}.

◊ndef["gold-counterfeit"]{
    Even gold coins have problems. For instance it's quite difficult to separate real from fake coins---it requires expertise and specialized tools.
}

◊note-pos[#:top -36]{really-bad}
◊note-pos[#:top -29]{smaller-denominations}
◊note-pos[#:top -23]{marble-coin}


◊subhead{The problem with fiat currencies}

The money we usually use today is a little different from coins made of precious materials. We use coins made with cheap metal or paper notes, and our money is often just stored digitally at a bank. After abandoning the gold standard, there's nothing physically backing up the value of money.◊mn{intrinsic-value}

◊ndef["intrinsic-value"]{
    Some say cryptocurrencies can't be money because it lacks intrinsic value---like gold has. But fiat currencies don't have intrinsic value either. The only value comes from the function as money.

    See ◊link[intrinsic-value-fallacy]{The Fallacy of "Intrinsic Value"}.
}

It's not a requirement that the money must be backed by something, or have intrinsic value like commodity money. The real problem is that the supply isn't limited.  Banks inflate the supply using ◊def[legal_counterfeiting]{fractional banking} while central banks can print money, both physical and digital, without any limit.◊mn{fractional-banking-good}

◊ndef["fractional-banking-good"]{
    There are those who ◊link[fractional-banking-atlanta]{argue that Fractional Banking is a net positive for society}. And ◊link[fractional-banking-bad]{those who disagree}. Regardless, it's a negative with respect to the properties of money I've chosen.
}

The term ◊def[sound-money]{sound money} refers to money that isn't prone to sudden changes in long term purchasing power, and the value is determined by the free market. If the supply of money differs from the demand, which will happen with fiat due to the disconnect between banks and the market, then there might be sudden changes to the purchasing power.

While fiat has many positive properties, after the move away from the gold standard, it's now considered unsound money.



◊subhead{Why do we need good money?}

Outside of curiosity, why does it matter if there are better forms of money? If fiat is good enough, why bother?

I see two major reasons:

◊ol{
    ◊li{The point of money is to increase economic efficiency.

        Better forms of money are more efficient.}
    ◊li{Money with poor properties can lead to large economic problems.

        For instance how the ability to print fiat money from thin air can lead to hyperinflation.}
}

In our context, knowing what makes money perform well helps us reason about cryptocurrencies, and to see if they can live up to their namesake.

◊(define next-chapter are_cryptocurrencies_money)
◊(define rel-gold-standard `("#the-gold-standard" "The gold standard"))
◊(define rel-subjective-theory-of-value `("#subjective-theory-of-value" "Subjective theory of value"))

◊(define intrinsic-value-fallacy
  (x-ref
    "2019-05-16"
    "https://fee.org/articles/the-fallacy-of-intrinsic-value/"
    "Gary North (1969) The Fallacy of \"Intrinsic Value\""))
◊(define germany-notes
  (x-ref
    "2019-05-16"
    "https://en.wikipedia.org/wiki/German_Papiermark#Weimar_Republic_(1920%E2%80%9324)"
    "Wikipedia: Weimar Republic (1920–24)"))
◊(define sea-shells
  (x-ref
    "2019-05-16"
    "https://www.nbbmuseum.be/en/2007/01/cowry-shells.htm"
    "Ingrid Van Damme (2007) Cowry Shells, a trade currency"))
◊(define shell-usage
  (x-ref
    "2019-05-16"
    "https://www.culturesofwestafrica.com/cowrie-shell-monetary-symbolic-value/"
    "Mia Sogoba (2018) The Cowrie Shell: Monetary and Symbolic Value"))
◊(define ancient-greece-coinage
  (x-ref
    "2019-05-16"
    "https://www.ancient.eu/Greek_Coinage/"
    "Mark Cartwright (2016) Ancient Greek Coinage"))
◊(define rai-stones
  (x-ref
    "2019-05-16"
    "http://www.bbc.com/travel/story/20180502-the-tiny-island-with-human-sized-money"
    "Robert Michael Poole (2018) The tiny island with human-sized money"))
◊(define rai-stones-pictures
  (x-ref
    "2019-05-16"
    "https://www.thevintagenews.com/2017/12/28/rai-stones/"
    "Boban Docevski (2017) The Rai Stones are huge stone wheels used as currency on the island of Yap"))
◊(define germany-wallpaper
  (x-ref
    "2019-05-16"
    "https://mashable.com/2016/07/27/german-hyperinflation/"
    "Alex Q. Arbuckle (2016) Hyperinflation in Germany"))
◊(define prison-stamps
  (x-ref
    "2019-05-16"
    "https://www.therichest.com/business/economy/five-surprising-things-prisoners-use-as-currency/"
    "Matt Davis (2014) Five Suprising Things Prisoners Use As Currency"))
◊(define prison-ramen
  (x-ref
    "2019-05-16"
    "https://www.npr.org/sections/thesalt/2016/08/26/491236253/ramen-noodles-are-now-the-prison-currency-of-choice?t=1557205041822"
    "Maria Godoy (2016) Ramen Noodles Are Now The Prison Currency Of Choice"))
◊(define prison-cigarettes
  (x-ref
    "2019-05-16"
    "https://www.cengage.com/economics/tomlinson/transcripts/8520.pdf"
    "Steven Tomlinson: Case Study: Cigarettes as Money"))
◊(define fractional-banking-atlanta
  (x-ref
    "2019-05-16"
    "https://www.frbatlanta.org/education/classroom-economist/fractional-reserve-banking/economists-perspective-transcript"
    "Federal Reserve Bank of Atlanda: Fractional Reserve Banking - An Economist's Perspective (Transcript)"))
◊(define fractional-banking-bad
  (x-ref
    "2019-05-16"
    "https://mises.org/library/faults-fractional-reserve-banking"
    "Thorsten Polleit (2010) The Faults of Fractional-Reserve Banking"))
◊(define largest-coin
  (x-ref
    "2019-05-16"
    "https://www.riksbank.se/en-gb/about-the-riksbank/history/historical-timeline/1600-1699/the-worlds-largest-coin/"
    "Sveriges Riksbank: 1644 - The world's largest coin"))
◊(define state-theory-of-money
  (x-ref
    "2019-05-16"
    "https://socialsciences.mcmaster.ca/econ/ugcm/3ll3/knapp/StateTheoryMoney.pdf"
    "Georg Friedrich Knapp (1924) The State Theory of Money"))
◊(define subjective-theory-of-value
  (x-ref
    "2019-05-16"
    "https://wiki.mises.org/wiki/Subjective_theory_of_value"
    "Mises Wiki: Subjective theory of value"))

◊; http://money.visualcapitalist.com/infographic-the-properties-of-money/
◊; https://www.aier.org/
◊; https://thesocietypages.org/socimages/2014/04/24/money-as-a-social-construction/
◊; https://hackernoon.com/money-is-a-social-construct-and-thats-why-you-should-run-a-bitcoin-full-node-ea0330cb69a5?gi=257add0b9b0b
◊; https://www.bbc.com/news/business-45523636

