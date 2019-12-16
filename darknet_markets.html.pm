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

There's one thing that cryptocurrency proponents and skeptics can agree with: cryptocurrencies are excellent for illegal purposes. And is there a better example than darknet markets---websites where you can buy illegal goods and pay with cryptocurrencies?

Before cryptocurrencies, such sites would have trouble staying in business because payment processors would shut them down quickly. But nobody can block cryptocurrency transactions, and in 2012 the first darknet market "Silk Road" was created using Bitcoin. Since then there's been a ◊link[darknet-markets-history]{bunch of different darknet markets}, many with much larger volume than Silk Road.

I know I wrote in ◊link[about-the-book]{an early chapter} that this book would describe legal use cases, but that's not really true. This book tries to describe ◊em{moral} use cases, which aren't always the same as legal ones. As we'll see in this chapter, darknet markets might not even be moral, so I hope you'll forgive me.◊sn{subjective}

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

It's easy to find examples of silly laws that make moral actions illegal (just search for "silly laws" or similar), but I think there are more interesting issues. For example stealing is illegal, but is it immoral for a starving child to steal food to survive? Or for the child to steal food for his starving little sister? And where on the moral scale would you place prostitution?

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

Black markets have existed as long as taxes have been collected, and it's not just for hardcore criminals. How many people do you know who've paid a craftsman off the book? Maybe paid a friend to paint the house, or paid a mechanic friend to fix the car? If it was paid in cash, and never officially registered the work, then they've engaged in a black market trade.◊sn{geothermal}

◊ndef["geothermal"]{
    Warming houses with ◊link[geothermal]{geothermal heating} is popular where we live. It works by drilling a large hole in the ground and transport heat from the ground up into the house, and is a cost-effective way to heat houses. Many people drill the holes off the books, which can save you a lot of money.

    We were quite tempted, but in the end we opted not to.
}


◊(define geothermal "https://en.wikipedia.org/wiki/Geothermal_heating")

In countries with corruption or dysfunctional governments black markets are huge. For example in the Soviet Union many people relied on black markets to get their food supply when the market economy failed them. Or in Greece during the economic breakdown in the 2010s, the black market was ◊link[greece-black-markets]{estimated at 20 to 25 percent of the GDP}.

Black markets aren't inherently evil, sometimes they're even necessary for our survival. Instead they deal in both good and bad things, each of which should be considered on a case-by-case basis.

◊(define black-markets "https://www.investopedia.com/terms/b/blackmarket.asp")
◊(define greece-black-markets "https://www.nytimes.com/2017/02/18/world/europe/greece-bailout-black-market.html")


◊subhead{What can you buy on a darknet market?}

Contrary to popular belief you cannot buy ◊em{everything} on a darknet market. In theory it's possible, but in practice darknet markets operate with their own morality.

For instance ◊link[darknet-murders]{you cannot hire a hitman} on a darknet market. This is a myth made popular by the false accusations against ◊link[freeross]{Ross Ulbricht}, the creator of the first darknet market Silk Road. The rumor was manufactured by corrupt federal agents (who got sentenced), yet their "evidence" was used by prosecutors and news media to make an example out of Ross.◊sn{theme-example}

