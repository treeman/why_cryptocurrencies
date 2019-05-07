#lang pollen

◊(define-meta title "What is money?")
◊(define-meta subtitle "It's subjective")
◊(define-meta updated "2019-05-03T06:32:07+0200Z")
◊(define-meta uuid "67cd34c5-058b-4908-a4a6-aed09aff22cc")

◊epigraph{
  ◊qt[#:author "J.P. Morgan" #:date "1912"]{
     Money is gold, and nothing else.
  }
}

Money is something completely necessary in our society, most people probably come in contact with money every day. We might worry when paying our expenses, that we don't have enough or even be glad for how much we have. But we seldom stop and think of what money really is.

Not just how the physical coins and pieces of paper are made, but why does money exist? What makes it valuable? Are there different kinds of money? And are there good and bad forms of money?◊mn{money-or-currency}

Before getting interested in cryptocurrencies I too had never asked these questions. I will try to provide some insight into this admittedly complex topic.


◊subhead{Historical examples of money}

◊todo{Switch out images to royalty free ones, alternatively replace with my own sketchy images}

First let's look at some interesting historical examples of things that have been used as money. Some are predictable but others are quite perplexing.

◊ndef["money-or-currency"]{
    The words money and currency are often used interchangeably. Although I might be sloppy in my usage there is a subtle difference. Money refers to an intangible concept---you cannot reach out and grab it. Currency instead refers to the physical coins themselves.

    If that's the definition then maybe cryptocurrencies should instead be called crypto-money?

    Even though we cannot reach out and grab them, the coins do exist. Similar to how digital pictures exist---they're not an abstract concept. Therefore I, as much of the community, will still call cryptocurrencies a type of currency.
}

◊section[#:class "money-examples"]{
    ◊money["Shells"
           #:date "1200 B.C."
           #:img "/images/sea-shells-1994213_640.jpg"]{
        Sea shells ◊link[sea-shells]{have been used as money for centuries}, it was commonly used in parts of Africa and Asia but also in other parts of the world. ◊link[shells-slaves]{During the slave trade} in Africa vast quantities exchanged hands.
    }
    ◊money["Coins in ancient Greece"
           #:date "500 B.C."
           #:img "https://upload.wikimedia.org/wikipedia/commons/4/40/EucratidesStatere.jpg"]{
        The Greeks ◊link[ancient-greece-coinage]{used coins} made from precious metal like silver, bronze and gold. They also stamped the coins with beautiful portraits for a truly modern look (already 3500 years ago).
    }
    ◊money["Rai stones"
           #:date "1000 - 1400 A.D."
           #:img "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Yap_Stone_Money.jpg/737px-Yap_Stone_Money.jpg"]{
        ◊link[rai-stones]{Rai stones} is a form of stone money on the Yap Islands. They can be up to 4 m in diameter but most are much smaller, down to around 3.5 cm in diameter. Instead of moving the big ones you can instead tell people you've transferred them. ◊link[rai-stones-pictures]{Here are some great pictures}.
    }
    ◊money["A 20kg copper coin"
           #:date "1644"
           #:img "https://www.riksbank.se/imagevault/publishedmedia/2b6uukujdt950gdjqfvx/Kopparmynt_1624.png"]{

        Another example of---let's just say interesting---form of money is ◊link[largest-coin]{the world's largest coin.} It's a copper coin weighing 20kg, issued in Sweden.

        Since copper was worth much less than silver, very large coins had to be made to offset the difference. At that time coins did contain raw materials according to their value, which is not the case today.
    }
    ◊money["Bank notes in hyperinflating Germany"
           #:date "1923"
           #:img "https://mondrian.mashable.com/uploads%252F2016%252F7%252F26%252Fgermaninflation_16.jpg%252Ffit-in__1440x1440.jpg?signature=lxEf1wsHHE3quSjlZbFBwlnKYjg="]{
        Bank notes, paper money, is easier to handle than physical coins, but they do have problems of their own. After the first world war in Germany hyperinflation set in and quickly made existing notes worthless. It got so bad it was cheaper to ◊link[germany-wallpaper]{use the notes as wallpaper} instead of buying wallpaper.
    }
    ◊money["Cigarettes in prison"
           #:date "20th century"
           #:img "https://productplacementblog.com/wp-content/uploads/2019/01/Lucky-Strike-Cigarettes-in-The-Shawshank-Redemption-1-800x450.jpg"]{
        Like depicted in the movie Shawshank Redemption cigarettes are used in some prisons ◊link[prison-cigarettes]{as a form of money}. Today some prisons have started to ban smoking, so they instead use things like ◊link[prison-stamps]{stamps} or ◊link[prison-ramen]{ramen}.
    }
    ◊money["Euro bank notes"
           #:date "21th century"
           #:img "https://i.dailymail.co.uk/i/pix/2016/02/16/10/004918B700000258-3449097-image-a-18_1455617645563.jpg"]{
        There are many kinds of fiat currencies, for example the Euro. Modern coins are not made of valuable metal and paper notes are used for large denominations.
    }
    ◊money["Dogecoin"
           #:date "2013"
           #:img "https://dogecoin.com/imgs/dogecoin-300.png"]{
        Dogecoin is a cryptocurrency, while created as a "joke currency", it quickly gained popularity as a tipping tool online. You can still find merchants who accept it today for things like domain names, web hosting, VPNs or games.
    }
    ◊money["Marbles on the school yard"
           #:date "2017"
           #:img "https://images-na.ssl-images-amazon.com/images/I/81OSKE1n6gL._SL1500_.jpg"]{
        Kids on the schoolyard often come up with interesting forms of money. For example collectible card games or game components.◊sn{pokemon} Like marbles used in a Swedish game "rutan". Those with many marbles had the highest status in class.
    }
}

