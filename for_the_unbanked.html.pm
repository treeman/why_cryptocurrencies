#lang pollen

◊(define-meta title "For the unbanked")
◊(define-meta subtitle "Digital payments for those without a bank account")
◊(define-meta updated "2020-01-15T20:09:27+01:00")
◊(define-meta uuid "875332fd-f5ad-4275-8254-008a2e74a4a0")

◊epigraph{
    ◊qt[#:src "Global Findex database"
        #:url findex-report
        #:date "2017"]{
    A growing body of research reveals many potential development benefits from financial inclusion — especially from the use of digital financial services, including mobile money services, payment cards, and other financial technology (or fintech) applications.
    }
}

In the previous chapters we've looked at some problems with having to get permission to accept digital payments, and what happens when we don't. This time we'll look at the reverse problem: when you can't make digital payments.

To make digital payments you typically need a bank account◊sn{banks-required} and those without one are often called ◊em{unbanked}. Paying bills digitally, using credit cards and even mobile payments all require a bank account. If you don't have a bank account, you're essentially shut-out from the digital economy.

◊note-pos[#:top -8]{banks-required}

◊ndef["banks-required"]{
    Maybe there's a way to work around the bank requirement, possibly by using in-game currencies, but they're severely limited compared to the digital payments we usually think about. In practice you need a bank account for useful digital payments.
}


◊subhead{Who are the unbanked?}

There are ◊strong{◊link[findex-report]{1.7 billion adults}} without a bank account in the world. To get a sense for what countries they come from, take a look at this world map:

◊; http://colorbrewer2.org/#type=sequential&scheme=PuRd&n=5
◊; multi-hue
◊; #f1eef6  0-10
◊; #d7b5d8  11-35
◊; #df65b0  36-60
◊; #dd1c77  61-80
◊; #980043  81-100
◊img[#:src "images/unbanked-map.png" #:class "fullwidth" #:link #t]{
    Adults without a bank account, 2017.
    Source ◊link[findex-report]{Global Findex database}.
}


While this map helps us identify countries with a high fraction of unbanked, it doesn't really tell us where the large number of unbanked come from. Instead here's a map visualizing the number of unbanked in the world:

◊; http://colorbrewer2.org/#type=sequential&scheme=PuRd&n=5
◊; multi-hue
◊;#f0f9e8   < (no labeL)0
◊;#bae4bc   1 - 10 mil
◊;#7bccc4   10 - 50 mil
◊;#43a2ca   50 - 100 mil
◊;          100 - 150 mil (no country!)
◊;#0868ac   > 150 mil
◊img[#:src "images/unbanked-count-map.png" #:class "fullwidth" #:link #t]{
    The number of adults without a bank account, 2017.
    Source ◊link[findex-report]{Global Findex database} (◊link[findex-interactive]{interactive}).
}

Almost half of all unbanked live in just seven countries: China, India, Indonesia, Mexico, Nigeria, Pakistan and Bangladesh. In fact China (224 million) and India (191 million) alone make up nearly a quarter of all unbanked in the world.

While the fraction of unbanked adults are high in the developing countries, with poor access to electricity and internet, a surprisingly large number of unbanked also live in developed countries. For example the USA has 18 million unbanked and in France there are 3 million unbanked.

The unbanked are in general less educated, where 62% of unbanked have a primary education or less, compared to around half overall in developing economies. Twice as many unbanked live in the poorest households as in the richest ones and 56% of all unbanked are women.◊sn{read-it}


◊subhead{Why are they unbanked?}

The ◊link[findex-report]{Global Findex database} also tried to examine why people stay unbanked:

◊ndef["read-it"]{
    If this is interesting to you I suggest you ◊link[findex-report]{give the report a read}. There are tons of different statistics and I only refer to a fraction of the data available.
}

◊img[#:src "images/why-unbanked.svg" #:link #t]{
    Reported reason for adults not having a bank account, 2017. More than one reason could be given.
    Source ◊link[findex-report]{Global Findex database}.
}

The most commonly cited barrier was not having enough money. Around 60% said they had too little money to use a bank account, with almost 20% citing it as the sole reason.◊sn{too-little-money}

◊ndef["too-little-money"]{
    I assume it might mean poor people who might not have any savings but live day to day. But it's not clear where to draw the line between having too little money, accounts being too expensive and not having a use for an account. I feel these issues would go together to some extent.
}

Most cite several different reasons, making it hard to rank the issues in importance. For example many say they don't need an account, but if the other barriers were to disappear they might find accounts useful if only they had access to them. At least this gives a sense of what issues are present.

◊note-pos[#:top -11]{too-little-money}


◊subhead{Unbanked with internet}

The question "But how do the unbanked pay for internet?" is always asked when discussing the unbanked. ◊link[findex-report]{The report} has this to say:

◊qt{
    How many unbanked adults have a mobile phone? Globally, about 1.1 billion — or about two-thirds of all unbanked adults. In India and Mexico more than 50 per-cent of the unbanked have a mobile phone; in China 82 percent do.

    Fewer unbanked adults have both a mobile phone and access to the internet in some form— whether through a smartphone, a home computer, an internet café, or some other way. Globally, the share is about a quarter.
}

So about ◊strong{420 million} do have access to internet while being unbanked. I don't know if that's true or not, but anecdotally it seems almost all homeless people I've seen owns a smartphone of some sort. You can even get internet in Venezuela◊sn{venezuela-internet}, despite an unreliable power grid. And consider that even rich and successful ◊link[undesirable-chapter]{can become temporarily unbanked}, for example if banks arbitrarily decide porn stars and marijuana supporters aren't something they want to be associated with.◊sn{handelsbanken}

◊(define undesirable-chapter "/undesirable_businesses.html")

◊note-pos[#:top -8]{venezuela-internet}
◊note-pos{handelsbanken}


◊ndef["venezuela-internet"]{
    Reportedly Venezuela has one of the worst internet speeds in the world. Yet they still ◊link[venezuela-social-media]{use social media actively} and interestingly they also ◊link[venezuela-mining]{mine Bitcoin}.
}

◊ndef["handelsbanken"]{
    Here in Sweden I had a fascinating encounter with Handelsbanken, one of the largest banks here. I asked if I could open an account there (because I wanted to try out their internet bank) but I couldn't get one unless I moved over all my accounts and used them to receive my salary.

    I did finally get an account there when we took a mortgage with them, but I still don't use them as my main bank.
}

◊(define venezuela-mining "https://news.bitcoin.com/venezuelan-bitcoin-saves-family/")
◊(define venezuela-social-media "https://news.abs-cbn.com/overseas/02/01/19/venezuela-opposition-clings-to-social-media-lifeline")


◊;I've only touched on some statistics, please see the ◊link[findex-report]{full report} for more.


◊subhead{What's the problem?}

There are two big problems with being unbanked related to digital payments as I see it, one on a country level and one for individuals:

◊ol{
    ◊li{Countries miss out on economic growth.}
    ◊li{Individuals may be shut-out from society.}
}

◊subhead3{Economic growth}

Continuing the quote from the beginning of the chapter:

◊qt[#:src "Global Findex database"
    #:url findex-report
    #:date "2017"]{
    The benefits from financial inclusion can be wide ranging. For example, studies have shown that mobile money services---which allow users to store and transfer funds through a mobile phone---can help improve people’s income earning potential and thus reduce poverty.

    A study in Kenya found that access to mobile money services delivered big benefits, especially for women. It enabled women-headed households to increase their savings by more than a fifth; allowed 185,000 women to leave farming and develop business or retail activities; and helped reduce extreme poverty among women-headed households by 22 percent.
}

One of the best ways to fight poverty is ◊link[economic-growth-poverty]{economic growth}. This is fairly undisputed, although the link may be indirect. As I see it, convenient digital payments contribute to economic growth in two ways:

◊ol{
    ◊li{Increased economic efficiency.

        Since digital payments allow for more convenient payments, especially over longer distances, they increase the efficiency in the economy leading to economic growth.
    }
    ◊li{A cornerstone for inclusion into the ever-more digitalized world.

        Globalization, or how the world has become more interconnected, has been a theme in the last century or two. It has never been easier to travel to the other side of the world, to talk to them over the internet or have them ship goods to you for very low fees.◊sn{containers}

        If people don't have access to digital payments the country risks becoming more isolated◊sn{china-isolation} and might miss out on the economic growth ◊link[globalization-economic-growth]{caused by globalization}. (◊nbsp{Of course} there are downsides with globalization as well, just look at the ◊link[trump-trade-war]{trade war} between the U.S. and China).

        ◊note-pos[#:top -8]{containers}
        ◊note-pos{china-isolation}
    }
}

◊(define trump-trade-war "https://www.bbc.com/news/world-43512098")
◊(define globalization-economic-growth "https://www.thebalance.com/globalization-and-its-impact-on-economic-growth-1978843")

◊ndef["containers"]{
    For an interesting angle on how globalization effected the world economy I recommend ◊link[the-box-book #:quote #t]{The Box: How the Shipping Container Made the World Smaller and the World Economy Bigger} by Marc Levinson.
}

◊ndef["china-isolation"]{
    An historical example is when China decided to ◊link[china-isolation]{isolate itself} from the rest of the world. They had all they needed and were ahead the rest of the world in many areas, but after they isolated themselves the rest of the world caught up.
}

◊(define china-isolation "https://en.wikipedia.org/wiki/Haijin")
◊(define economic-growth-poverty "https://www.cato.org/publications/commentary/ending-mass-poverty")
◊(define what-is-money "/what_is_money.html")



◊subhead3{Shut-out from society}

It might be relatively fine for you to live in a country without a bank account---as long as others don't use one either. But what if you live in a country where digital payments are an integral part of society?

For example here in Sweden almost everyone and everything uses digital payments. It would be ◊strong{extremely} difficult for you to live here without a credit card or a bank to pay your bills.

As I went on a small business trip just a couple of weeks ago to the middle parts of Sweden I accidentally forgot my wallet, including my credit cards and identification card. I borrowed some cash from a friend, thinking I could use them to pay for lunch and dinner, but surprisingly most restaurants didn't accept cash. So I still had to ask my co-workers to pay for me...◊sn{moved-to-sweden}

◊ndef["moved-to-sweden"]{
    A similar story of a co-worker who moved to Sweden. There was a delay for him to get his social security number, and thus his bank account, so he had to be taken care of by people at work until it got sorted out.
}

I don't really know how people without a bank account manage in Sweden or what tourists will do if their credit card stops working? With the current development they might not even be able to use public bathrooms!◊sn{public-bathroom}

◊ndef["public-bathroom"]{
    In fact when I last visited a public bathroom in a shopping mall they had a new payment system there. Instead of inserting a coin to get the door open---you guessed it---you had to pay with a credit card or with Swish (a mobile payment app, connected to your bank account). I guess the kids or tourists, who don't have a credit card or Swish, has to hold it in.
}

In China mobile payments are growing like mad. If you're a tourist you should get them, otherwise you'll have a tough time. This in combination with China's ◊em{social credit}, which ranks people's behaviors to make sure they're in line with the party, is a recipe for disaster. If you score badly you might not be allowed to fly and maybe you'll lose the privilege of using digital payments.

◊note-pos[#:top -19]{moved-to-sweden}
◊note-pos[#:top -11]{public-bathroom}

◊(define rel-economic-growth "#economic-growth")
◊(define rel-shut-out "#shut-out-from-society")
◊(define findex-report "https://globalfindex.worldbank.org/sites/globalfindex/files/2018-04/2017%20Findex%20full%20report_0.pdf")
◊(define findex-interactive "http://datawrapper.dwcdn.net/AmFVU/2/")


◊subhead{What might cryptocurrencies help the unbanked with?}

Of course "just use cryptocurrencies" isn't the answer to all problems for the unbanked. Cryptocurrencies won't magically give poor people money, make them educated and they can't even completely replace banks.◊sn{banking-the-unbanked} But it is a helpful tool which, as adoption grow, might be helpful for many without bank access.

There are a number of benefits cryptocurrencies have:

◊ndef["banking-the-unbanked"]{
    "Banking the unbanked" is a term cryptocurrency advocates like to use, and I even used it as the title of this chapter during the initial planning phase. But it's misleading as banks do things cryptocurrencies don't, for instance:

    1. Extend loans.
    2. Safeguard your money (while you can hold cryptocurrencies yourself, it makes sense for many to let others hold them for you).
}

◊ol{
    ◊li{Cryptocurrencies are for everyone.

        Cryptocurrencies are ◊em{permissionless}: ◊link[no-third-party]{you don't need permission} from anyone to use them. It doesn't matter if you're homeless, a porn star or a tourist---you can always have access to digital payments and you cannot be shut-out.
    }
    ◊li{There is no KYC process.

        Because cryptocurrencies are permissionless there is no ◊link[kyc]{Know your customer} (KYC) process, which banks are required to perform. That's good for people who might not have proper documentation such as ID-cards or birth certificates.
    }
    ◊li{The ◊link[cheaper-faster]{fees are low}.

        There are no fees for opening or having an account---like with traditional banks---and there are no KYC associated costs. There is only a small transaction cost you pay when using a cryptocurrency.
    }
    ◊li{You ◊link[no-third-party]{don't need to trust a third party} with your money.

        In countries with high corruption you might not trust your local bank enough to handle your money. With cryptocurrencies you can hold your money yourself and there's no need for a third party to use it (such as a bank making the payment for you).
    }
    ◊li{There's no need to visit a financial institution.

        As long as you have internet access you always have access to your money and can make payments. Getting started is as simple as installing an app on your phone.
    }
}

These are directly related to the ◊link[rel-why-unbanked?]{reasons why people stay unbanked}, many which cryptocurrencies might help solve. For example, the 30% who say bank accounts are too expensive and the 20% who say they lack documentation, may find cryptocurrencies a viable alternative as it is much cheaper than bank accounts and don't require any documentation. Cryptocurrencies also remove the requirement of having to trust a bank, which 15% of the unbanked cited as a reason for not having an account.

These benefits makes it possible for the 420 million unbanked who have internet access to use cryptocurrencies and gain ◊link[global-currency]{access to the global economy}.

◊(define rel-why-unbanked? "#why-are-they-unbanked?")

◊(define kyc "https://en.wikipedia.org/wiki/Know_your_customer")
◊(define cheaper-faster "/cheaper_faster.html")
◊(define no-third-party "/properties_of_a_cryptocurrency.html#no-trusted-third-party")
◊(define global-currency "/global_currency.html")


