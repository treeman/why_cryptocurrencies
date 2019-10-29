#lang pollen

◊(define-meta title "A defective system")
◊;(define-meta subtitle "Magic internet money")
◊(define-meta updated "2019-10-01T08:35:32+02:00")
◊(define-meta uuid "b09419e3-0f3d-4473-b458-d0dad01ed4b8")

◊epigraph{
  ◊qt[#:author "Ayn Rand"]{
    So you think that money is the root of all evil. Have you ever asked what is the root of all money?
  }
}

◊;More money than anyone imagined: an explanation for why the bubble never burst 
◊; See the comments for some discussion about the Fed
◊;<https://news.ycombinator.com/item?id=20535390>


◊todo{IMG a dude on a stick, to represent an unstable system. And a bunch of dudes running around to make it not fall over.}

In the chapter ◊link[what-is-money]{What is money?} we saw some historical examples of money and some properties that good money should have. Unfortunately it's not enough to understand the current economic system, which is a completely different beast.

The modern system is based on money that ◊link[sound-money]{isn't sound}---the money supply can be manipulated freely---which have several far-reaching negative consequences. I'll even go so far to say there's something fundamentally broken with the economic system we use today.

◊todo{Reformulate}

◊(define sound-money "https://www.soundmoneydefense.org/sound-money-explained")
◊(define what-is-money "/what_is_money.html")


◊subhead{Economic effects of counterfeiting}

Imagine a counterfeiter, who has the ability to print money from thin air.◊sn{magic-printer} What would he do with all the money? What would ◊em{you} do?

Personally I would probably pay off my loans, renovate our house, go on vacation and buy a bunch of LEGO®. If I was smart I would also invest it; buy some stocks, some gold, maybe a house or two and rent them out. In short I would buy a bunch of stuff---and I think most would do the same.

If I did print money, a ◊strong{lot} of money, and spent it like this---what would the effect on the economy be?◊sn{case-against-fed}

For starters if I just kept the money without spending it, nothing would change:

◊todo{IMG of a counterfeiter, LEGO dude, normal dude, homeless dude}

Then if I decided to buy a bunch of LEGO, the store would get some of my money:

◊todo{IMG of a counterfeiter, LEGO dude, normal dude, homeless dude}

After a while the store would use the counterfeited money to pay their employee:

◊todo{IMG of a counterfeiter, LEGO dude, normal dude, homeless dude}

Who in turn will use it to buy other stuff, and in this way the counterfeited money slowly trickles out into the rest of the economy. This extra money has two important effects:

◊ol{
    ◊li{Higher prices.

        Because there is more money going around, with the same amount of goods, the prices will rise. For instance if all the money in the world would double overnight, then naturally all prices would double too. Yesterday's $100 bill would today only get you $50 worth of stuff today.

        When prices rise and the same amount of money buys you less stuff, we call it ◊em{inflation}.◊sn{deflation} It's how my grandmother could buy candy for one cent (◊sans-tnum{0.01 SEK}) when she was a child, while today our smallest coin is ◊sans-tnum{1 SEK}.

    }
    ◊li{Redistribution of wealth.

        Notice how in our previous example the counterfeited money isn't divided equally. The counterfeiter suddenly became much richer than everyone else, and some received a bit more than others. The poor guy, who didn't have much to begin with, didn't receive any of the new money and became even poorer.
    }
}


◊ndef["deflation"]{
    The opposite is ◊em{deflation}, when money increases in value and buys you more stuff.

    While it may sound strange, technology has been deflating in price forever. When computers were just introduced they were ◊em{extremely} expensive, but now everyone and their mother literally has one in their pocket. And probably several at home. Some even have one on their wrist.
}

Counterfeiting means everyones savings---the "old" money---will be worth less. This is why you shouldn't just store all your money under the mattress or in a bank account---the value will be eaten up by inflation.◊sn{inflation-visualization}

◊ndef["inflation-visualization"]{
    ◊link[inflation-dollar-visualization]{Here's a cool visualization} of the expanding money supply and what $1 could buy.
}

◊(define inflation-dollar-visualization "http://money.visualcapitalist.com/buying-power-us-dollar-century/")

◊img[#:src "images/inflation.svg" #:link #t]{
    How the ◊link[swe-inflation]{inflation in Sweden} has caused the actual value of money to decrease.◊sn{why-sweden?}  
    The graph shows what ◊sans-tnum{100 SEK} in 1960 would really be worth, adjusted by inflation. For example in 2018 it would only be worth around ◊sans-tnum{7 SEK}---a 93% drop in value.
}

◊ndef["why-sweden?"]{
    Why pick out Sweden as an example? No particular reason really, the graph would look similar if I picked the United States or some other well-functioning country. At first I was going to exemplify both Sweden and the United States, but the differences were so small I didn't see the point.
}

◊(define consumer-price-index "https://data.worldbank.org/indicator/FP.CPI.TOTL?locations=US-SE-XC")
◊(define swe-inflation "https://data.worldbank.org/indicator/FP.CPI.TOTL.ZG?locations=SE")

Counterfeiting also means redistributing wealth from everyone to the counterfeiter (and to a lesser extent people the counterfeiter buys from) at the same rate as the inflation eats up the value of money. Even though nobody's stealing your money, the effect is the same: your wealth relative to others will decrease.


◊ndef["magic-printer"]{
    Maybe he's got a magic printer which can print perfect copies of a dollar bill. Normally printers even ◊link[print-money]{refuse to print images} looking like a dollar or other major currencies.
}

◊(define print-money "https://murdoch.is/projects/currency/")

◊ndef["case-against-fed"]{
    A similar example was given by Murray N. Rothbard in “◊link[case-against-fed-book]{The Case Against the Fed}”.
}


◊subhead{Legal counterfeiting}

While I think most can agree that counterfeiting shouldn't be allowed, the modern economic system is built upon legal counterfeiting. There are entities that have the legal right to print money---with the same negative consequences on the economy that counterfeiting has. They're the central banks and regular banks too.

The central banks, the Federal Reserve (Fed) in the U.S. or the European Central Bank (ECB) in the EU, are the only ones allowed to print physical money. Which they have to do, if only to replace old bills.◊sn{quantitive-easing} They also have an inflation target, usually 2% or 3%, meaning the goal is to devalue the money. The rationale is it drives economic growth because ◊link[inflation-rational]{shoppers will buy now to avoid higher prices later}.◊sn{inflation-growth?}

◊ndef["quantitive-easing"]{
    If the central banks want to increase the money supply it's inefficient to print physical money. Instead they buy assets from banks who in turn can use the money as reserve to print more money. This is called ◊link[quantitive-easing]{◊em{quantitive easing}}, but it's unknown how well it actually works.
}

◊ndef["inflation-growth?"]{
    I always found the argument of inflation pushing people to spend weird. Most people I know don't even know about the effects inflation has, even less so when the inflation and the rising prices are so small you don't really notice them.
}

◊(define quantitive-easing "https://www.investopedia.com/terms/q/quantitative-easing.asp")

Although the central banks are ultimately responsible, it's the regular banks who expand the money supply the most. It's done via ◊link[fractional-banking]{◊em{fractional banking}} which works like this:

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

There is now ◊sans-tnum{11 000} money circulating the system. Because an IOU is treated like a SEK for all intents and purposes we can even say that there is ◊sans-tnum{11 000 SEK} now after we started with only ◊sans-tnum{1 000 SEK}. The bank printed ◊sans-tnum{10 000 SEK} from thin air and has only ◊sans-tnum{1 000 SEK} to back them up.  The ratio of SEK to IOU, in this example 10%, is called the reserve.

We might wonder why stop at only printing ◊sans-tnum{10 000 SEK}? Why not ◊sans-tnum{100 000 SEK}? Or more? When the bank gives out IOUs they do need to repay them, otherwise they'll fail and become bankrupt. In the example above if Jane would withdraw ◊sans-tnum{2 000 SEK} the bank would fail, because it can only repay ◊sans-tnum{1 000 SEK}.

The system works as long as people just keep their money at the bank, and only occasionally withdraw their money. But if people start withdrawing a lot of money at the same time a ◊link[bank-run]{bank run} may cause the bank to fail. To reduce this risk banks have requirements on their reserves.◊sn{reserve-assets}

◊ndef["reserve-assets"]{
    My example is simplified and banks aren't always required to have the reserves in cash. They can have them in other assets, which they can convert to cash if needed. See for example the ◊link[capital-req-sweden]{Capital requirements for the Swedish banks, second quarter 2019}.

    The reserve requirements can also be fluid, see the ECB's ◊link[minium-reserve-req]{◊em{minimum reserve requirements}} for example.
}

◊(define inflation-rational "https://www.thebalance.com/inflation-targeting-definition-how-it-works-3305854")
◊(define fractional-banking "https://corporatefinanceinstitute.com/resources/knowledge/finance/fractional-banking/")
◊(define minium-reserve-req "https://www.ecb.europa.eu/explainers/tell-me/html/minimum_reserve_req.en.html")
◊(define bank-run "https://en.wikipedia.org/wiki/Bank_run")
◊(define capital-req-sweden "https://www.fi.se/contentassets/67c0bdcc4ddf4d1dbea616cb48fb1f01/kapitalkrav-sv-banker-2019-kv2_eng.pdf")


◊subhead{Lender of last resort}

As money printers the central banks play an important roll---as the "lender of last resort". This means when all else fails, for example if the banks are about to go bankrupt because they have too little reserves or if the economy is going bad, then central banks can step in and save them. This is exactly what happened during ◊link[financial-crisis]{the 2008 financial crisis}, where banks and other institutions messed up in a major way but were bailed-out and made whole again.

This means the real check against fractional banking (the risk of going bankrupt) is thrown away and replaced with regulation that's supposed to keep the banks in check, while making the banks more robust against failure. While fine in theory, in practice it means banks are now incentivized to push the limits any way they can.

I don't think there's a better example of the hazards the lender of last resort creates than the 2008 financial crisis, which I wrote about in the ◊link[financial-crisis]{previous chapter}. I feel the term ◊link[moral-hazard]{◊em{moral hazard}}, to describe someone taking risks others will pay for, is too soft to describe what happened there.◊sn{crisis-terms}

◊ndef["crisis-terms"]{
    Perhaps the words ◊em{deceit}, ◊em{scam}, ◊em{fraud} or ◊em{swindle} comes closer to describe my feelings.
}

◊(define financial-crisis "/financial_crisis.html")
◊(define moral-hazard "https://www.thebalance.com/moral-hazard-what-it-is-and-how-it-works-315515")


◊subhead{Reason behind the madness}

If you've followed along this far, you might get the feeling that the economic system is completely corrupt and wonder why anyone would ever get along with it? But not so fast---there's a reason things are the way the are, and a big part can be traced the ◊link[great-depression]{Great Depression} in the 1930s.

The Great Depression was a huge economic crisis, the worst in modern history, which dwarfed the 2008 financial crisis. Experts debate the causes of this decade long crisis to this day, with explanations ranging from governments spending too little, printing too little money, printing too much money or the gold standard.◊sn{depression-crisis}

◊ndef["depression-crisis"]{
    There's more to these theories than my attempt to simplify them suggests, and there's probably not a single cause. For instance it's widely acknowledged that the global gold standard helped the crisis to spread, even if it might not have caused the crisis. There are also more theories than I list here.
}

While it's difficult to point out causes, and it's even debatable why we got out of it, it's fairly easy to point out some big changes which were introduced when combating the crisis:

◊ol{
    ◊li{Abonding the gold standard

        After briefly dropping the gold standard to pay for the World War I, all countries left the gold standard during the depression.◊sn{forbade-gold}

        ◊ndef["forbade-gold"]{
            Because the government ran out of gold, in 1933 private ownership of larger amounts of gold ◊link[gold-illegal]{was made illegal}. It was forbidden until 1974.
        }
    }
    ◊li{Proactive governments

        In the ◊link[new-deal]{New Deal} the United States tried to stimulate the economy by for example building infrastructure, building houses, paying farmers to plant crops, producing power and insuring loans.
    }
    ◊li{Debt fueled investments

        To pay for these investments the United States greatly ◊link[debt-us]{increased their debt} from $22 billion to $40 billion.◊sn{debt-ww2}

        ◊ndef["debt-ww2"]{
            Still, they were comparatively ◊link[new-deal-conservative]{conservative with increasing the debt}. To pay for World War II the debt ◊link[debt-us]{rose to $241 billion in 1946}.
        }


    }
}

◊(define debt-us "https://www.theatlantic.com/business/archive/2012/11/the-long-story-of-us-debt-from-1790-to-2011-in-1-little-chart/265185/")
◊(define new-deal-conservative "https://www.nytimes.com/2008/11/23/business/23view.html?_r=0")
◊(define gold-illegal "https://www.moneymetals.com/resources/executive-order-6102")

These align with the ideas of ◊link[keynesian-economics]{Keynesian Economics} (also developed in the 1930s) where governments should stimulate the economy during recessions, and compensate by pulling back when the economy's expanding. The rationale is that the ◊link[velocity-money]{◊em{velocity of money}} (how fast companies and people spend money) will slow down during a recession, making it worse. Therefore the government should increase their spending---increasing the velocity of money---to help dampen the recession.

Seen through this lens, it all makes sense. To help the government spend money it doesn't have, being able to print money is a huge help. When the government goes deeper into debt, again it helps to be able to print money. And the interaction between central banks and banks is a fairly efficient way to setup a money-printing machine.◊sn{gold-standard-ww2}

    ◊ndef["gold-standard-ww2"]{
        After World War II the United States went back to the gold standard, a little half-heartedly. They only allowed foreign nations to redeem dollars for gold, which took an ◊link[nixon-shock]{abrupt end in 1971}.
    }

◊(define velocity-money "https://www.investopedia.com/terms/v/velocity.asp")
◊(define nixon-shock "https://www.investopedia.com/terms/n/nixon-shock.asp")
◊(define new-deal "https://www.thebalance.com/fdr-and-the-new-deal-programs-timeline-did-it-work-3305598")

◊; While it would feel good if I condemned the state of affairs completely, and say that 

◊; On April 5, 1933, President Roosevelt signed Executive Order 6102 making the private ownership of gold certificates, coins and bullion illegal, reducing the pressure on Federal Reserve gold.

◊;Governments and central banks follow ◊link[keynesian-economics]{Keynesian economics}, which basically says the government should create demand

◊(define keynesian-economics "https://www.thebalance.com/keynesian-economics-theory-definition-4159776")
◊(define great-depression "https://en.wikipedia.org/wiki/Great_Depression")


◊subhead{A mountain of debt}

While taking out debt to fuel investments was only supposed to be a temporary measure, to help the economy during downturns, today we massively increase the debt all the time. For example we've seen a ◊link[record-bull-run]{record bull run} in 2009--2019, yet the U.S. debt doubled from $11 trillion to $22 trillion.◊sn{trump-debt}

◊ndef["trump-debt"]{
    Donald Trump promised to ◊link[trump-eliminate-debt]{eliminate the nation's debt in eight years}, and instead he greatly increased it. Let's just add that to the list of president Trump's list of broken promises.
}

◊img[#:src "images/usa-debt.svg" #:link #t]{
    The ◊link[usa-national-debt]{federal debt of the United States}, measure in trillions of dollars, since 1966.  
    After the ◊link[financial-crisis]{2008 financial crisis} the amount of debt skyrocketed, signifying a shift in economic policy.
}

Taking out a loan essentially borrows money from the future you, since you have to pay it back with interest. And the U.S. is paying paying for that now: in the 2020 budget 10.1% is spent on only the interest rate, and it's expected to ◊link[interest-us-debt]{take up 12.9% in 2026}, making it the fastest rising expense in the budget. Most of the debt is ◊link[public-debt]{public debt} (debt to people, companies or other governments), so refusing to pay would have disastrous consequences.


◊qt[#:author "Albert Einstein"]{
    Compound interest is the eighth wonder of the world. He who understands it, earns it ... he who doesn't ... pays it.
}

This isn't a situation unique to the United States, but ◊link[national-debt-list]{a global phenomena}. While the U.S. has a national debt at 104% of ◊link[gdp]{GDP} (a way to compare relative debts between countries), Sweden has a debt of 38%, Germany 61%, Italy 132%, Greece 181% and Japan a staggering 235%.◊sn{how-to-measure-debt}

◊ndef["how-to-measure-debt"]{
    There are different ways to measure national debt, each with pros and cons. ◊link[gdp%]{Percentage of GDP} seems to be the common way to do it.
}

It seems like we're moving away from the original Keynesian ideas to something else, where paying off national debt matters less as we can just print more money.

◊(define gdp% "https://www.investopedia.com/terms/d/debtgdpratio.asp")
◊(define gdp "https://www.investopedia.com/terms/g/gdp.asp")
◊(define national-debt-list "https://countryeconomy.com/national-debt")
◊(define interest-us-debt "https://www.thebalance.com/interest-on-the-national-debt-4119024")
◊(define us-budget-2020 "https://www.thebalance.com/u-s-federal-budget-breakdown-3305789")
◊(define public-debt "https://www.thebalance.com/what-is-the-public-debt-3306294")
◊(define usa-national-debt "https://www.investopedia.com/updates/usa-national-debt/")
◊(define trump-eliminate-debt "https://www.washingtonpost.com/politics/in-turmoil-or-triumph-donald-trump-stands-alone/2016/04/02/8c0619b6-f8d6-11e5-a3ce-f06b5ba21f33_story.html?utm_term=.d6b42cbf9b8c")
◊(define trump-debt "https://www.thebalance.com/trump-plans-to-reduce-national-debt-4114401")
◊(define record-bull-run "https://www.theguardian.com/business/2018/aug/22/wall-street-record-longest-rally-history-bull-market")


◊subhead{Growing inequality}

◊qt[#:src "Family Guy"]{
    It doesn't matter if you're black or white... the only color that really matters is green.
}

There's a worrying trend in the world: ◊link[global-inequality]{global inequality is rising}. The rich gets richer and the poor gets... poorer.

◊img[#:src "images/income-inequality-world.svg" #:link #t]{
    Top 10% income share between 1980 and 2015.  
    Source ◊link[inequality-data]{World Inequality Database}.
}

The inequality is on the rise in nearly every country. If we take a closer look at the United States it paints a gloomy picture:◊sn{report}

◊ndef["report"]{
    There's many more ways to look at inequality data, for more I recommend the ◊link[wid-report]{World Inequality Report}.
}

◊img[#:src "images/income-inequality.svg" #:link #t]{
    Income share in the United States between 1962 and 2014.  
    Source ◊link[inequality-data]{World Inequality Database}.
}
◊img[#:src "images/wealth-inequality.svg" #:link #t]{
    Net personal wealth in the United States between 1962 and 2014.  
    Source ◊link[inequality-data]{World Inequality Database}.
}

While the money-making machine isn't the cause of the inequality, it's a pretty difficult situation to reverse when even the national economy works against you. Printing money to solve problems will, in line with ◊link[rel-counterfeiting]{the previous counterfeiting example}, only fan the flames and make the situation worse.◊sn{trickle-down}

◊ndef["trickle-down"]{
    Some will argue that the trickle-down effect makes inflation affect everyone equally. Unfortunately that's not the case, as the rich will both receive the money first (via the banks) and they have better access to financial tools to hedge against inflation (investing in gold, real estate or offshore banking).
}

◊;https://inequality.org/facts/global-inequality/
◊(define rel-counterfeiting "#economic-effects-of-counterfeiting")
◊(define global-inequality "https://wir2018.wid.world/")
◊(define inequality-data "https://wid.world/data/")
◊(define wid-report "https://wir2018.wid.world/files/download/wir2018-full-report-english.pdf")


◊subhead{Painted into a corner}

We want to pull back on stimulation when the economy is booming, so we're prepared with all our tools when the economy is crashing. Unfortunately after a decade of economic boom, we've done the opposite:

◊ol{
    ◊li{The national debt has skyrocketed

        The larger the debt, the more expenses must be devoted to repaying the debt, leaving less for other more useful things.}
    ◊li{The central bank interest rates are already low

        A low rate means banks, and in extension we, can get cheaper loans which stimulates the economy. It's difficult to lower it more when it's almost zero, or even negative, already.◊sn{negative-interest}

        ◊ndef["negative-interest"]{
            In Sweden we've had a ◊link[swe-neg-rate]{negative repo rate since 2015}. Denmark's Jyske Bank also ◊link[denmark-neg-rate]{give depositors a negative rate}, meaning you have to pay to store money. These are strange times.
        }
    }
    ◊li{We're continually printing money

        The Federal Reserve is ◊link[fed-pouring]{pouring money into the financial system}. Printing an unlimited amount of money isn't great, not only because of the erosion of wealth, but rampant inflation can quickly destroy the economy.◊sn{hyperinflation-rome}

        ◊ndef["hyperinflation-rome"]{
            An interesting case is how ◊link[hyperinflation-rome]{hyperinflation took hold in ancient Rome}. Centuries of debasing the currency was followed by a sudden lose of trust and the collapse into hyperinflation. A lesson here is that rapid inflation can rapidly throw the economy into chaos.
        }
    }
}

To be fair, the Federal Reserve knows this isn't an ideal situation, so they tried to raise interest rates. Unfortunately the stock market reacted poorly---many people got angry---and now they've backtracked and lowered them again.

So we're stuck in a situation where we don't have the tools to defend against a recession---tools the economic theory the system is built on needs. It seems to me if a recession comes we'll get caught with our pants down.

◊;https://markets.businessinsider.com/news/stocks/federal-reserve-meeting-september-interest-rate-decision-2019-9-1028535360
◊(define swe-neg-rate "https://www.riksbank.se/en-gb/about-the-riksbank/history/2000-2018/negative-repo-rate-is-introduced/")
◊(define denmark-neg-rate "https://www.reuters.com/article/denmark-rates-jyske-bank/update-1-denmarks-jyske-bank-lowers-its-negative-rates-on-deposits-idUSL5N26B1AA")
◊(define hyperinflation-rome "https://notesonliberty.com/2019/09/16/hyperinflation-and-trust-in-ancient-rome/")
◊(define fed-pouring "http://archive.is/PbCtz")

◊; https://www.thebalance.com/current-federal-reserve-interest-rates-4770718

◊; McKinsey: Half the World’s Banks Too Weak to Survive Downturn 
◊; https://news.ycombinator.com/item?id=21320977


◊subhead{Where do we go from here?}

◊ol{
    ◊li{The blind leading the blind}
    ◊li{Modern Money Theory}
    ◊li{Sound money}
}


◊; Possibly in the blind leading the blind?
◊; https://www.svd.se/experter-flera-dolda-skal-till-slopad-minusranta


◊; https://nypost.com/2019/07/29/trump-fails-to-see-rate-cut-would-hurt-savers/
◊; https://www.forbes.com/sites/nathanlewis/2019/02/21/the-problem-with-modern-monetary-theory-is-that-its-true/

◊; https://news.ycombinator.com/item?id=21004068