◊ndef["pokemon"]{
    I'm not really up to date with the games kids play these days. I still live with the memories of Pokémon. Good times.
}


◊(define (money title #:img img #:date [date #f] . text)
   (define xdate (if date
                     `(div ((class "date")) ,date)
                     ""))
   `(div ((class "example"))
      (img ((src ,img)))
      (div ((class "txt"))
        (div ((class "header"))
          (h3 ,title)
          ,xdate)
        ,@text)))


◊subhead{The gold standard}

There's an important historical point to make about fiat. First used 1821 in the United Kingdom, the ◊link[gold-standard]{gold standard} made sure to back each currency unit with gold. So if you had $1,000 in bank notes you could exchange them to $1,000 worth of gold. This was used in various ways up until 1971, when it was finally abandoned completely.


◊subhead{Bartering, and why do we need money?}

How would life look like if we didn't have money? We would have to turn to bartering---trading goods or services directly.◊sn{bartering}

For example imagine if you're a farmer and you have a bunch of pigs. To buy a new tractor you need to trade with the tractor seller, and maybe you can buy the tractor for 10 pigs.

◊todo{IMG farmer trades 10 pigs for a tractor}

But there are problems with this system:

◊ol{
    ◊li{What if the tractor seller doesn't want your pigs?

        You would have to trade with others and find something the seller would accept.
    }
    ◊li{What if you want to buy a loaf of bread?

        You would have to kill a pig and offer parts to him. Maybe the pigs haven't grown up yet---you'll lose a lot if you kill one too early.
    }
}

In short it's extremely inefficient.

◊todo{IMG farmer trying to trade for a tractor, with many intermediate steps}

This is why we as a society prefer to use money. Even if the thing we use as money itself is basically worthless---like pieces of paper---the function it serves is very valuable.

◊ndef["bartering"]{
    Bartering can happen on a small scale today. For example in your social circle you might trade favors instead of money.

    In an economical collapse, like in the case of hyperinflation, bartering might make sense on a larger scale as well.
}


◊subhead{State theory of money}

One common answer to the question "what gives money value?" is ◊link[state-theory-of-money]{the State Theory of Money} (many refer to it unknowingly).

The basic thesis is that it's the state that gives value to money.

◊ol{
    ◊li{Fiat currency is declared by the state to be ◊em{legal tender}, which means merchants have to accept it by law.}
    ◊li{The state◊sn{fed} is responsible to regulate inflation.}
    ◊li{Banks are insured by the state, increasing safety of the currency.}
    ◊li{Before dropping the gold standard, fiat currencies were backed up by gold.}
}

While this might on the surface explain why fiat currencies are valuable, it fails to explain why other forms of money become valuable.

◊ndef["fed"]{
    In the US it's actually the Federal Reserve System, a central bank, that controls printing of money.
}


◊subhead{Subjective theory of value}

Instead a better explanation is given by the ◊link[subjective-theory-of-value]{subjective theory of value}. It describes how goods are valued, but it serves just as well to explain why money is valuable.

In short it says ◊em{value is subjective}.

That might sound too simplistic or like a tautology. But what it means is there's no global deciding function that gives value. Instead each person independently assigns value.

For instance medicine can be extremely valuable for those who needs it, but have little value to others. So if you have the medicine, but don't need it, you'll gladly sell. But someone who needs it would be very reluctant to sell, unless for a very high price.

What does it mean for money? That ◊strong{the value of money is emergent from a group of individuals}. If for example everyone in your social group declares that tomorrow they'll use Pokémon trading cards as money, then they suddenly become very valuable to you. The more people who use a form of money, the better it works and the more value it will have.

States doesn't give money value---but it can contribute. For example declaring fiat legal tender makes more people accept it, which in turn increases it's value.


◊subhead{What functions does money serve?}

If more or less anything can be used as money, it makes more sense to look at how money is used. Knowledgeable people seem to agree money has three major functions:

◊todo{Images for these examples}

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

        It maintains it's value over time.

        A piece of gold could for example buy clothes in both ancient Greece and today.
    }
}

◊ndef["cars-south"]{
    Used cars are usually cheaper in the south of Sweden, for some reason unknown to me.
}

Note that these are functions of usage and adoption. For instance if something has been a store of value a period of time it doesn't mean it will continue to be a good store of value in the future.◊sn{gold-sov}

But it does raise some interesting question:

◊ul{
    ◊li{Can anything be used as money?}
    ◊li{Are there "good" and "bad" forms of money?}
}

As seen from historical examples of money I think it's safe to conclude that yes, basically anything can be used as money. But to evaluate if money is good or bad we need to look at other properties.

◊ndef["gold-sov"]{
    Gold is the classical example of a store of value. But it has also seen large up and down movements in valuation.

    ◊todo{IMG of gold valuation}
}


◊subhead{What properties does good money have?}

To function as money, economists seem to agree that money should have these properties:

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
    ◊li{◊strong{Fungible}

        One unit is viewed as interchangeable with another.

        For instance shares in a company should be the same, even if bought at different times and at different prices.
    }
    ◊li{◊strong{Limited in supply}

        There should be a limited and predictable amount of money.◊sn{limited-supply}

        A limited amount is needed for the money to hold it's value.  It's important that money can't be counterfeit, otherwise it would be possible to produce an unlimited amount of money.
    }
    ◊li{◊strong{Portable}

        It's easy to carry around money and to transfer it to others.

        Money should be practical.
    }
    ◊li{◊strong{Uniform}

        All versions of the same denomination must have the same purchasing power.◊sn{uniform}

        Coins made of precious metal and of the same type should contain the same amount.
    }
}

