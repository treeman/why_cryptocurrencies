#lang pollen

◊(define-meta title "Darknet markets")
◊;(define-meta subtitle "ELI5 - what is the inherent values of cryptocurrencies?")
◊(define-meta updated "2019-12-06T07:39:44+01:00")
◊(define-meta uuid "4cf3ad81-1c7f-414f-a582-4b2897d27121")

◊todo{Words}

◊subhead{Legality isn't morality}

There's a concept we need to have in mind while looking at darknet markets: something being illegal doesn't make it immoral, and that everything legal doesn't have to be moral. Legality isn't equivalent to morality.

Here's a table to illustrate the problem:

◊table-body[#:class "legal-moral"]{
    ◊tr{◊td{}           ◊ths{Legal}                     ◊ths{Illegal}}
    ◊tr{◊tds{Moral}     ◊good{Self defense
                              Free speech}
                                                        ◊mo-il{Starving child steals food}}
    ◊tr{◊tds{Immoral}   ◊im-le{Mass surveillance
                               Civil asset forfeiture}
                                                        ◊bad{Slavery
                                                             Murder & rape}}
}

It's actually quite hard to classify things as legal or illegal and moral or immoral; they both change depending on country, the time period and who you ask. For instance most would agree that slavery is immoral and should be illegal, but it was in fact legal and viewed as normal for thousands of years. Similarly today in the western world we take free speech for granted, but that's not the case in all countries.

Mass surveillance, which we covered in the chapter Anonymous money, is immoral yet legal.◊sn{surveillance} Civil asset forfeiture, which allows the police to outright take your stuff, is another example of an immoral legal practice. (We'll explore civil asset forfeiture in a future chapter.)

◊ndef["surveillance"]{
    You can argue that mass surveillance is in fact illegal, but in practice it doesn't really matter as they rewrite the laws anyway.
}

It's easy to find examples of silly laws that make moral actions illegal (just search for "silly laws" or similar), but I think there are more interesting issues. For example stealing is illegal, but is it immoral for a starving child to steal food to survive? Or for the child to steal food to his starving little sister?

The issue of "right or wrong" isn't so easy to answer, and we cannot just rely on what's legal and what's not.

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


◊subhead{Black markets}


◊subhead{Darknet markets}


◊subhead{Ideas}

There's a concept one should have in mind when talking about black markets:

> Legality doesn't imply morality

For example slavery used to be legal but most would agree it's immoral. Conversely a homeless boy stealing food to prevent his little sister from starving may be illegal but also moral.

Therefore black market usage isn't easily dismissed with "it's illegal" and we should look a little closer at some examples.

But first what is a black market? In short it's a term for a market where transactions are illegal in some way. Obviously buying illegal things or services but it also includes tax violations and transactions outside government control.

This includes paying a craftsman off the books, something that doesn't bother a lot of people.  Or if you've accidentally made any mistakes with taxes on a transaction (happens quite often although without repercussions). 

Also in countries with a lot of corruption or dysfunctional governments black markets are huge. For example in the Soviet Union many people relied on black markets to get their food supply when the market economy failed them. Or in Greece during their economic breakdown where the black market was [estimated at 20 to 25 percent of the GDP](https://www.nytimes.com/2017/02/18/world/europe/greece-bailout-black-market.html):

> The heart of the matter for an ever-rising number of citizens and businesses is that they simply do not have the financial resources anymore to meet their rising tax obligations

Black markets have typically preferred physical cash because it's permissionless nature. With cryptocurrencies there's now a digital equivalent.  An additional to a digital variant is it's easier to store and move especially in larger amounts.

In particular cryptocurrencies enable dark net markets where you can buy and sell stuff online. Contrary to popular belief these too operate with their own morality where they're mostly about subsets of drugs and medicine.

To see the positive side of dark net markets consider this example and try to see yourself in it:

> Your wife got diagnosed with cancer. Despite having insurance it only covers a part of the extremely high medical costs in the US and you're looking at a yearly expense of $20,000 just for the medicine she needs. This is just too much for you to afford but she needs the medicine otherwise she'll die.

What if I told you the same medicine could be bought in India for a fraction of the cost? What if there was a way to easily order it online? Even if it was illegal would you do it? What if the risk of getting caught was very small? There are variations of the same story, [here's one with a bit more detail](https://darkwebnews.com/news/high-costs-force-patients-to-dark-net-in-search-of-needed-medicine/).

This is exactly what cryptocurrencies and dark net markets gives you.

<https://podcast.bitcoin.com/e219-Black-Markets-On-The-Blockchain>
