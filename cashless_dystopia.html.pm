#lang pollen

◊(define-meta title "The cashless dystopia")
◊(define-meta subtitle "The cashless society is nightmare")
◊(define-meta updated "2019-12-22T19:08:58+01:00")
◊(define-meta uuid "55993260-1c9a-4bcf-ace5-7773e65bf7b5")


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

◊epigraph{
    ◊qt[#:src "1984"
        #:quote-src #t
        #:author "George Orwell"
        #:url 1984-book]{
 If you want a picture of the future, imagine a boot stamping on a human face—for ever.
    }
}

In Sweden, and in the world in general, we're moving closer to the utopian cashless society.◊sn{utopia} Businesses are safer from theft, as they don't have to store large amounts of cash in stores, and payments are faster and more convenient. Tax fraud and illegal transactions are also harder.

◊ndef["utopia"]{
    An ◊link[utopia]{◊em{utopia}} is a dreamlike societ that's perfect, or close to it. You might say that Heaven, the place some say you go to when you die, is an utopia.
}

But it's not all good. We've already touched on several problems in earlier chapters, for example how ◊link[rel-undesirable]{legitimate businesses might get banned} in our attempts to ban illegal goods and services, or how the cashless society ◊link[rel-privacy]{is a privacy nightmare} yet ◊link[rel-swiss-bank]{tax evasion is still a huge problem}.

In this chapter I'll try to tie together some of these issues to show how the cashless society isn't a dream---it's a nightmare.


◊subhead{Road to hell}

In their ever-increasing attempts to counter money-laundering, governments all over the world have implemented limits to cash deposits to banks, cash purchases and even how much cash you can carry.

◊link[kyc]{Know-your-customer} (KYC) laws for example require banks in the United States to ◊link[ctr]{report any cash deposits of $10,000}, or multiple transactions adding up to that amount, to the IRS. They then have to be ready to provide extensive documentation to prove where the money is coming from.◊sn{structuring}

◊ndef["structuring"]{
    The act of managing your deposits in a way to avoid triggering the report is called ◊link[structuring]{◊em{structuring}} and is---you guessed it---◊link[structuring-illegal]{illegal}. Of course this might also affect ◊link[structuring-innocent]{innocent people} or legitimate businesses who just happen to deposit using a suspicious pattern.
}

In the U.S. you also have to declare cash amounts over $10,000 you want to leave or enter the country with, otherwise you'll face a high risk of ◊link[travel-forfeiture]{having it all confiscated}. Many countries have similar restrictions but North Macedonia takes it a step further: to prevent "money laundering and terrorism financing" cash payments above 30,000 MKD (around €500) ◊link[macedonia-limits-cash]{are banned}.

Instead we're encouraged to use digital payments (ignoring the ◊link[rel-unbanked]{unfortunate without the ability} to do so), where banks are able to block large payments if they deem them suspicious---presumably to make it harder to do money laundering.◊sn{laundering}

