#lang pollen

◊(define-meta title "Darknet markets")
◊(define-meta subtitle "Global and digital markets for illegal goods")
◊(define-meta updated "2019-12-06T07:39:44+01:00")
◊(define-meta uuid "4cf3ad81-1c7f-414f-a582-4b2897d27121")

◊epigraph{
  ◊qt[#:author "Ross Ulbricht, creator of Silk Road"]{
    I wanted to empower people to be able to make choices in their lives, for themselves and to have privacy and anonymity.
  }
}

There's one thing that cryptocurrency proponents and skeptics can agree with: cryptocurrencies are excellent for illegal purposes. In this chapter we'll look at darknet markets---websites where you can buy illegal goods and pay with cryptocurrencies.

Before cryptocurrencies, such a site would have trouble existing because payment processors would shut them down quickly. But nobody can block cryptocurrency transactions, and in 2012 the first darknet market "Silk Road" was created using Bitcoin. Since then there's been a ◊link[darknet-markets-history]{bunch of different darknet markets}, much more popular than Silk Road.

I know I wrote in ◊link[about-the-book]{an early chapter} that this book would describe legal use cases, but that's not really true. This book tries to describe ◊em{moral} use cases, which aren't always the same as legal ones. I hope you'll forgive me.◊sn{subjective}

◊ndef["subjective"]{
    As always where darknet markets fall on the universal scale of good and bad is subjective. But I hope to show that it's not a black-and-white issue.
}

◊(define darknet-markets-news "https://darknetmarkets.org/")
◊(define about-the-book "/about_the_book.html")
◊(define darknet-markets-history "https://weeklyglobalresearch.wordpress.com/2018/05/12/darknet-markets-and-the-shadow-economy/")