We can summarize the properties as: money should be practical and efficient.

◊ndef["uniform"]{
    The difference between fungibility and uniformity is a bit confusing. To me, fungibility concerns history and uniformity concerns how two pieces of a currency appears right now. They essentially say: two coins of the same type should always be considered equal.
}

◊ndef["limited-supply"]{
    In the ideal situation money should function as a medium of exchange between goods and services, in a closed system. Therefore it's important that money cannot be created out of thin air---the supply should be limited. The only way to earn money is to trade for it somehow.
}


◊subhead{Historical examples of good and bad forms of money}

How do our historical examples of money hold up? They don't include examples of outright bad forms◊sn{really-bad}, but some are indeed better than others.

The large ◊strong{Rai stones} and the ◊strong{20kg copper coin} are great examples of money that isn't portable. Therefore they are bad forms of money.◊sn{smaller-denominations}

◊strong{Cigarettes}, ◊strong{marbles}, ◊strong{stamps} and other types of commodities are decent forms of money---on a small scale. They have some durability issues (wear and tear) and they're not perfectly uniform. But most of all they can be mass produced preventing it's use on a larger scale.◊sn{marble-coin}

◊strong{Sea shells} is also a pretty good form of money---assuming they're not too plentiful. If used in a local market---for example on an island---there's always a risk of the market being overrun by shells from other islands, where they're more common.

