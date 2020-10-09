#lang pollen

◊(define-meta title "A defective system")
◊(define-meta subtitle "There is something terribly wrong with this system, isn't there?")
◊(define-meta published "2019-11-13T00:00:00+01:00")
◊(define-meta updated "2020-01-21T08:27:30+01:00")
◊(define-meta uuid "b09419e3-0f3d-4473-b458-d0dad01ed4b8")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Ayn Rand"]{
    So you think that money is the root of all evil. Have you ever asked what is the root of all money?
  }
}


In the chapter ◊link[what_is_money]{What is money?} we saw some historical examples of money and some properties that good money should have. Unfortunately looking at money through history, and what properties money should have, is not enough to understand the current economic system, which is a completely different beast.

As we saw in the ◊link[the_blind_leading_the_blind]{previous chapter}, a big problem is that our leaders don't know how to steer this financial beast. But there are more problems to the modern system, again related to being based on ◊link[sound-money]{unsound money} where a flexible money supply breaks the properties of good money. This has far-reaching negative consequences and it means the economic system we use today is broken, on a fundamental level.


◊subhead{Economic effects of counterfeiting}

Imagine a counterfeiter, who has the ability to print money from thin air.◊mn{magic-printer} What would he do with all the money? What would ◊em{you} do?

Personally I would probably pay off my loans, renovate our house, go on vacation and buy a bunch of LEGO®. If I was smart I would also invest it; buy some stocks, some gold, maybe a house or two and rent them out. In short I would buy a bunch of stuff---and I think most would do the same.

If I did print money---a ◊strong{lot} of money---and spent it like this, what would the effect on the economy be?◊mn{case-against-fed}

For starters if I just kept the money without spending it, nothing would change:

◊img[#:src "/images/counterfeiting1.png" #:alt "The counterfeiter can print a large stash of cash."]{
    The counterfeit money is colored yellow and the real money is green.
}

Then if I decided to buy a bunch of LEGO®, the store would get some of my money:

