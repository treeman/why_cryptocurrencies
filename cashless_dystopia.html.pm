#lang pollen

◊(define-meta title "The cashless dystopia")
◊;(define-meta subtitle "Read it online for free without cost of any kind")
◊(define-meta updated "2019-12-22T19:08:58+01:00")
◊(define-meta uuid "55993260-1c9a-4bcf-ace5-7773e65bf7b5")

◊epigraph{
    ◊qt[#:src "1984"
        #:quote-src #t
        #:author "George Orwell"
        #:url 1984-book]{
 If you want a picture of the future, imagine a boot stamping on a human face—for ever.
    }
}

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


Cryptocurrencies don't have any kind of restriction for how much you can send, receive or transport and even if similar limits are placed on them there's no practical way to enforce them.◊sn{privacy}

◊ndef["privacy"]{
    In contrast to other digital payments cryptocurrencies can give you very good privacy and it's in practice impossible for anyone to know how much you have. We'll explore this more in the chapter ◊link[rel-swiss-bank]{A swiss bank account in your pocket}.
}

◊(define rel-unbanked "/for_the_unbanked.html")
◊(define rel-swiss-bank "/swiss-bank-account-in-your-pocket.html")
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

An utopia is a dreamlike society that's perfect, or close to it. The cashless society is an utopia, where businesses are safer from theft as they don't have to store cash and payments are faster and more convenient. Tax fraud and illegal transactions are also harder.

But when you look closer at an utopia, you'll often find that it's not such a good place after all. The cashless society isn't an utopia, but a dystopia that'll suppress the lowest class so hard it's like we've regressed thousands of years.

◊(define money-properties "/what_is_money.html#what-properties-does-good-money-have?")
◊(define utopia "https://en.wikipedia.org/wiki/Utopia")
◊(define dystopia "https://en.wikipedia.org/wiki/Dystopia")