◊strong{Metal coins} is a very good form of money, especially if made by scarce material. Gold is naturally very scarce, ensuring a limited supply, and coins are easy to use and very durable. This is the reason coins have been the dominating type of currency for over 2000 years.

Whether ◊strong{cryptocurrencies} are good or bad is a topic for the ◊link[next-chapter]{next chapter}.


◊subhead{The problem with fiat currencies}

The money we usually use today is a little different from coins made of precious materials. We use coins made with cheap metal, paper notes and our money is often just stored digitally at a bank.

It's not really a requirement that the money must have an intrinsic value, the real problem is that the supply isn't actually limited.  Banks inflate the supply using ◊link[fractional-banking]{Fractional Banking} and central banks can print money, both physical and digital, without any limit.◊sn{fractional-banking-good}

The term ◊em{sound money} refers to money that is not prone to sudden changes in long term purchasing power. If the supply of money differs from the demand, which will happen with fiat due to the disconnect between banks and the market, then there will be changes.

While fiat has many positive properties, after the move away from the gold standard, it's now considered unsound money.


◊ndef["fractional-banking-good"]{
    There are those who ◊link[fractional-banking-atlanta]{argue that Fractional Banking is a net positive for society}. And ◊link[fractional-banking-bad]{those who disagree}.
}



◊ndef["marble-coin"]{
    We can run a thought experiment: what if we wanted to use marbles as money on a global scale?

    If we control the creation of a special kind of marble, we can make them durable and uniform. We can also add some sort of counterfeit protection---maybe embed holograms with cryptographic messages---to ensure a limited supply. And of course it's easy to create different kinds of denominations.

    Then let's consider the shape---a sphere isn't very good. It might roll away and it's hard to carry in the wallet. So why not make it a flat cylinder?

    And now we've reinvented the coin. A coin is actually remarkably efficient!
}


◊ndef["really-bad"]{
    Food or sand would be examples of really bad money. Food spoils quickly while sand exist in extreme quantities.
}

◊ndef["smaller-denominations"]{
    Both Rai stones and the Swedish copper coins have smaller coins as well, making them a bit more practical.
}


◊subhead{Why do we need good money?}

What does it matter if money is good or bad? If fiat is good enough, why bother?

I can come up with two major reasons:

◊ol{
    ◊li{The point of money is to increase economic efficiency.

        Good forms of money are more efficient than bad forms.}
    ◊li{Using bad forms of money can lead to large economic problems.

        For instance how the ability to print fiat money from thin air can lead to hyperinflation.}
}

In our context knowing what differentiates good from bad forms of money helps us reason about cryptocurrencies, and to see if it can live up to it's namesake. But more on that in the ◊link[next-chapter]{next chapter}.


◊(define sea-shells "https://www.nbbmuseum.be/en/2007/01/cowry-shells.htm")
◊(define shells-slaves "https://www.culturesofwestafrica.com/cowrie-shell-monetary-symbolic-value/")
◊(define ancient-greece-coinage "https://www.ancient.eu/Greek_Coinage/")
◊(define rai-stones "http://www.bbc.com/travel/story/20180502-the-tiny-island-with-human-sized-money")
◊(define rai-stones-pictures "https://www.thevintagenews.com/2017/12/28/rai-stones/")
◊(define germany-wallpaper "https://mashable.com/2016/07/27/german-hyperinflation/")
◊(define next-chapter "are_cryptocurrencies_money.html")
◊(define prison-stamps "https://www.therichest.com/business/economy/five-surprising-things-prisoners-use-as-currency/")
◊(define prison-ramen "https://www.npr.org/sections/thesalt/2016/08/26/491236253/ramen-noodles-are-now-the-prison-currency-of-choice?t=1557205041822")
◊(define prison-cigarettes "")
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