◊img[#:src "/images/counterfeiting2.png" #:alt "The counterfeiter buys LEGO."]{}

After a while the store would use the counterfeited money to pay their supplier:

◊img[#:src "/images/counterfeiting3.png" #:alt "Money further trickles down to the supplier, but not to everyone."]{}

Who in turn will use it to buy other stuff, and in this way the counterfeited money slowly trickles out into the rest of the economy. This extra money has two important effects:

◊ol{
    ◊li{Higher prices.

        Because there's more money going around, with the same amount of goods, the prices will rise. For instance if all the money in the world would double overnight, then naturally all prices would double too. Yesterday's $100 bill would today only get you $50 worth of stuff.

        When prices rise and the same amount of money buys you less stuff, we call it ◊def{inflation}.◊mn{deflation} It's how my grandmother could buy candy for one cent (◊sans-tnum{0.01 SEK}) when she was a child, while today our smallest coin is ◊sans-tnum{1 SEK}.

        ◊note-pos{deflation}

    }
    ◊li{Redistribution of wealth.

        Notice how in our previous example the counterfeited money isn't divided equally. The counterfeiter suddenly became much richer than everyone else, and some received a bit more than others. Notice that the poor guy to the right in the example---who had very little to start with---didn't receive any money and became even poorer.
    }
}

◊ndef["deflation"]{
    The opposite is ◊def{deflation}, when money increases in value and buys you more stuff.

    While it may sound strange, technology has been deflating in price forever. When computers were just introduced they were ◊em{extremely} expensive, but now everyone and their mother literally has one in their pocket, and probably several at home. Some even have one on their wrist.
}

Counterfeiting means everyones savings---the "old" money---will lose value. This is why you shouldn't just store all your money as cash under the mattress or in a bank account---the value will be eaten up by inflation.◊mn{inflation-visualization}

◊ndef["inflation-visualization"]{
    ◊link[inflation-dollar-visualization]{Here's a cool visualization} of the expanding money supply and what $1 could buy.
}

◊(define inflation-dollar-visualization "http://money.visualcapitalist.com/buying-power-us-dollar-century/")

◊img[#:src "images/inflation.svg" #:link #t #:alt "The inflation in Sweden between 1960 and 2018."]{
    How the ◊link[swe-inflation]{inflation in Sweden} has caused the actual value of money to decrease.◊mn{why-sweden?}  

    The graph shows an inflation adjusted index, starting from 1960. You can think of it what ◊sans-tnum{100 SEK} of goods in a given year would be worth in 1960's money. For example ◊sans-tnum{100 SEK} from 2018 would only buy ◊sans-tnum{7 SEK} worth of stuff in 1960---a 93% drop in value.

    You can also compare two years with each other. For example the index in 1976 was around 40, and in 1982 around 20, which means money lost 50% of its value between 1976 and 1982.
}

◊ndef["why-sweden?"]{
    Why pick out Sweden as an example? No particular reason really, the graph would look similar if I picked the United States or some other well-functioning country. At first I was going to exemplify both Sweden and the United States, but the differences were so small I didn't see the point.
}

◊(define consumer-price-index
   (x-ref
     "2019-11-13"
     "https://data.worldbank.org/indicator/FP.CPI.TOTL?locations=US-SE-XC"
     "Consumer price index (2010 = 100) - United States, Sweden, Euro area"))
◊(define swe-inflation
   (x-ref
     "2019-11-13"
     "https://data.worldbank.org/indicator/FP.CPI.TOTL.ZG?locations=SE"
     "Inflation, consumer prices (annual %) - Sweden"))

Counterfeiting also means redistributing wealth from everyone to the counterfeiter (and to a lesser extent people the counterfeiter buys from) at the same rate as the inflation eats up the value of money. Even though nobody's stealing your money, the effect is the same: your wealth relative to others will decrease.

◊note-pos[#:top -49]{inflation-visualization}
◊note-pos[#:top -21]{why-sweden?}


◊ndef["magic-printer"]{
    Maybe he's got a magic printer which can print perfect copies of a dollar bill. Normally printers even ◊link[print-money]{refuse to print images} looking like a dollar or other major currencies.
}

◊(define print-money
   (x-ref
     "2019-11-13"
     "https://murdoch.is/projects/currency/"
     "Software Detection of Currency"))

◊ndef["case-against-fed"]{
    A similar example was given by Murray N. Rothbard in ◊(book-link case-against-fed-book).
}


◊subhead{Legal counterfeiting}

While I think most will agree counterfeiting shouldn't be allowed, the modern economic system is built upon legal counterfeiting. There are entities who have the legal right to print money---with the same negative consequences on the economy that counterfeiting has. As noted earlier the central banks have this right, but regular banks can increase the money supply as well.

The central banks---the Federal Reserve (Fed) in the U.S. or the European Central Bank (ECB) in the EU---are the only ones allowed to print physical money. Which they have to do, if only to replace old bills.◊sn{quantitive-easing} They also have an inflation target, usually 2% or 3%, meaning the goal is to devalue the money. The rationale is it drives economic growth because ◊link[inflation-rational]{shoppers will buy now to avoid higher prices later}.◊sn{inflation-growth?}

◊note-pos[#:top -6]{quantitive-easing}
◊note-pos{inflation-growth?}

◊ndef["quantitive-easing"]{
    If the central banks want to increase the money supply it's inefficient to print physical money. Instead they buy assets from banks who in turn can use the money as reserves while increasing the money supply. This is called ◊def[quantitive-easing]{quantitive easing}, but it's unknown how well it actually works.
}

◊ndef["inflation-growth?"]{
    I always found the argument of inflation pushing people to spend weird. Most people I know don't even know about the effects inflation has, even less so when the inflation and the rising prices are so small you don't really notice them.
}

◊(define quantitive-easing
   (x-ref
     "2019-11-13"
     "https://www.investopedia.com/terms/q/quantitative-easing.asp"
     "Quantitative Easing (QE)"))

Although the central banks are ultimately responsible, it's the regular banks who expand the money supply the most. It's done via ◊def[fractional-banking]{fractional banking} which works like this:

◊ol{
  ◊li{In the beginning John has ◊sans-tnum{1000 SEK}, with nothing strange going on. This is the balance sheet for John and the bank:

    ◊(table "1 000 SEK" "" "")
  }
  ◊li{John lends the money to the bank, and receives money promises from the bank (let's call them IOUs):

    ◊(table "1 000 IOU" "1 000 SEK" "")
  }
  ◊li{The bank can issue more IOUs if they want, here they lend out IOUs to Jane:

    ◊(table "1 000 IOU" "1 000 SEK" "9 000 IOU")
  }
}


◊(define (table john bank jane)
   `(div ((class "fractional-table-ex"))
      (div ((class "header row"))
        (div ((class "cell")) "John")
        (div ((class "cell")) "Bank")
        (div ((class "cell")) ,(if (string=? jane "")
                                   ""
                                   "Jane")))
      (div ((class "row"))
        (div ((class "cell")) ,john)
        (div ((class "cell")) ,bank)
        (div ((class "cell")) ,jane))))

There is now ◊sans-tnum{11 000} money circulating the system. Because an IOU is treated like a SEK for all intents and purposes we can even say that there's ◊sans-tnum{11 000 SEK} now after we started with only ◊sans-tnum{1 000 SEK}. The bank printed ◊sans-tnum{10 000 SEK} from thin air and has only ◊sans-tnum{1 000 SEK} to back them up.  The ratio of SEK to IOU, in this example 10%, is called the reserve.

◊qt[#:author "Lloyd"
    #:src "Dumb and Dumber (1994)"
    #:quote-src #t
    #:url "https://www.imdb.com/title/tt0109686/"]{
    That’s as good as money, sir. Those are I.O.U.s.
}

We might wonder, why stop at only printing ◊sans-tnum{10 000 SEK}? Why not ◊sans-tnum{100 000 SEK}? Or more? When the bank gives out IOUs they do need to repay them, otherwise they'll fail and become bankrupt. In the example above if Jane would withdraw ◊sans-tnum{2 000 SEK} the bank would fail, because it can only repay ◊sans-tnum{1 000 SEK}.

The system works as long as people just keep their money at the bank, and only occasionally withdraw their money. But if people start withdrawing a lot of money at the same time, a ◊link[bank-run]{bank run} may cause the bank to fail. To reduce this risk, banks have requirements on their reserves.◊mn{reserve-assets}

◊ndef["reserve-assets"]{
    My example is simplified and banks aren't always required to have the reserves in cash. They can have them in other assets, which they can convert to cash if needed. See for example the ◊link[capital-req-sweden]{Capital requirements for the Swedish banks, second quarter 2019}.

    The reserve requirements can also be fluid, see the ECB's ◊def[minium-reserve-req]{minimum reserve requirements} for example.
}

◊(define inflation-rational
   (x-ref
     "2019-11-13"
     "https://www.thebalance.com/inflation-targeting-definition-how-it-works-3305854"
     "Inflation Targeting and How It Works"))
◊(define fractional-banking
   (x-ref
     "2019-11-13"
     "https://corporatefinanceinstitute.com/resources/knowledge/finance/fractional-banking/"
     "Fractional Banking: Portion of total deposits held as reserves"))
◊(define minium-reserve-req
   (x-ref
     "2019-11-13"
     "https://www.ecb.europa.eu/explainers/tell-me/html/minimum_reserve_req.en.html"
     "What are minimum reserve requirements?"))
◊(define bank-run
   (x-ref
     "2019-11-13"
     "https://en.wikipedia.org/wiki/Bank_run"
     "Wikipedia: Bank run"))
◊(define capital-req-sweden
   (x-ref
     "2019-11-13"
     "https://www.fi.se/contentassets/67c0bdcc4ddf4d1dbea616cb48fb1f01/kapitalkrav-sv-banker-2019-kv2_eng.pdf"
     "Capital requirements forthe Swedish banks,secondquarter 2019"))


◊subhead{Lender of last resort}

As money printers, the central banks play an important roll---as the "lender of last resort". This means when all else fails, for example if the banks are about to go bankrupt because they have too little reserves or if the economy is going bad, then central banks can step in and save them. As we saw in an ◊link[financial_crisis]{earlier chapter} this is exactly what happened during the 2008 financial crisis, where banks and other institutions messed up in a major way but were bailed-out and made whole again.

This means the real check against fractional banking (the risk of going bankrupt) is thrown away and replaced with regulation that's supposed to keep the banks in check, while making the banks more robust against failure. While fine in theory, in practice it means banks are now incentivized to push the limits any way they can, to maximize their profits.

I don't think there's a better example of the hazards the lender of last resort creates than ◊link[financial_crisis]{the 2008 financial crisis}. I feel the term ◊def[moral-hazard]{moral hazard}, to describe someone taking risks others will pay for, is too soft to describe the situation.◊mn{crisis-terms}

◊ndef["crisis-terms"]{
    Perhaps the words ◊def{deceit}, ◊def{scam}, ◊def{fraud} or ◊def{swindle} comes closer to describe my feelings.
}

◊subhead{Reason behind the madness}

If you've followed along this far, you might get the feeling that the economic system is completely corrupt and wonder why anyone would ever get along with it? But not so fast---there's a reason things are the way the are, and a big part can be traced the ◊link[great-depression]{Great Depression} in the 1930s.

The Great Depression was a huge economic crisis, the worst in modern history, which dwarfed the 2008 financial crisis. Experts debate the causes of this decade long crisis to this day, with explanations ranging from governments spending too little, printing too little money, printing too much money or the gold standard.◊mn{depression-crisis}

◊ndef["depression-crisis"]{
    There's more to these theories than my attempt to simplify them suggests, and there's probably not a single cause. For instance the global gold standard probably helped the crisis to spread, even if it might not have caused the crisis. There are also more theories than I list here.
}

While it's difficult to point out causes, and it's even debatable why we got out of it, it's fairly easy to point out some big changes introduced when combating the crisis:

◊ol{
    ◊li{Abandoned the gold standard

        After briefly dropping the gold standard to pay for World War I, all countries left the gold standard during the depression.◊mn{forbade-gold}

        ◊note-pos{forbade-gold}

        ◊ndef["forbade-gold"]{
            Because the government ran out of gold, in 1933 private ownership of larger amounts of gold ◊link[gold-illegal]{was made illegal}. It was forbidden until 1974.
        }
    }
    ◊li{Proactive governments

        In the ◊link[new-deal]{New Deal} the United States tried to stimulate the economy by for example building infrastructure, building houses, paying farmers to plant crops, producing power and insuring loans.
    }
    ◊li{Debt fueled investments

        To pay for these investments the United States greatly ◊link[debt-us]{increased their debt} from $22 billion to $40 billion.◊mn{debt-ww2}

        ◊note-pos{debt-ww2}

        ◊ndef["debt-ww2"]{
            Still, they were comparatively ◊link[new-deal-conservative]{conservative with increasing the debt}. To pay for World War II the debt ◊link[debt-us]{rose to $241 billion in 1946}.
        }
    }
}

◊(define debt-us
   (x-ref
     "2019-11-13"
     "https://www.theatlantic.com/business/archive/2012/11/the-long-story-of-us-debt-from-1790-to-2011-in-1-little-chart/265185/"
     "The Long Story of U.S. Debt, From 1790 to 2011, in 1 Little Chart"))
◊(define new-deal-conservative
   (x-ref
     "2019-11-13"
     "https://www.nytimes.com/2008/11/23/business/23view.html?_r=0"
     "The New Deal Didn’t Always Work, Either"))
◊(define gold-illegal
   (x-ref
     "2019-11-13"
     "https://www.moneymetals.com/resources/executive-order-6102"
     "The Gold Confiscation Of April 5, 1933"))

These align with the ideas of ◊link[keynesian-economics]{Keynesian Economics} (also developed in the 1930s) where governments should stimulate the economy during recessions, and compensate by pulling back when the economy's expanding. The rationale is that the ◊def[velocity-money]{velocity of money} (how fast companies and people spend money) will slow down during a recession, making it worse. Therefore the government should increase their spending---increasing the velocity of money---to help dampen the recession.

Seen through this lens, it all makes sense. To help the government spend money it doesn't have, being able to print money is a huge help. When the government goes deeper into debt, again it helps to be able to print money. And the interaction between central banks and banks is a fairly efficient way to setup a money-printing machine.◊mn{gold-standard-ww2}

    ◊ndef["gold-standard-ww2"]{
        After World War II the United States went back to the gold standard, a little half-heartedly. They only allowed foreign nations to redeem dollars for gold, which took an ◊link[nixon-shock]{abrupt end in 1971}.
    }

◊(define velocity-money
   (x-ref
     "2019-11-13"
     "https://www.investopedia.com/terms/v/velocity.asp"
     "Velocity of Money"))
◊(define nixon-shock
   (x-ref
     "2019-11-13"
     "https://www.investopedia.com/terms/n/nixon-shock.asp"
     "Nixon Shock"))
◊(define new-deal
   (x-ref
     "2019-11-13"
     "https://www.thebalance.com/fdr-and-the-new-deal-programs-timeline-did-it-work-3305598"
     "New Deal Summary, Programs, Policies, and Its Success"))

◊; While it would feel good if I condemned the state of affairs completely, and say that 

◊; On April 5, 1933, President Roosevelt signed Executive Order 6102 making the private ownership of gold certificates, coins and bullion illegal, reducing the pressure on Federal Reserve gold.

◊;Governments and central banks follow ◊link[keynesian-economics]{Keynesian economics}, which basically says the government should create demand

◊(define keynesian-economics
   (x-ref
     "2019-11-13"
     "https://www.thebalance.com/keynesian-economics-theory-definition-4159776"
     "Keynesian Economics Theory"))


◊subhead{A mountain of debt}

While taking out debt to fuel investments was only supposed to be a temporary measure to help the economy during downturns, today we massively increase the debt all the time. For example we've seen a ◊link[record-bull-run]{record bull run} in 2009--2019, yet the U.S. debt doubled from $11 trillion to $22 trillion during the same period.◊mn{trump-debt}

◊; Actual source
◊; https://fred.stlouisfed.org/graph/?id=GFDEBTN,
◊img[#:src "images/usa-debt.svg" #:link #t #:alt "The federal debt of the United States, measure in trillions of dollars, since 1966."]{
    The ◊link[usa-national-debt]{federal debt of the United States}, measure in trillions of dollars, since 1966.  
    After the ◊link[financial_crisis]{2008 financial crisis} the amount of debt skyrocketed, signifying a shift in economic policy.  
    During the COVID-19 pandemic the debt explosively increased at a pace unseen before.
}

Taking out a loan essentially borrows money from the future you, since you have to pay it back with interest. And the U.S. is paying for that now: in the 2020 budget 10.1% is spent on only the interest rate, and it's expected to ◊link[interest-us-debt]{take up 12.9% in 2026}, making it the fastest rising expense in the budget. Most of the debt is ◊link[public-debt]{public debt} (debt to people, companies or other governments), so refusing to pay would have disastrous consequences.


◊qt[#:author "Albert Einstein"]{
    Compound interest is the eighth wonder of the world. He who understands it, earns it... he who doesn't... pays it.
}

This isn't a situation unique to the United States, but ◊link[national-debt-list]{a global phenomena}. While the U.S. has a national debt at 104% of ◊def[gdp]{GDP} (a way to compare relative debts between countries), Sweden has a debt of 38%, ◊nbsp{Germany 61%}, ◊nbsp{Italy 132%}, ◊nbsp{Greece 181%} and Japan a staggering 235%.◊mn{how-to-measure-debt}

It seems like we're moving away from the original Keynesian ideas to something else, where paying off national debt matters less as we can just print more money.

◊note-pos[#:top -67]{trump-debt}
◊note-pos[#:top -7]{how-to-measure-debt}

◊ndef["trump-debt"]{
    Donald Trump promised to ◊link[trump-eliminate-debt]{eliminate the nation's debt in eight years}, and instead he greatly increased it. Let's just add that to the list of president Trump's list of broken promises.
}

◊ndef["how-to-measure-debt"]{
    There are different ways to measure national debt, each with pros and cons. ◊link[gdp%]{Percentage of GDP} seems to be the common way to do it.
}

◊(define gdp%
   (x-ref
     "2019-11-13"
     "https://www.investopedia.com/terms/d/debtgdpratio.asp"
     "Debt-to-GDP Ratio Definition"))
◊(define gdp
   (x-ref
     "2019-11-13"
     "https://www.investopedia.com/terms/g/gdp.asp"
     "Gross Domestic Product—GDP"))
◊(define national-debt-list
   (x-ref
     "2019-11-13"
     "https://countryeconomy.com/national-debt"
     "General government gross debt"))
◊(define interest-us-debt
   (x-ref
     "2019-11-13"
     "https://www.thebalance.com/interest-on-the-national-debt-4119024"
     " Interest on the National Debt and How It Affects You "))
◊(define us-budget-2020
   (x-ref
     "2019-11-13"
     "https://www.thebalance.com/u-s-federal-budget-breakdown-3305789"
     " US Federal Budget Breakdown 2020"))
◊(define public-debt
   (x-ref
     "2019-11-13"
     "https://www.thebalance.com/what-is-the-public-debt-3306294"
     "Public Debt With Its Pros and Cons"))
◊(define usa-national-debt
   (x-ref
     "2020-09-21"
     "https://fred.stlouisfed.org/graph/?id=GFDEBTN,"
     "Federal Reserve Bank of St. Louis: Federal Debt: Total Public Debt"))
◊(define trump-eliminate-debt
   (x-ref
     "2019-11-13"
     "https://www.washingtonpost.com/politics/in-turmoil-or-triumph-donald-trump-stands-alone/2016/04/02/8c0619b6-f8d6-11e5-a3ce-f06b5ba21f33_story.html?utm_term=.d6b42cbf9b8c"
     "In a revealing interview, Trump predicts a ‘massive recession’ but intends to eliminate the national debt in 8 year"))
◊(define trump-debt
   (x-ref
     "2019-11-13"
     "https://www.thebalance.com/trump-plans-to-reduce-national-debt-4114401"
     "Trump and the National Debt"))
◊(define record-bull-run
   (x-ref
     "2019-11-13"
     "https://www.theguardian.com/business/2018/aug/22/wall-street-record-longest-rally-history-bull-market"
     "Wall Street sets record for longest bull run in history"))


◊subhead{Growing inequality}

◊qt[#:src "Family Guy"]{
    It doesn't matter if you're black or white... the only color that really matters is green.
}

There's a worrying trend in the world: ◊link[global-inequality]{global inequality is rising}. The rich gets richer and the poor get... poorer.

◊img[#:src "images/income-inequality-world.svg" #:link #t #:alt "Top 10% income share between 1980 and 2015."]{
    Top 10% income share between 1980 and 2015.  
    Source ◊link[inequality-data]{World Inequality Database}.
}

The inequality is on the rise in nearly every country. If we take a closer look at the United States it paints a gloomy picture:◊mn{report}

◊img[#:src "images/income-inequality.svg" #:link #t #:alt "Income share in the United States between 1962 and 2014."]{
    Income share in the United States between 1962 and 2014.  
    Source ◊link[inequality-data]{World Inequality Database}.
}
◊img[#:src "images/wealth-inequality.svg" #:link #t #:alt "Net personal wealth in the United States between 1962 and 2014."]{
    Net personal wealth in the United States between 1962 and 2014.  
    Source ◊link[inequality-data]{World Inequality Database}.
}

While the money-making machine isn't the only cause of the inequality, it's a pretty difficult situation to reverse when even the national economy works against you. Printing money to solve problems will, in line with ◊link[rel-counterfeiting]{the previous counterfeiting example}, only fan the flames and make the situation worse.◊mn{trickle-down}

◊note-pos[#:top -70]{report}
◊note-pos{trickle-down}

◊ndef["report"]{
    There's many more ways to look at inequality data, for more I recommend the ◊link[wid-report]{World Inequality Report}.
}

◊ndef["trickle-down"]{
    Some will argue that the trickle-down effect makes inflation affect everyone equally. Unfortunately that's not the case, as the rich will both receive the money first (via the banks) and they have better access to financial tools to hedge against inflation (investing in gold, real estate or offshore banking).
}

◊(define rel-counterfeiting
  `("#economic-effects-of-counterfeiting"
    "Economic effects of counterfeiting"))
◊(define global-inequality
   (x-ref
     "2019-11-13"
     "https://wir2018.wid.world/"
     "World Inequality Report 2018"))
◊(define inequality-data
   (x-ref
     "2019-11-13"
     "https://wid.world/data/"
     "World Inequality Database"))
◊(define wid-report
   (x-ref
     "2019-11-13"
     "https://wir2018.wid.world/files/download/wir2018-full-report-english.pdf"
     "World Inequality Report 2018 (PDF)"))


◊subhead{No tools left}

We want to pull back on stimulation when the economy is booming, so we're prepared with all our tools when the economy is crashing. Unfortunately after a decade of economic boom, we've done the opposite:

◊ul{
    ◊li{The national debt has skyrocketed

        The larger the debt, the more expenses must be devoted to repaying the debt, leaving less for other more useful things.}
    ◊li{The central bank interest rates are already low

        A low rate means banks, and in extension we, can get cheaper loans which stimulates the economy. It's difficult to lower it more when it's almost zero, or even negative, already.◊mn{negative-interest}

        ◊note-pos{negative-interest}

        ◊ndef["negative-interest"]{
            In Sweden we've had a ◊link[swe-neg-rate]{negative repo rate since 2015}. Denmark's Jyske Bank also ◊link[denmark-neg-rate]{give depositors a negative rate}, meaning you have to pay to loan out money to the bank. These are strange times.
        }
    }
    ◊li{We're continually printing money

        The Federal Reserve is ◊link[fed-pouring]{pouring money into the financial system}. Printing an unlimited amount of money isn't great, not only because of the erosion of wealth, but rampant inflation can quickly destroy the economy.◊mn{hyperinflation-rome}

        ◊note-pos{hyperinflation-rome}

        ◊ndef["hyperinflation-rome"]{
            An interesting case is how ◊link[hyperinflation-rome]{hyperinflation took hold in ancient Rome}. Centuries of debasing the currency was followed by a sudden loss of trust and the collapse into hyperinflation. A lesson here is that rapid inflation can quickly throw the economy into chaos.
        }
    }
}

To be fair, the Federal Reserve knows this isn't an ideal situation, so they tried to raise interest rates. Unfortunately the stock market reacted poorly---many people got angry---and now they've backtracked and lowered them again. When problems arise, they use the financial equivalent of ◊link[fed-sledgehammer]{taking a sledgehammer to squash a bug}.

◊(define fed-sledgehammer
   (x-ref
     "2019-11-13"
     "https://www.newyorkfed.org/markets/opolicy/operating_policy_190920"
     "Federal Reserve of New York: Statement Regarding Repurchase Operations, September 20, 2019"))

So we're stuck in a situation where we don't have the tools to defend against a recession---tools the economic theory the system is built on needs. Tools that have been used up, because that's what the theory says we should do.◊mn{winging-it}

◊ndef["winging-it"]{
    It may sound like I'm referring to a single economic theory, which all governments and central banks follow. But that's not the case---there are many different theories, with slight differences, but I think it's a fair generalization to say that they mostly follow the push-pull ideas of stimulating the economy.

    Maybe a more correct thing to say is that many are just winging it, and making up rules as they go.
}

It seems to me if (or when) a recession comes we'll get caught with our pants down. And things have been looking pretty shaky a while now.

◊note-pos[#:top -7]{winging-it}

◊(define swe-neg-rate
   (x-ref
     "2019-11-13"
     "https://www.riksbank.se/en-gb/about-the-riksbank/history/2000-2018/negative-repo-rate-is-introduced/"
     "2015 - Negative repo rate is introduced"))
◊(define denmark-neg-rate
   (x-ref
     "2019-11-13"
     "https://www.reuters.com/article/denmark-rates-jyske-bank/update-1-denmarks-jyske-bank-lowers-its-negative-rates-on-deposits-idUSL5N26B1AA"
     "1-Denmark's Jyske Bank lowers its negative rates on deposits"))
◊(define hyperinflation-rome
   (x-ref
     "2019-11-13"
     "https://notesonliberty.com/2019/09/16/hyperinflation-and-trust-in-ancient-rome/"
     "Hyperinflation and trust in Ancient Rome"))
◊(define fed-pouring
   (x-ref
     "2019-11-13"
     "http://archive.is/PbCtz"
     "archived: Why is the Federal Reserve pouring money into the financial system?"))


◊subhead{The stock market magic trick}

When the world locked down during the COVID-19 pandemic the economy predictably crashed. Many people (including me) thought that the big recession was finally here and we'd be looking at several years of tough times.

But then something weird happened. Despite entire cities and countries locking down, the number of unemployed reached record numbers and many smaller companies closed their doors for good, the recession didn't come. Instead the stock market recovered very quickly, as if closing down the world economy was just a minor speed bump.

One might wonder, what the hell happened?

The Federal Reserve followed the script and printed trillions of dollars and used it to prop up the stock market. As seen in the M2 graph this was an extreme amount of money in a very short period of time:

◊img[#:src "images/m2.svg"
     #:link #t
     #:alt "The M2 money supply of the United States has been flat since 2010 until 2020 when it spiked from $15 trillion to $18 trillion in just a few months."]{
  ◊link[m2]{The M2 money stock of the United States} between 2010 and mid 2020.  
  ◊link[m2-def]{M2 is a measure of money supply} that includes cash, checking deposits, savings deposits, money market securities, mutual funds and other time deposits.  
}

Unfortunately the money printing didn't help the businesses that went out of business or the people who became unemployed. The money was instead funneled to the big companies who used it to artificially increase their valuation with ◊def[stock-buybacks]{stock buybacks} or just placed the money in their reserves. The money didn't trickle down to the masses; it got stuck driving up the stock price.◊mn{no-inflation}

◊ndef["no-inflation"]{
    This is also why the inflation hasn't shot up (yet).
}

Nothing fundamentally changed. The deep-rooted economic problems are still there, festering.

◊(define stock-buybacks
   (x-ref
     "2020-10-01"
     "https://www.investopedia.com/articles/02/041702.asp"
     "Stock Buybacks: A Breakdown"))
◊(define m2
   (x-ref
     "2020-10-01"
     "https://fred.stlouisfed.org/series/M2"
     "M2 Money Stock"))
◊(define m2-def
   (x-ref
     "2020-10-01"
     "https://www.investopedia.com/terms/m/m2.asp"
     "M2 Definition"))





◊subhead{Where do we go from here?}

Since the financial crisis in 2008 we're in uncharted territory, and we actually don't know what we should do. Therefore new economic theories, like the ◊link[mmt]{Modern Money Theory} (MMT), are developed. MMT basically says the government can pay its bills by just printing all money it needs, checked only by inflation. It's reasonable to ask if MMT is a sound economic theory, or if it's just describing ◊link[mmt-true]{what's already happening}.

While "printing more money" is a popular solution, ◊def[sound-money]{sound money} (with a stable money supply) might represent a compelling alternative for critics of the modern economic policies. For example fiat backed by gold, actual gold coins or cryptocurrencies.◊sn{debasement}

◊ndef["debasement"]{
    The state that creates gold coins can still inflate the money supply by decreasing the amount of gold in the coins. This is called ◊def[debasement]{debasement} and has been quite common historically.

    With cryptocurrencies debasement isn't possible, which is one reason they're ◊link[are_cryptocurrencies_money]{better money} than gold.
}

It’s not easy to see how a switch to sound money would occur and such a switch may likely introduce more problems than it solved. It would mean however, that manipulation of the money supply would disappear, that we wouldn’t accumulate a mountain of debt, that we wouldn’t devalue our savings while increasing the wealth inequality, and that we wouldn’t cling to the broken and defective economic theories in use today.

◊note-pos[#:top -15]{debasement}


◊(define debasement
   (x-ref
     "2019-11-13"
     "https://www.investopedia.com/terms/d/debasement.asp"
     "Debasement"))
◊(define mmt
   (x-ref
     "2019-11-13"
     "https://www.bloomberg.com/news/features/2019-03-21/modern-monetary-theory-beginner-s-guide"
     "Warren Buffett Hates It. AOC Is for It. A Beginner’s Guide to Modern Monetary Theory"))
◊(define mmt-true
   (x-ref
     "2019-11-13"
     "https://www.forbes.com/sites/nathanlewis/2019/02/21/the-problem-with-modern-monetary-theory-is-that-its-true/"
     "The Problem With \"Modern Monetary Theory\" Is That It's True"))

