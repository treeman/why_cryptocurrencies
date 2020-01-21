#lang pollen

◊(define-meta title "What is money?")
◊(define-meta subtitle "It's subjective")
◊(define-meta published "2019-05-16T00:00:00+01:00")
◊(define-meta updated "2020-01-15T20:11:22+01:00")
◊(define-meta uuid "67cd34c5-058b-4908-a4a6-aed09aff22cc")

◊epigraph{
  ◊qt[#:author "J.P. Morgan" #:date "1912"]{
     Money is gold, and nothing else.
  }
}

Money is something completely necessary in our society, most people probably come in contact with money every day. We might worry about our expenses, that we don't have enough or even be glad for how much we have. But we seldom stop and think of what money really is.

Not just how the physical coins and pieces of paper are made, but why does money exist? What makes it valuable? Are there different kinds of money? And are some forms of money better than others?◊mn{money-or-currency}

Before getting interested in cryptocurrencies I too had never asked these questions. I'll try to provide some insight into this admittedly complex topic.

◊note-pos[#:top -8]{money-or-currency}


◊subhead{Historical examples of money}

First let's look at some interesting historical examples of things that have been used as money. Some are predictable but others are perplexing.

◊ndef["money-or-currency"]{
    The terms ◊em{money} and ◊em{currency} are often used interchangeably. Although I might be sloppy in my usage there's a subtle difference. Money refers to an intangible concept---you cannot reach out and grab it. Currency instead refers to the physical coins themselves.

    If that's the definition then maybe cryptocurrencies should instead be called crypto-money?

    Even though we cannot reach out and grab them, the coins do exist. Similar to how digital pictures exist---they're not an abstract concept. Therefore I, as much of the community, will still call cryptocurrencies a type of currency.
}

◊section[#:class "money-examples"]{
    ◊money["Shells"
           #:date "1200 B.C."
           #:img "/images/cowry.png"]{
        Sea shells ◊link[sea-shells]{have been used as money for centuries}, it was commonly used in parts of Africa and Asia but also in other parts of the world. Even ◊link[shells-slaves]{during the slave trade} in Africa vast quantities exchanged hands.
    }
    ◊money["Coins in ancient Greece"
           #:date "500 B.C."
           #:img "images/greek_coin.png"]{
        The Greeks ◊link[ancient-greece-coinage]{used coins} made from precious metal like silver, bronze and gold. They also stamped the coins with beautiful portraits for a truly modern look.
    }
    ◊money["Rai stones"
           #:date "1000 - 1400 A.D."
           #:img "images/rai_stones.png"]{
        ◊link[rai-stones]{Rai stones} is a form of stone money on the Yap Islands. They can be up to 4 m in diameter but most are much smaller, down to around 3.5 cm in diameter. Instead of moving the big ones you simply tell people you've transferred them. ◊link[rai-stones-pictures]{Here are some great pictures}.
    }
    ◊money["A 20kg copper coin"
           #:date "1644"
           #:img "images/20kg_copper.png"]{
        Another example of---let's just say interesting---form of money is ◊link[largest-coin]{the world's largest coin.} It's a copper coin weighing 20kg, issued in Sweden.

        Since copper was worth much less than silver, very large coins had to be made to offset the difference. At that time coins did contain raw materials according to their value, which isn't the case today.
    }
    ◊money["A 100 billion mark note"
           #:date "1924"
           #:img "images/german_notes.png"]{
        Bank notes---paper money---are easy to use but they do have problems of their own. Unless kept in check, by for example ◊link[rel-gold-standard]{the gold standard}, they can be mass produced to cause hyperinflation.

        ◊link[germany-wallpaper]{This is what happened in Germany} after the first World war. They had massive debts after losing the war, so they tried to print enough money to pay off the debts.◊sn{germany-stories}

        While the inflation was slow at first it quickly ramped up. It culminated in 1924 with a ◊link[germany-notes]{100 billion mark note}, while only four years earlier 100 mark notes were used.

        ◊note-pos[#:top -9]{germany-stories}
    }
    ◊money["Cigarettes in prison"
           #:date `("20" (sup "th") " century")
           #:img "images/prison_money.png"]{
        Like depicted in the movie Shawshank Redemption cigarettes are used in some prisons ◊link[prison-cigarettes]{as a form of money}. Today some prisons have started to ban smoking, so they instead use things like ◊link[prison-stamps]{stamps} or ◊link[prison-ramen]{ramen}.
    }
    ◊money["Euro bank notes"
           #:date `("21" (sup "th") " century")
           #:img "images/bank_notes.png"]{
        There are many kinds of ◊em{fiat currencies},◊sn{fiat-commodity} for example the Euro. Modern coins are not made of valuable metal and paper notes are used for large denominations.

        ◊note-pos[#:top -6 #:bottom -20]{fiat-commodity}
    }
    ◊money["Dogecoin"
           #:date "2013"
           #:img "images/doge.png"]{
        Dogecoin is a cryptocurrency, while created as a "joke currency", it quickly gained popularity as a tipping tool online. You can still find merchants who accept it today for things like domain names, web hosting, VPNs or games.
    }
    ◊money["Marbles on the school yard"
           #:date "2017"
           #:img "images/marbles.png"]{
        Kids on the schoolyard often come up with interesting forms of money. For example collectible card games or game components. Like marbles used in a Swedish game where you win your opponents marbles. (And those with many marbles had higher status in class.)◊sn{pokemon}

        ◊note-pos[#:bottom -20]{pokemon}
    }
}

◊ndef["germany-stories"]{
    There are many ◊link[germany-wallpaper]{interesting stories} (with pictures). For example kids playing with stacks of money, how it was cheaper to use the notes themselves as wallpaper or how kids created kites with the notes.
}

◊ndef["pokemon"]{
    I'm not really up to date with the games kids play these days. I still live with the memories of Pokémon. Good times.
}

◊ndef["fiat-commodity"]{
    There is a popular classification of money into different types. ◊em{Fiat money} is what we typically use today---government issued money.

    ◊em{Commodity money} refers to money which derives its value from the commodity it's made of. For example coins made of gold. That the value comes from the commodity itself is questionable, see the discussion in ◊link[rel-subjective-theory-of-value]{subjective theory of value}.
}

◊(define rel-gold-standard "#the-gold-standard")
◊(define rel-subjective-theory-of-value "#subjective-theory-of-value")
◊(define germany-notes "https://en.wikipedia.org/wiki/German_Papiermark#Weimar_Republic_(1920%E2%80%9324)")


◊(define (money title #:img img #:date [date #f] . text)
   (define xdate
     (cond
       [(and (list? date) (not (null? date)))
        `(div ((class "date")) ,@date)]
       [date
        `(div ((class "date")) ,date)]
       [else
        ""]))
   `(div ((class "example"))
      (img ((src ,img)))
      (div ((class "txt"))
        (div ((class "header"))
          (h3 ,title)
          ,xdate)
        ,@text)))


◊subhead{The gold standard}

There's an important historical point to make about fiat. First used 1821 in the United Kingdom, the ◊link[gold-standard]{gold standard} made sure to back each currency unit with gold.◊sn{gold-standard} So if you had $1,000 in bank notes you could exchange them to $1,000 worth of gold. This was used in various ways up until 1971, when it was finally abandoned completely.

◊ndef["gold-standard"]{
    Like a lot of things we'll touch, whether the gold standard is preferable or not is ◊link[gold-debate]{hotly debated}.
}

◊(define gold-debate "https://www.thebalance.com/what-is-the-gold-standard-3306137")


◊subhead{Bartering, and why do we need money?}

What would life look like if we didn't have money? We would have to turn to bartering---trading goods or services directly.◊sn{bartering}

◊img[#:src "images/pig_chair_exchange.png"]{
    Imagine if you're a farmer and you have a bunch of pigs. To buy a new chair you need to trade with the carpenter, and maybe you can buy the chair for a single pig.
}

But there are problems with this system:

◊ol{
    ◊li{What if the carpenter doesn't want your pig?

        You would have to trade with others and find something the seller would accept.

        ◊img[#:src "images/pig_chair_exchange_long.png"]{
            It can sometimes be very cumbersome to trade for something the carpenter wants---in this case a bottle of rum. Each step in the process needs a matching buyer and seller.
        }
    }
    ◊li{What if you want to buy a loaf of bread, worth much less than a single pig?

        You would have to kill a pig and offer parts to him. It's undesirable if the pig hasn't grown up yet and you'll get stuck with leftover parts.
    }
}

In short it's extremely inefficient.

This is why we as a society prefer to use money. Even if the thing we use as money itself is basically worthless---like pieces of paper---the function it serves is very valuable.

◊ndef["bartering"]{
    Bartering can happen on a small scale today. For example in your social circle you might trade favors instead of money.

    In an economical collapse, like in the case of hyperinflation or a zombie invasion, bartering might make sense on a larger scale as well.
}


◊subhead{State theory of money}

One common answer to the question "what gives money value?" is ◊link[state-theory-of-money]{the State Theory of Money} (many refer to it unknowingly).

The basic thesis is that it's the state that gives value to money:

◊ol{
    ◊li{Fiat currency is declared by the state to be ◊link[legal-tender]{◊em{legal tender}}.

        Which, among other things, means merchants have to accept it by law.}
    ◊li{The state is responsible to regulate inflation.◊sn{fed}}
    ◊li{Banks are insured by the state, increasing safety of the currency.}
    ◊li{Before dropping the gold standard, fiat currencies were backed up by gold.}
}

While this might on the surface explain why fiat currencies are valuable, it fails to explain why other forms of money become valuable.

◊ndef["fed"]{
    In the US it's actually the ◊link[federal-reserve]{Federal Reserve System}, a central bank, that controls printing of money. Most other countries use a similar system. In the EU it's called the ◊link[ecb]{European Central Bank}.
}

◊note-pos[#:top -11]{fed}

◊(define legal-tender "https://en.wikipedia.org/wiki/Legal_tender")
◊(define federal-reserve "https://www.investopedia.com/terms/f/federalreservebank.asp")
◊(define ecb "https://www.ecb.europa.eu/home/html/index.en.html")


◊subhead{Subjective theory of value}

Instead a better explanation is given by the ◊link[subjective-theory-of-value]{subjective theory of value}. It describes how goods are valued, but it serves just as well to explain why money is valuable.

In short it says ◊em{value is subjective}.

It might sound too simplistic or like a tautology. But what it means is there's no global deciding function that gives value. Instead each person independently assigns value.◊sn{subjective-commodity}

◊ndef["subjective-commodity"]{
    In the context of commodity money it means they can be more valuable than what they're made of. Which can happen if their value as a medium of exchange is more than the value of the raw materials.

    A related fact is that the material in US nickels ◊link[nickels-metal]{can be worth more than the value of the nickel itself}. (The melt value varies).
}

◊(define nickels-metal "https://www.thepennyhoarder.com/smart-money/hoarding-nickels-pocket-change-might-worth-think/")

For instance medicine can be extremely valuable for those who needs it, but have little value to others. So if you have the medicine, but don't need it, you'll gladly sell. But someone who needs it would be reluctant to sell, unless for a very high price.

What does it mean for money? That ◊strong{the value of money is emergent from a group of individuals}. If for example everyone in your social group declares that tomorrow they'll use Pokémon trading cards as money, then they suddenly become very valuable to you. The more people who use a form of money, the better it works and the more value it will have.

States don't give money value---but they can contribute. For example declaring fiat legal tender makes more people accept it, which in turn increases its value.


◊subhead{What functions does money serve?}

If more or less anything can be used as money, it makes more sense to look at how money is used. ◊link[3-fun-money]{Knowledgeable people} seem to agree money has three major functions:◊sn{4-fun-money}

◊ndef["4-fun-money"]{
    ◊link[4-fun-money]{Some also use a fourth function}: ◊em{standard of deferred payment}. I chose to focus on the three functions, it seems to me it's the popular way.
}

◊(define 3-fun-money "https://www.khanacademy.org/economics-finance-domain/ap-macroeconomics/ap-financial-sector/definition-measurement-and-functions-of-money-ap/a/definition-measurement-and-functions-of-money")
◊(define 4-fun-money "https://opentextbc.ca/principlesofeconomics/chapter/27-1-defining-money-by-its-functions/")

◊ol{
    ◊li{◊strong{Medium of exchange}

        It can be used to intermediate the exchange of goods and services.

        For example the use of sea shells as money. The shells themselves aren't particularly useful, but their use as a medium of exchange is.
    }
    ◊li{◊strong{Unit of account}

        A standard unit to measure the market value of goods and services.

        For instance car prices in across Sweden can be compared in SEK.◊sn{cars-south}
    }
    ◊li{◊strong{Store of value}

        It maintains its value over time.

        A piece of gold could for example buy clothes in both ancient Greece and today.
    }
}

◊note-pos[#:top -25]{4-fun-money}
◊note-pos[#:top -9]{cars-south}

◊ndef["cars-south"]{
    Used cars are usually cheaper in the south of Sweden, for some reason unknown to me.
}

Medium of exchange is the ◊link[most-important]{most important} defining property of money, the other properties follow.

◊(define most-important "https://mises.org/library/mises-basics-money")

Note that these are functions of usage and adoption. For instance if something has been a store of value a period of time it doesn't mean it will continue to be a good store of value in the future.◊sn{gold-sov}

Now we may wonder, can anything be used as money? And are there "good" and "bad" forms of money?

As seen from historical examples I think it's safe to conclude that yes, basically anything can be used as money. But to compare how well different forms of money work we need to look at other properties.

◊ndef["gold-sov"]{
    Gold is the classical example of a store of value. But it has also seen large up and down movements in valuation. ◊link[gold-valuation]{This is the yearly closing price of gold}:

    ◊raw-img[#:src "images/gold-valuation.svg" #:link #t]{}

    For example in 2010 it increased 27.74% and in 2013 it decreased 27.79%.
}

◊(define gold-valuation "https://www.macrotrends.net/1333/historical-gold-prices-100-year-chart")


◊subhead{What properties does good money have?}

To function as money ◊link[money-props]{money should have these properties}:◊sn{money-props}

◊ndef["money-props"]{
    Which properties money should have also differs. Some list ◊em{recognisable} and others leave out ◊em{fungible} (keeping ◊em{uniform}). Again I chose to go with what appears to be the popular description.
}

◊(define money-props "http://money.visualcapitalist.com/tag/properties-of-money/")

◊ol{
    ◊li{◊strong{Acceptable}

        Everyone must be able to use the money for transactions.

        If for example only the very rich can use it, then it's not good money.
    }
    ◊li{◊strong{Divisible}

        Can be divided into smaller units of value.

        If it's difficult to subdivide then it's hard to use in practice. It's why cash always come with coins and notes with different values.
    }
    ◊li{◊strong{Durable}

        An item must be able to withstand repeated use.

        Food is for example not durable and makes for poor money.
    }
    ◊li{◊strong{Fungible & Uniform}

        Two items of the same type should always be considered equal.

        The difference between ◊em{fungibility} and ◊em{uniformity} is confusing, so I'll bundle them together.◊sn{fungible-uniform}

        It means shares in a company should be worth the same, even if bought at different times and at different prices. And all gold coins of the same denomination should contain the same amount of gold.
    }
    ◊li{◊strong{Limited in supply}

        There should be a limited and predictable amount of money.◊sn{limited-supply}

        A limited amount is needed for the money to hold it's value. It's important that money can't be counterfeit, otherwise it would be possible to produce an unlimited amount of money.
    }
    ◊li{◊strong{Portable}

        It's easy to carry around money and to transfer it to others.

        Money should be practical.
    }
}

◊note-pos[#:top -46]{money-props}
◊note-pos[#:top -25]{fungible-uniform}
◊note-pos[#:top -9]{limited-supply}

We can summarize the properties as: money should be practical and efficient.

It makes sense as the point of money is to increase efficiency. And if money isn't practical, it's not a good medium of exchange.

◊ndef["fungible-uniform"]{
    ◊em{Fungibility} refers to one unit being interchangeable with another while ◊em{uniformity} refers to two versions of the same denomination having the same purchasing power.

    Perfect uniformity implies fungibility, but non-uniform goods can still be fungible. For example barrels of oil aren't uniform---their quality differ. But oil can be classified into different qualities, where they are treated as the same. Thus oil of the same quality is fungible.
}

◊ndef["limited-supply"]{
    In the ideal situation money should function as a medium of exchange between goods and services, in a closed system. Therefore it's important that money cannot be created out of thin air---the supply should be limited. The only way to earn money is to trade for it somehow.
}


◊subhead{How well do our historical examples work as money?}

How do our historical examples of money hold up? They don't include examples of outright bad forms◊sn{really-bad}, but some are indeed better than others.

◊ndef["really-bad"]{
    Food or sand would be examples of really bad money. Food spoils quickly while sand exist in extreme quantities.
}

The large ◊strong{Rai stones} and the ◊strong{20kg copper coin} are great examples of money that isn't portable. Therefore they don't work very well as money.◊sn{smaller-denominations}

◊ndef["smaller-denominations"]{
    Both Rai stones and the Swedish copper coins have smaller versions as well, making them more practical.
}

◊strong{Cigarettes}, ◊strong{marbles}, ◊strong{stamps} and other types of commodities are decent forms of money---on a small scale. They have some durability issues (wear and tear) and they're not perfectly uniform. But most importantly, they can be mass produced preventing their use on a larger scale.◊sn{marble-coin}

◊ndef["marble-coin"]{
    Let's run a thought experiment: what if we wanted to use marbles as money on a global scale?

    If we control the creation of a special kind of marble, we can make them durable and uniform. We can also add some sort of counterfeit protection---maybe embed holograms with cryptographic messages---to ensure a limited supply. And of course it's easy to create different kinds of denominations.

    Then let's consider the shape---a sphere isn't very good. It might roll away and it's hard to carry in the wallet. So why not make it a flat cylinder?

    And now we've reinvented the coin. A coin is actually remarkably efficient!
}

◊strong{Sea shells} work well as money---assuming they're not too plentiful. If used in a local market---for example on an island---there's always a risk of the market being overrun by shells from other islands, where they're more common. But they're durable, lightweight and easy to use, which are great properties for money to have.

◊strong{Metal coins} is a very good form of money, especially if made by scarce material. Gold is naturally very scarce, ensuring a limited supply, and coins are easy to use and very durable. This is the reason coins have been the dominating type of currency for over 2000 years.◊sn{gold-counterfeit}

How well ◊strong{cryptocurrencies} work as money is a topic for the ◊link[next-chapter]{next chapter}.

◊ndef["gold-counterfeit"]{
    Even gold coins have problems. For instance it's quite difficult to separate real from fake coins---it requires expertise and specialized tools.
}

◊note-pos[#:top -35]{really-bad}
◊note-pos[#:top -28]{smaller-denominations}
◊note-pos[#:top -22]{marble-coin}
◊note-pos[#:top -2.5]{gold-counterfeit}


◊subhead{The problem with fiat currencies}

The money we usually use today is a little different from coins made of precious materials. We use coins made with cheap metal, paper notes and our money is often just stored digitally at a bank. After abandoning the gold standard there's nothing physically backing up the value of money.◊sn{intrinsic-value}

◊ndef["intrinsic-value"]{
    Some say cryptocurrencies can't be money because it lacks intrinsic value---like gold has. But fiat currencies don't have intrinsic value either. The only value comes from the function as money.

    See ◊link[intrinsic-value-fallacy]{The Fallacy of "Intrinsic Value"}.
}

◊(define intrinsic-value-fallacy "https://fee.org/articles/the-fallacy-of-intrinsic-value/")

It's not a requirement that the money must be backed by something, or have intrinsic value like commodity money, the real problem is that the supply isn't actually limited.  Banks inflate the supply using ◊link[fractional-banking]{◊em{fractional banking}} while central banks can print money, both physical and digital, without any limit.◊sn{fractional-banking-good}

◊ndef["fractional-banking-good"]{
    The basic idea behind Fractional Banking is that the bank gives out more money than it really has. So for example if I deposit 1000 SEK into the bank, the bank can now also loan out 900 SEK to you (how much the bank is allowed to loan differs). It has increased the money supply with 900 SEK from "thin air".

    There are those who ◊link[fractional-banking-atlanta]{argue that Fractional Banking is a net positive for society}. And ◊link[fractional-banking-bad]{those who disagree}. Regardless, it is a negative with respect to the properties of money we use.
}

The term ◊link[sound-money]{◊em{sound money}} refers to money that isn't prone to sudden changes in long term purchasing power, and the value is determined by the free market. If the supply of money differs from the demand, which will happen with fiat due to the disconnect between banks and the market, then there will be changes. While fiat has many positive properties, after the move away from the gold standard, it's now considered unsound money.

◊note-pos[#:top -11.5]{fractional-banking-good}

◊(define sound-money "https://www.soundmoneydefense.org/sound-money-explained")


◊subhead{Why do we need good money?}

Outside of curiosity, why does it matter if there are better forms of money? If fiat is good enough, why bother?

I see two major reasons:

◊ol{
    ◊li{The point of money is to increase economic efficiency.

        Better forms of money are more efficient.}
    ◊li{Money with poor properties can lead to large economic problems.

        For instance how the ability to print fiat money from thin air can lead to hyperinflation.}
}

In our context knowing what makes money perform well helps us reason about cryptocurrencies, and to see if it can live up to it's namesake.

◊(define next-chapter "/are_cryptocurrencies_money.html")

◊(define sea-shells "https://www.nbbmuseum.be/en/2007/01/cowry-shells.htm")
◊(define shells-slaves "https://www.culturesofwestafrica.com/cowrie-shell-monetary-symbolic-value/")
◊(define ancient-greece-coinage "https://www.ancient.eu/Greek_Coinage/")
◊(define rai-stones "http://www.bbc.com/travel/story/20180502-the-tiny-island-with-human-sized-money")
◊(define rai-stones-pictures "https://www.thevintagenews.com/2017/12/28/rai-stones/")
◊(define germany-wallpaper "https://mashable.com/2016/07/27/german-hyperinflation/")
◊(define prison-stamps "https://www.therichest.com/business/economy/five-surprising-things-prisoners-use-as-currency/")
◊(define prison-ramen "https://www.npr.org/sections/thesalt/2016/08/26/491236253/ramen-noodles-are-now-the-prison-currency-of-choice?t=1557205041822")
◊(define prison-cigarettes "https://www.cengage.com/economics/tomlinson/transcripts/8520.pdf")
◊(define fractional-banking "https://corporatefinanceinstitute.com/resources/knowledge/finance/fractional-banking/")
◊(define fractional-banking-atlanta "https://www.frbatlanta.org/education/classroom-economist/fractional-reserve-banking/economists-perspective-transcript")
◊(define fractional-banking-bad "https://mises.org/library/faults-fractional-reserve-banking")
◊(define largest-coin "https://www.riksbank.se/en-gb/about-the-riksbank/history/1600-1699/the-worlds-largest-coin/")
◊(define state-theory-of-money "https://socialsciences.mcmaster.ca/econ/ugcm/3ll3/knapp/StateTheoryMoney.pdf")
◊(define subjective-theory-of-value "https://wiki.mises.org/wiki/Subjective_theory_of_value")
◊(define gold-standard "https://www.britannica.com/topic/gold-standard")

◊; http://money.visualcapitalist.com/infographic-the-properties-of-money/
◊; https://www.aier.org/
◊; https://thesocietypages.org/socimages/2014/04/24/money-as-a-social-construction/
◊; https://hackernoon.com/money-is-a-social-construct-and-thats-why-you-should-run-a-bitcoin-full-node-ea0330cb69a5?gi=257add0b9b0b
◊; https://www.bbc.com/news/business-45523636
