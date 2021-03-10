#lang pollen

◊(define-meta title "The cashless dystopia")
◊(define-meta subtitle "The cashless society is a nightmare")
◊(define-meta published "2020-01-05T00:00:00+01:00")
◊(define-meta updated "2021-03-10T19:02:53+01:00")
◊(define-meta uuid "55993260-1c9a-4bcf-ace5-7773e65bf7b5")

◊(clear-sidenotes)

◊epigraph{
    ◊book-qt[1984-book]{
 If you want a picture of the future, imagine a boot stamping on a human face—for ever.
    }
}

In Sweden, and in the world in general, we're moving closer to the utopian cashless society.◊mn{utopia} Businesses are safer from theft as they don't have to store large amounts of cash in stores, and payments are faster and more convenient. Tax fraud and illegal transactions are also harder.

◊ndef["utopia"]{
    An ◊def[utopia]{utopia} is a dreamlike society that's perfect, or close to it. You might say that Heaven, the place some say you go to when you die, is a utopia.
}

But it's not all good. We've already touched on several problems in earlier chapters, for example how ◊link[undesirable_businesses]{legitimate businesses might get banned} in our attempts to ban illegal goods and services, or how the cashless society ◊link[private_money]{is a privacy nightmare} yet ◊link[swiss_bank_account_in_your_pocket]{tax evasion is still a huge problem}.  In this chapter I'll try to tie together some of these issues and paint a picture of how the cashless society isn't a dream---it's a nightmare. But it's a nightmare cryptocurrencies might help us avoid.