◊subhead{Legality isn't morality}

There's a concept we need to have in mind while looking at darknet markets: something being illegal doesn't make it immoral, and that everything legal doesn't have to be moral. Legality isn't equivalent to morality.

Here's a table to illustrate the problem:

◊table-body[#:class "legal-moral"]{
    ◊tr{◊td{}           ◊ths{Legal}                     ◊ths{Illegal}}
    ◊tr{◊tds{Moral}     ◊good{Self defense
                              Free speech}
                                                        ◊mo-il{Some types of sex
                                                               Starving child steals food}}
    ◊tr{◊tds{Immoral}   ◊im-le{Mass surveillance
                               Civil asset forfeiture}
                                                        ◊bad{Slavery
                                                             Murder}}
}

It's actually quite hard to classify things as legal or illegal and moral or immoral; they both change depending on country, the time period and who you ask. For instance most would agree that slavery is immoral and should be illegal, but it was in fact legal and viewed as normal for thousands of years. Similarly today in the western world we take free speech for granted, but that's not the case in all countries.

Mass surveillance, which we covered in the chapter ◊link[private-money]{Private money}, is immoral yet legal.◊sn{surveillance} Civil asset forfeiture, which allows the police to outright take your stuff, is another example of an immoral legal practice. (We'll explore civil asset forfeiture in a future chapter.)

◊(define private-money "/private_money.html")

◊ndef["surveillance"]{
    You can argue that mass surveillance is in fact illegal, but in practice it doesn't really matter as they rewrite the laws anyway.
}

It's easy to find examples of silly laws that make moral actions illegal (just search for "silly laws" or similar), but I think there are more interesting issues. For example stealing is illegal, but is it immoral for a starving child to steal food to survive? Or for the child to steal food to his starving little sister? And where on the moral scale would you place prostitution?

The issue of "right or wrong" isn't so easy to answer, and we cannot just rely on what's legal and what's not. Instead I think we should ask ourselves if it's moral or immoral (which is of course subjective).

◊(define (ths txt)
   `(td ((class "ths")) ,txt))
◊(define (tds txt)
   `(td ((class "tds")) ,txt))
◊(define (gray . txt)
   `(td ((class "gray")) ,@txt))
◊(define (mo-il . txt)
   `(td ((class "moral-illegal")) ,@txt))
◊(define (im-le . txt)
   `(td ((class "immoral-legal")) ,@txt))
◊(define (bad . txt)
   `(td ((class "bad")) ,@txt))
◊(define (good . txt)
   `(td ((class "good")) ,@txt))


◊subhead{Black markets exist everywhere}

◊link[black-markets]{◊em{Black markets}} refers to transactions outside government control. They're usually related to illegal behaviour in some way, like tax avoidance or the trade of illegal goods.

Black markets have existed as long as taxes have been collected, and it's not just for hardcore criminals. How many people do you know who've paid a craftsman of the book? Maybe paid a friend to paint the house, or paid a mechanic friend to fix the car? If it was paid in cash, and never officially registered the work, then they've engaged in a black market trade.◊sn{geothermal}

◊ndef["geothermal"]{
    Warming houses with ◊link[geothermal]{geothermal heating} is popular where we live. It works by drilling a large hole in the ground and transport heat from the ground up into the house, and is a cost-effective way to heat houses. Many people drill the holes off the books, which can save you a lot of money.

    We were quite tempted, but in the end we opted not to.
}


◊(define geothermal "https://en.wikipedia.org/wiki/Geothermal_heating")

In countries with corruption or dysfunctional governments black markets are huge. For example in the Soviet Union many people relied on black markets to get their food supply when the market economy failed them. Or in Greece during the economic breakdown in the 2010s, the black market was ◊link[greece-black-markets]{estimated at 20 to 25 percent of the GDP}.

Black markets aren't inherently evil, sometimes they're even necessary for our survival. Instead they contain both good and bad things, which should be judged on a case-by-case basis.

◊(define black-markets "https://www.investopedia.com/terms/b/blackmarket.asp")
◊(define greece-black-markets "https://www.nytimes.com/2017/02/18/world/europe/greece-bailout-black-market.html")


◊subhead{What can you buy on a darknet market?}

Contrary to popular belief you cannot buy ◊em{everything} on a darknet market. In theory it's possible, but in practice darknet markets operate with their own morality.

For instance ◊link[darknet-murders]{you cannot find murder for hire} on a darknet market. This is a myth made popular by the false accusations against ◊link[freeross]{Ross Ulbricht}, the creator of the first darknet market Silk Road. The rumor was manufactured by corrupt federal agents (who got sentenced), yet their "evidence" was used by prosecutors and news media to make an example out of Ross.◊sn{theme-example}

Darknet market operators generally block things that are harmful to others. Murder harms others, so it's banned. Child porn is also harmful, so it's banned. Even very dangerous drugs, such as fentanyl, ◊link[ban-fentanyl]{might be unavailable}. (But of course the ban isn't 100% effective, just as everywhere else in society.)

◊ndef["theme-example"]{
    The sentence against Ross is yet another example of how the U.S. government try to make an example out of people. It's good to keep in mind that the criminal justice system is a ◊em{legal} system, not a ◊em{justice} system.
}

You might be able to find books about banned topics that goes against the regime's propaganda, but usually you go to a darknet market to buy drugs or medicine.

◊(define darknet-murders "https://www.wired.co.uk/article/kill-list-dark-web-hitmen")
◊(define freeross "https://freeross.org/")
◊(define ban-fentanyl "https://www.theguardian.com/society/2018/dec/01/dark-web-dealers-voluntary-ban-deadly-fentanyl")


◊subhead{The moral side of darknet markets}

To see the positive side of darknet markets consider this example, which is based on a story I read a few years ago, and try to see yourself in it:

◊div[#:class "story"]{

    Tom met the love of his life five years ago, when he went to get some of his teeth removed. Hardly the most romantic meeting, with her drilling into his aching teeth, but it was love at first sight.

    Only a year later, they were married with a child on the way. They say love that burns hot quickly runs out, but that wasn't the case for Tom and Melinda. They bought a nice house in a nice suburb and settled down. They were planning a second child, and life was good.

    But then Melinda got sick.
}

While the story is made up, the situation is real. Medicine in the U.S. can be ◊strong{extremely} expensive, and the cost isn't something all families can bear.◊sn{insurance} The same medicine that will ruin you financially is often available for a fraction of the cost from darknet markets.

◊ndef["insurance"]{
    It can be extremely expensive, even if you have insurance. The insurance companies ◊link[insurance-screwed]{try really hard} to avoid paying the bills. For example they might only cover certain "approved" medicines, doctors or treatments. And even if they do cover it, sometimes it's still expensive.
}

Is it wrong to do what Tom did and bought the medicine illegally? If it would save the love of your life, the mother of your children, would you be willing to do it? Especially as it would be easy and the risk of getting caught was very small?

I'd imagine most would say yes, they would do anything to save her. And this is what cryptocurrencies and darknet markets makes possible.

◊(define insurance-screwed "https://health.usnews.com/health-care/for-better/articles/2017-07-13/5-ways-insurance-companies-meddle-in-your-health-care")


◊; https://weeklyglobalresearch.wordpress.com/2018/05/12/darknet-markets-and-the-shadow-economy/

◊; Cannot be reached
◊;(define darknet-medicine "https://darkwebnews.com/news/high-costs-force-patients-to-dark-net-in-search-of-needed-medicine/")


◊subhead{Ideas}

Black markets have typically preferred physical cash because it's permissionless nature. With cryptocurrencies there's now a digital equivalent.  An additional to a digital variant is it's easier to store and move especially in larger amounts.

In particular cryptocurrencies enable dark net markets where you can buy and sell stuff online. Contrary to popular belief these too operate with their own morality where they're mostly about subsets of drugs and medicine.

To see the positive side of dark net markets consider this example and try to see yourself in it:

> Your wife got diagnosed with cancer. Despite having insurance it only covers a part of the extremely high medical costs in the US and you're looking at a yearly expense of $20,000 just for the medicine she needs. This is just too much for you to afford but she needs the medicine otherwise she'll die.

What if I told you the same medicine could be bought in India for a fraction of the cost? What if there was a way to easily order it online? Even if it was illegal would you do it? What if the risk of getting caught was very small? There are variations of the same story, [here's one with a bit more detail](https://darkwebnews.com/news/high-costs-force-patients-to-dark-net-in-search-of-needed-medicine/).

This is exactly what cryptocurrencies and dark net markets gives you.

◊; <https://podcast.bitcoin.com/e219-Black-Markets-On-The-Blockchain>