Darknet market operators generally block things that are harmful to others. Murder harms others, so it's banned. Child porn is also harmful, so it's banned. Even very dangerous drugs, such as fentanyl, ◊link[ban-fentanyl]{might be unavailable}. (But of course the ban isn't 100% effective, just as everywhere else in society.)

◊ndef["theme-example"]{
    The sentence against Ross is yet another example of how the U.S. government tries to make an example out of people. It's good to keep in mind that the criminal justice system is a ◊em{legal} system, not a ◊em{justice} system.
}

So if none of those things are available, what can you buy on a darknet market? You might be able to find books about banned topics that goes against the regime's propaganda, but usually you go to a darknet market to buy drugs or medicine. You can buy the same medicine elsewhere, but they might be much more expensive due to patents and other taxes.

◊(define darknet-murders "https://www.wired.co.uk/article/kill-list-dark-web-hitmen")
◊(define freeross "https://freeross.org/")
◊(define ban-fentanyl "https://www.theguardian.com/society/2018/dec/01/dark-web-dealers-voluntary-ban-deadly-fentanyl")


◊subhead{A darknet story}

The following example, based on a real-life story I read a few years ago, illustrates why darknet markets aren't purely evil.

◊div[#:class "story"]{

    Tom met the love of his life five years ago, when he went to get some of his teeth removed. Hardly the most romantic meeting, with her drilling into his aching teeth, but it was love at first sight.

    Only a year later, they were married with a child on the way. They say love that burns hot quickly runs out, but that wasn't the case for Tom and Melinda. They bought a nice house in a nice suburb and settled down. They were planning a second child, and life was good.

    But then Melinda got sick. It started with clumsiness, then some vertigo and she became more tired than usual. The doctor gave her some pills, which seemed to help, but when she got worse and when she started vomiting they knew something else was going on.

    Melinda had cancer.

    They went to see specialists, and she started chemotherapy. As luck would have it, she responded well, and the doctors gave her a good chance of recovery. But she was still weak, and needed continuous treatment.

    But Melinda's treatment was expensive, very expensive. Despite insurance, they would still have to come up with $600 a week---that's around $2,400 a month---just for her medicine.

    While they both had decent jobs, and they were even a little frugal, it was very difficult to manage when their monthly expenses doubled, while their income dropped as Melinda couldn't work anymore. They took out a second mortgage, and a bunch of other loans, and starting selling the valuable stuff they had. But it wasn't enough, they were drowning.

    Tom was desperate and was willing to try anything. He'd heard from a friend about "the darknet" where he might find Melinda's medicine for cheap, and while he was skeptical it couldn't hurt to try? After all he was running out of options to try.

    He visited the darknet market his friend had suggested and searched for Melinda's medicine. To his surprise he found several sellers, who could deliver them right to his doorstep in just a few days. He decided to test it out and transferred some bitcoins to a seller. It was surprisingly easy, but he couldn't shake the feeling he had just been scammed.◊sn{opsec}

    But three days later a small package arrived in the mailbox, neatly wrapped in an unassuming box. It was Melinda's medicine, in fact exactly the same brand with the same packaging they used to buy, only now one week of medicine had cost them $30 instead of $600.

    Tom couldn't understand how it could be so cheap. The medicine seemed real, it came in the same package and Tom even had it tested (can't be too careful, right?) Maybe it was stolen, and the thieves just wanted to sell it quickly? Or was it produced in India, for minimal cost?

    But Tom didn't care. He had already placed his next order from the same seller. Tom only cared about Melinda.
}

◊ndef["opsec"]{
    If you do go down this route, and you're worried about getting caught, please ◊strong{don't} have the package delivered to your home address. And if you use Bitcoin make sure it can't be ◊link[privacy-challenge]{connected to your identity}.
}

◊(define expensive-cancer-drugs "https://edition.cnn.com/2018/05/11/health/most-expensive-prescription-drugs/index.html")
◊(define tor "https://www.torproject.org/")
◊(define kraken "https://www.kraken.com/")
◊(define privacy-challenge "/challenges.html#privacy-and-fungibility")

While the story is made up, the situation is real. Medicine in the U.S. can be ◊link[expensive-cancer-drugs]{◊strong{extremely expensive}}, and the cost isn't something all families can bear.◊sn{insurance} The same medicine that will ruin you financially is often available for a fraction of the cost from darknet markets.

◊ndef["insurance"]{
    It can be extremely expensive, even if you have insurance. The insurance companies ◊link[insurance-screwed]{try really hard} to avoid paying the bills. For example they might only cover certain "approved" medicines, doctors or treatments. 

    And even if they do cover it, sometimes it's still expensive. Even if you only pay 10% of the original cost, that's still $2,000 if the medicine was $20,000 originally.
}

Yet we must always remember the dangers of buying medicine from darknet markets. It's entirely possible that you can get fake medicine, untested medicine or straight up dangerous medicine. You must be ◊strong{very careful} when you buy from a completely unregulated market. Instead of the medicine saving your life, it might kill you.

Still, was it wrong to do what Tom did and got the medicine from a darknet market? If it might save the love of your life, the mother of your child, would you do it? What if it was easy and the risk of getting caught was very small?

I'd imagine most would say yes, they would do anything to save her. While there are bad stuff on darknet markets, most of which are illegal, in this case cryptocurrencies and darknet markets helped save Tom's family, and I see that as a good thing.

◊(define insurance-screwed "https://health.usnews.com/health-care/for-better/articles/2017-07-13/5-ways-insurance-companies-meddle-in-your-health-care")


◊; https://weeklyglobalresearch.wordpress.com/2018/05/12/darknet-markets-and-the-shadow-economy/

◊; Cannot be reached
◊;(define darknet-medicine "https://darkwebnews.com/news/high-costs-force-patients-to-dark-net-in-search-of-needed-medicine/")

◊; <https://podcast.bitcoin.com/e219-Black-Markets-On-The-Blockchain>