◊note-pos[#:top -19]{utopia}


◊subhead{Road to hell}

In their ever-increasingly invasive attempts to counter money-laundering, governments all over the world have limited the amount of cash you can deposit or withdraw from banks, cash purchases and even how much cash you can carry.  ◊link[kyc]{Know-your-customer} laws for example require banks in the United States to ◊link[ctr]{report any cash deposits of $10,000}, or multiple transactions adding up to that amount, to the IRS. The customers then have to be ready to provide extensive documentation to prove where the money is coming from.◊mn{structuring}

◊ndef["structuring"]{
    The act of managing your deposits in a way to avoid triggering the report is called ◊def[structuring]{structuring} and is---you guessed it---◊link[structuring-illegal]{illegal}. Of course this might also affect ◊link[structuring-innocent]{innocent people} or legitimate businesses who just happen to deposit using a suspicious pattern.
}

In the U.S., you also have to declare cash amounts over $10,000 you want to leave or enter the country with, otherwise you'll face a high risk of ◊link[travel-forfeiture]{having it all confiscated}. Many countries have similar restrictions but North Macedonia takes it a step further: to prevent "money laundering and terrorism financing" cash payments above 30,000 MKD (around €500) ◊link[macedonia-limits-cash]{are banned}.

Instead, we're encouraged to use digital payments (ignoring the ◊link[for_the_unbanked]{unfortunate people without the ability} to do so), where banks are able to block large payments if they deem them suspicious---presumably to make it harder to do money laundering.◊mn{laundering}

◊ndef["laundering"]{
    It sounds hypocritical to me when a major U.S. bank laundered ◊strong{$378 billions} ◊link[us-banks-mexico-drug-gangs]{for Mexico's drug gangs}, the kind of gangs that leaves behind ◊link[gang-mass-grave]{enormous mass-graves}.
}

◊qt[#:author "Barclay Bram"
    #:url wechat-is-watching]{
  I use WeChat to pay my rent. I use it to pay for my utilities. I use it to top up my phone credit. I use WeChat to pay for the metro system. I use it to scan QR codes on the back of shared-bike schemes throughout the city. I use it to call cabs.
}

In many countries, we're already close to the cashless society. As we saw in the quote, WeChat is absolutely integral for many people in China and here in Sweden using cash is very rare, and many stores, restaurants and even banks have dropped cash completely.

◊(define wechat-is-watching
   (x-ref
     "2020-01-05"
     "http://nautil.us/issue/73/play/wechat-is-watching"
     "Barclay Barm (2019) WeChat Is Watching: Living in China with the app that knows everything about me."))
◊(define structuring
   (x-ref
     "2020-01-05"
     "https://en.wikipedia.org/wiki/Structuring"
     "Wikipedia: Structuring"))
◊(define structuring-illegal
   (x-ref
     "2020-01-05"
     "https://www.law.cornell.edu/uscode/text/31/5324"
     "Cornell Law School: 31 U.S. Code § 5324. Structuring transactions to evade reporting requirement prohibited"))
◊(define structuring-innocent
   (x-ref
     "2020-01-05"
     "https://ij.org/case/connecticut-forfeiture/"
     "Institute for Justice: Connecticut Forfeiture - IRS Seizes First, Questions Later—Much Later"))
◊(define macedonia-limits-cash
   (x-ref
     "2020-01-05"
     "http://www.china.org.cn/world/Off_the_Wire/2019-06/01/content_74845553.htm"
     "Xinhua (2019) North Macedonia limits payment in cash up to 500 euros"))
◊(define ctr
   (x-ref
     "2020-01-05"
     "https://en.wikipedia.org/wiki/Currency_transaction_report"
     "Wikipedia: Currency transaction report"))
◊(define travel-forfeiture
   (x-ref
     "2020-01-05"
     "https://ij.org/case/kentucky-civil-forfeiture/"
     "Institute for Justice: Ordinary Americans Are Victims of Policing for Profit in Our Nation’s Airports"))
◊(define us-banks-mexico-drug-gangs
   (x-ref
     "2020-01-05"
     "https://www.theguardian.com/world/2011/apr/03/us-bank-mexico-drug-gangs"
     "Ed Vulliamy (2011) How a big US bank laundered billions from Mexico's murderous drug gangs"))
◊(define gang-mass-grave
   (x-ref
     "2020-01-05"
     "https://www.theguardian.com/world/2017/mar/14/mexico-skulls-mass-grave-drug-cartel-veracruz"
     "Associated Press in Mexico City (2017) More than 250 skulls found in 'enormous mass grave' in Mexico"))
◊; https://www.reddit.com/r/btc/comments/bvx83n/macedonia_bans_fiat_cash_payments_above_560/


◊subhead{A short story}

Money should be ◊link[money-properties]{◊strong{acceptable}}, meaning that it must be usable by everyone. A move towards a society where you need permission to use its money is disastrous, which I'll try to exemplify using a short story:


◊div[#:class "story"]{
    Kevin was walking home after yet another failure. It had only been two weeks since he was declared a leech, but it felt like an eternity. Those bastards were so scared of being associated with a leech, they cut him off quicker than if he'd been a leper. Maybe he was as contagious as one.

    He'd been trying to find some work, but nobody would take him in. He couldn't even get a cleaning job---what if he'd steal? And that condescending look on their faces. How his previous employer had told him he would get his salary when he was fired, knowing that the bank had frozen his account and he couldn't use it anyway. It would've felt so good to punch that ugly face in, but Kevin was glad he managed to hold back. As bad as the situation was, it surely would be worse in a prison cell.

    Turning the corner, Kevin felt a stab of hunger. Hardly surprising, as he hadn't eaten anything today. But he still had some food at the apartment that Joe, bless his soul, had been so kind to help him buy. Everything would be better after eating some food.

    When he reached his apartment door, he was met with an EVICTED sign. Horrified, Kevin tried to open the door, but they had already changed the lock. Anger washed over him again---the rent wasn't due for another week! Those bastards!

    Trying to cool down, he tried to call the manager, but no answer. Maybe the bastard had blocked him. Instead he called Joe, who promised he could crash at his place, and that he'd call him back at 12 when he got off work.

    That was still many hours away, and Kevin was still very hungry. So he decided to walk around downtown to search for something to eat. He asked around, but all he could find was a small coffee shop that would trade a gift card for a cup of coffee. He'd never realized how reliant he was on the plastic cards, and without them he was now risking to starve in the middle of downtown, with multiple restaurants at every corner.

    A little happier, Kevin continued exploring downtown. He'd been here many times, but today it didn't quite look the same. He used to only see the fancy restaurants, the night clubs and the pretty girls. But now he noticed the people in the dark alleys, looking for cans or maybe even food in the trash. He saw homeless people trying to sleep, right next to the night clubs he used to visit. Maybe he would soon join them? Maybe they knew how to buy food?

    Having to go pee, Kevin searched for a restroom. There was a small queue today, but Kevin was patient. The coffee had really raised his spirit---maybe everything would work out tomorrow?

    It was Kevin's turn, so he walked to the door to the toilet and stopped. You had to pay with a plastic card to open the door.
}

The worst part of this story is that it's not even that far-fetched, and all examples are inspired by real life events:

◊ul{
    ◊li{
        "Leech" is literally a synonym for "deadbeat", the name for Chinese people on the ◊link[china-social-credit]{wrong side of their social credit system}. They also have trouble getting work and get shunned if their status is discovered.
    }
    ◊li{
        People have been thrown out of their homes for very minor things. For example a Michigan man underpaid his property taxes by ◊strong{$8.41}, and the county ◊link[michigan-man-house]{seized his property, sold it and kept the profits}.◊mn{asset-forfeiture}

        ◊note-pos{asset-forfeiture}

        ◊ndef["asset-forfeiture"]{
            This is related to civil asset forfeiture, which we'll look at in the ◊link[protection_against_government_confiscation]{next chapter}.
        }
    }
    ◊li{
        I too was in trouble when I'd forgotten my credit cards, because many restaurants in Sweden don't accept cash. A girl in a coffee shop even helped me buy a warm chocolate drink, when I had trouble finding food. (I don't drink coffee.)
    }
    ◊li{
        Here in Sweden I've seen public bathrooms you unlock with digital payments:

        ◊img[#:src "/images/digital_bathroom_lock.jpg" #:alt "A lock on a public bathroom door that only accepts digital payments."]{
            It says "5 SEK fee". Instead of inserting a 5 SEK coin, you use your card. Very convenient, when it works. I wonder if it unlocks when power disappears?
        }
    }
}

Perhaps the most unrealistic part of the story is how the potential employers knew about his status as a leech, and why he got marked in the first place. But a key problem with the cashless society, that's left implicit in the story, is the complete lack of financial privacy; everything you buy and do with your money is tracked.◊mn{no-privacy}

◊ndef["no-privacy"]{
    When you think about it, we've already given up our financial privacy. All that's left is to wait for us to be abused, like in the story.
}

For instance, Kevin's bank might have blocked him because they discovered he'd been buying weed or supporting its legalization (which ◊link[wells-fargo-closed]{Wells Fargo has done before}). Maybe Kevin's employer then saw that the bank account was blocked and started worrying that Kevin, now unable to pay for things, would resort to stealing things from the company for a living, and decided to fire him.

There are already companies that collect this kind of information, and sell it for profit. It's not unreasonable to think that employers would want this to help them decide who to hire, and who to fire.

◊note-pos[#:top -19]{no-privacy}

◊(define wells-fargo-closed
   (x-ref
     "2020-01-05"
     "https://www.cnbc.com/2018/08/22/wells-fargo-closes-bank-account-of-candidate-who-supports-marijuana.html"
     "Emily Flitter (2018) A candidate backed medical marijuana. Wells Fargo closed her bank account."))
◊(define michigan-man-house
   (x-ref
     "2020-01-05"
     "https://reason.com/2019/11/06/a-michigan-man-underpaid-his-property-taxes-by-8-41-the-county-seized-his-property-sold-it-and-kept-the-profits/"
     "Eric Boehm (2019) A Michigan Man Underpaid His Property Taxes By $8.41. The County Seized His Property, Sold It—and Kept the Profits."))


◊subhead{A dystopia}

When you look closer at an ◊def[utopia]{utopia}, you'll often find that it's not such a good place after all. You might even argue that a utopia cannot exist, since a society contains people with different desires that cannot be fulfilled simultaneously. (Is the Nazi Arian society a utopia? Maybe for the Nazis, but certainly not for the Jews.)◊sn{other-ex}

The cashless society isn't a utopia, but a ◊def[dystopia]{dystopia} that'll suppress the lowest class harder than we can imagine. If you cannot use the same money as others, you cannot have a home, pay your bills or buy food. You cannot get a normal job or even beg for money, since you cannot use the money they give you. You'll be completely closed off from the rest of society.◊sn{what-then?}

But you wouldn't be alone. ◊link[brits-struggle]{25 million Brits} would struggle in a cashless society and China has already ◊link[china-bans-23m]{banned millions from buying travel tickets} via their ◊link[china-social-credit2 #:quote #t]{social credit} system. And don't forget about the ◊link[for_the_unbanked]{1.7 billion unbanked adults} in the world, who don't fit into a cashless society.

◊note-pos[#:top -20]{other-ex}
◊note-pos[#:top -10]{what-then?}

◊ndef["other-ex"]{
    There are many examples of the utopia/dystopia theme, ranging from ◊link[demolition-man]{Demolition Man} and ◊link[hot-fuzz]{Hot Fuzz} to ◊link[hunger-games]{The Hunger Games} and ◊link[harry-potter]{Harry Potter}.
}

◊ndef["what-then?"]{
    What would happen to you then? My guess is you'd band together with others in the same situation, and you'll form a mini society where you'll use some other form of money. Maybe gift cards or "old" cash?

    You might be able to interact with the normal society by bartering, but you'll probably turn to illegal activities like theft or prostitution.
}

◊(define brits-struggle
   (x-ref
     "2020-01-05"
     "https://www.which.co.uk/news/2018/12/25m-brits-would-struggle-in-a-cashless-society/"
     "Reena Sewraz (2018) 25 million Brits would struggle in a cashless society"))
◊(define china-bans-23m
   (x-ref
     "2020-01-05"
     "https://www.theguardian.com/world/2019/mar/01/china-bans-23m-discredited-citizens-from-buying-travel-tickets-social-credit-system"
     "Lily Kuo (2019) China bans 23m from buying travel tickets as part of 'social credit' system"))
◊(define china-social-credit2
   (x-ref
     "2020-01-05"
     "https://www.npr.org/sections/money/2018/10/26/661163105/episode-871-blacklisted-in-china?t=1577261607993"
     "Planet Money (2018) Episode 871, Blacklisted In China"))

◊(define demolition-man
   (x-ref
     "2020-01-05"
     "https://www.imdb.com/title/tt0106697/"
     "IMDb: Demolition Man (1993)"))
◊(define hot-fuzz
   (x-ref
     "2020-01-05"
     "https://www.imdb.com/title/tt0425112/"
     "IMDb: Hot Fuzz (2007)"))
◊(define hunger-games
   (x-ref
     "2020-01-05"
     "https://en.wikipedia.org/wiki/The_Hunger_Games"
     "Wikipedia: The Hunger Games"))
◊(define harry-potter
   (x-ref
     "2020-01-05"
     "https://en.wikipedia.org/wiki/Harry_Potter"
     "Wikipedia: Harry Potter"))
◊(define utopia
   (x-ref
     "2020-01-05"
     "https://en.wikipedia.org/wiki/Utopia"
     "Wikipedia: Utopia"))
◊(define dystopia
   (x-ref
     "2020-01-05"
     "https://en.wikipedia.org/wiki/Dystopia"
     "Wikipedia: Dystopia"))


◊subhead{A possible salvation}

The lack of financial privacy and needing permission to use its money are the big problems with the cashless society. As we've seen in previous chapters, cryptocurrencies solve the permission problem very well, and some also give excellent privacy.◊mn{privacy?}

◊ndef["privacy?"]{
    It might hubris to claim that cryptocurrencies makes privacy better, as Bitcoin is more traceable than any other form of money in history. But there are other cryptocurrencies with much better privacy features, see the ◊link[privacy-challenge]{discussion about the privacy challenge} for more information.
}

The cashless society does indeed have its benefits.  It's more convenient to use digital money---just blip your card or your phone, instead of counting change---or how businesses don't have to store large amounts of cash in stores and risk break-ins. Cryptocurrencies also have these benefits.

This is why cryptocurrencies are sometimes called "digital cash"; they combine the important permissionless and privacy properties of cash with the convenience of digital money, and it's the only way a cashless society would make sense.

◊note-pos[#:top -17]{privacy?}


◊; WeChat is Watching: Living in China with the app that knows everything about me
◊; https://news.ycombinator.com/item?id=20173549

◊; China bans 23M from buying travel tickets as part of 'social credit' system
◊; https://news.ycombinator.com/item?id=19281192

◊; 25M Brits would struggle in a cashless society
◊; https://news.ycombinator.com/item?id=19407730

◊; Sweden's cashless society is no longer a utopia
◊; https://news.ycombinator.com/item?id=18422422

◊; Debate rages in Austria over enshrining use of cash in the constitution
◊; https://www.euractiv.com/section/data-protection/news/debate-rages-in-austria-over-enshrining-use-of-cash-in-the-constitution/

