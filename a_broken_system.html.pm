#lang pollen

◊(define-meta title "A broken system")
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

In the chapter ◊link[what-is-money]{What is money?} I tried to give some historical examples of money and list some properties that good money should have. Unfortunately it's not enough to understand the current economic system, which is a completely different beast.

It's a system that based on money that isn't sound---the money doesn't fulfill the properties good money should have. I'll even go so far to say there's something fundamentally broken with the economic system we use today.

◊(define what-is-money "/what_is_money.html")


◊subhead{Economic effects of counterfeiting}

Imagine a counterfeiter, who has the ability to print money from thin air.◊sn{magic-printer} What would he do with all the money? What would ◊em{you} do?

Personally I would probably pay off my loans, renovate our house, go on vacation and buy some LEGO®. If I was smart I would also invest it; buy some stocks, some gold, maybe a house or two and rent them out. In short I would buy a bunch of stuff---and I think most would do the same.

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

        Because there is more money going around, with the same amount of goods, the prices will rise. When prices rise and the same amount of money buys you less stuff, we call it ◊em{inflation}.◊sn{deflation}

        For example if all the money in the world would double overnight, then naturally all prices would double too. Yesterday's $100 bill would today only get you $50 worth of stuff today. Or how my grandmother told us how she used to buy candy for one cent (◊sans-tnum{0.01 SEK}). Today our smallest coin is ◊sans-tnum{1 SEK}.

    }
    ◊li{Redistribution of wealth.

        Notice how in our previous example the counterfeited money isn't divided equally. The counterfeiter suddenly became much richer than everyone else, and some received a bit more than others. The poor guy, who didn't have much to begin with, didn't receive any of the new money and became even poorer.
    }
}


◊ndef["deflation"]{
    The opposite is ◊em{deflation}, when money increases in value and buys you more stuff.

    While it may sound strange, technology has been deflating in price forever. When computers were just introduced they were ◊em{extremely} expensive, but now everyone and their mother literally has one in their pocket. And probably several at home. Some even have one on their wrist.
}

Counterfeiting means everyones savings---the "old" money---will be worth less. This is why you shouldn't just store all your money under the mattress or in a bank account---the value will be eaten up by inflation.

◊img[#:src "images/inflation.svg" #:link #t]{
    How the ◊link[swe-inflation]{inflation in Sweden} has caused the actual value of money to decrease.◊sn{why-sweden?}  
    The graph shows what ◊sans-tnum{100 SEK} in 1960 would really be worth, adjusted by inflation. For example in 2018 it would only be worth around ◊sans-tnum{7 SEK}---a 93% drop in value.
}

◊ndef["why-sweden?"]{
    Why pick out Sweden as an example? No particular reason really, the graph would look similar if I picked the United States or some other country. At first I was going to exemplify both Sweden and the United States, but the differences were so small I didn't see the point.
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

While I think most can agree that counterfeiting shouldn't be allowed, the economic system is built upon legal counterfeiting. There are entities that have the legal right to print money, which has the same negative consequences on the economy that counterfeiting has. They're the central banks and regular banks too.

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

    ◊stable{
        John            Bank
        1 000 SEK
    }
  }
  ◊li{John lends the money to the bank, and receives money promises from the bank (let's call them IOUs):

    ◊stable{
        John            Bank
        1 000 IOU        1 000 SEK
    }
  }
  ◊li{The bank can issue more IOUs if they want, here they lend out IOUs to Jane:

    ◊stable{
        John            Bank            Jane
        1 000 IOU       1 000 SEK       9 000 IOU
    }
  }
}

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


◊subhead{Growing inequality}

◊qt[#:src "Family Guy"]{
    It doesn't matter if you're black or white... the only color that really matters is green.
}


◊subhead{A mountain of debt}

◊subhead{Booms and busts}

◊subhead{Hyperinflation}

◊subhead{The case for sound money}


Hyperinflation and Trust in Ancient Rome 
https://news.ycombinator.com/item?id=21010309

Booms and busts:
https://www.alt-m.org/2018/08/16/fractional-reserve-banking-and-austrian-business-cycles-part-i/
https://www.infowars.com/does-the-boom-bust-cycle-ever-result-from-commodity-money/
https://mises.org/library/boom-and-bust-0


◊(define case-against-fed-book "https://www.goodreads.com/book/show/81976.The_Case_Against_the_Fed")