◊ndef["laundering"]{
    It sounds hypocritical to me when a major U.S. bank laundered ◊strong{$378 billions} ◊link[us-banks-mexico-drug-gangs]{for Mexico's drug gangs}, the kind of gangs that leaves behind ◊link[gang-mass-grave]{enormous mass-graves}.
}

◊ndef["privacy"]{
    In contrast to other digital payments cryptocurrencies can give you very good privacy and it's in practice impossible for anyone to know how much you have. We'll explore this more in the chapter ◊link[rel-swiss-bank]{A swiss bank account in your pocket}.
}

◊qt[#:author "Barclay Bram"
    #:url "http://nautil.us/issue/73/play/wechat-is-watching"]{
  I use WeChat to pay my rent. I use it to pay for my utilities. I use it to top up my phone credit. I use WeChat to pay for the metro system. I use it to scan QR codes on the back of shared-bike schemes throughout the city. I use it to call cabs.
}

In many countries we're already close to the cashless society. In China for example WeChat is absolutely integral and here in Sweden using cash is very rare, and many stores, restaurants and even banks have dropped cash completely.

◊(define rel-undesirable "/undesirable_businesses.html")
◊(define rel-global "global_currency.html")
◊(define better-payments "/better_digital_payments.html")
◊(define rel-privacy "/private_money.html")
◊(define rel-unbanked "/for_the_unbanked.html")
◊(define rel-swiss-bank "/swiss_bank_account_in_your_pocket.html")
◊(define structuring "https://en.wikipedia.org/wiki/Structuring")
◊; https://www.reddit.com/r/btc/comments/bvx83n/macedonia_bans_fiat_cash_payments_above_560/
◊(define macedonia-limits-cash "http://www.china.org.cn/world/Off_the_Wire/2019-06/01/content_74845553.htm")
◊(define structuring-illegal "https://www.law.cornell.edu/uscode/text/31/5324")
◊(define ctr "https://en.wikipedia.org/wiki/Currency_transaction_report")
◊(define kyc "https://en.wikipedia.org/wiki/Know_your_customer")
◊(define structuring-innocent "https://ij.org/case/connecticut-forfeiture/")
◊(define travel-forfeiture "https://ij.org/case/kentucky-civil-forfeiture/")
◊(define us-banks-mexico-drug-gangs "https://www.theguardian.com/world/2011/apr/03/us-bank-mexico-drug-gangs")
◊(define gang-mass-grave "https://www.theguardian.com/world/2017/mar/14/mexico-skulls-mass-grave-drug-cartel-veracruz")


◊subhead{A short story}

Money should be ◊link[money-properties]{◊strong{acceptable}}, meaning that everyone must be able to use it. A move towards a society where you need permission to use it's money is disastrous, which I'll try to exemplify using a short story:

◊div[#:class "story"]{

    ◊ol{
        ◊li{3 weeks after being declared ◊em{unwanted}}
        ◊li{Discover he's been thrown out of the department}
        ◊li{Spend the day trying to find somewhere to crash}
        ◊li{Cannot find it, nor something good to eat}
        ◊li{The day ends with him not being able to visit a public bathroom, and taking a shit outside}
    }

}

When you look closer at an utopia, you'll often find that it's not such a good place after all. You might even argue that an utopia cannot exist, since a society contains people with different desires that cannot be fulfilled simultaneously. (Is the Nazi Arian society an utopia? Maybe for the Nazis, but certainly not for the Jews.)

The cashless society isn't an utopia, but a dystopia that'll suppress the lowest class so hard it's like we've regressed thousands of years.◊sn{other-ex}

And the lower class will be big, ◊link[brits-struggle]{millions of Brits} would struggle in a cashless society and China has already ◊link[china-bans-23m]{banned millions from buying travel tickets} via their “◊link[china-social-credit]{social credit}” system. Globally there are around ◊link[rel-unbanked]{1.7 billion unbanked adults}, who curiously seem to be forgotten in this discussion.

◊ndef["other-ex"]{
    There are many examples of the utopia/dystopia theme, ranging from ◊link[demolition-man]{Demolition Man} and ◊link[hot-fuzz]{Hot Fuzz} to ◊link[hunger-games]{The Hunger Games} and ◊link[harry-potter]{Harry Potter}.
}

◊(define brits-struggle "https://www.which.co.uk/news/2018/12/25m-brits-would-struggle-in-a-cashless-society/")
◊(define china-bans-23m "https://www.theguardian.com/world/2019/mar/01/china-bans-23m-discredited-citizens-from-buying-travel-tickets-social-credit-system")
◊(define china-social-credit "https://www.npr.org/sections/money/2018/10/26/661163105/episode-871-blacklisted-in-china?t=1577261607993")

◊(define demolition-man "https://www.imdb.com/title/tt0106697/")
◊(define hot-fuzz "https://www.imdb.com/title/tt0425112/")
◊(define hunger-games "https://en.wikipedia.org/wiki/The_Hunger_Games")
◊(define harry-potter "https://en.wikipedia.org/wiki/Harry_Potter")
◊(define money-properties "/what_is_money.html#what-properties-does-good-money-have?")
◊(define utopia "https://en.wikipedia.org/wiki/Utopia")
◊(define dystopia "https://en.wikipedia.org/wiki/Dystopia")


◊subhead{A possible salvation}

The lack of financial privacy and needing permission to use it's money are the big problems with the cashless society. As we've seen in previous chapters, cryptocurrencies solve these problems well.◊sn{privacy?}

◊ndef["privacy?"]{
    It might hubris to claim that cryptocurrencies makes privacy better, as Bitcoin is more traceable than any other form of money history. But there are other cryptocurrencies with much better privacy features, see the ◊link[privacy-challenge]{discussion about the privacy challenge} in the appendix
}

The cashless society does solve some problems well. It's more convenient to use digital money---just blip your card or your phone, instead of counting change---or how businesses don't have to store large amounts of cash in stores and risk break-ins. Cryptocurrencies can also solve these problems.

I'd say that the only way a cashless society makes sense is if we use ◊em{digital} cash, while only moving away from physical cash. And the only way to have a permissionless digital currency, is to use a cryptocurrency.

◊(define privacy-challenge "/challenges.html#privacy-and-fungibility")

