#lang pollen

◊(define-meta title "Uncensorable donations")
◊;(define-meta subtitle "Avoids middleman fees and settles quickly")
◊(define-meta updated "2019-06-07T07:38:13+02:00")
◊(define-meta uuid "f35cab59-0629-4173-9de0-a07a0eef33dc")

◊; US efforts to jail Assange for espionage are a grave threat to a free media (theguardian.com)
◊; https://news.ycombinator.com/item?id=20173534

◊epigraph{
    ◊qt[#:author "WikiLeaks"
        #:url "https://wikileaks.org/wiki/Draft:About"]{
        Open government is strongly correlated to quality of life. Open government is compelled to answer injustice rather than causing it. Plans by an open government which are corrupt, cause injustice or do not alleviate suffering are revealed and so opposed before implementation. If unjust plans cannot reach implementation then government will be a force for justice.
    }
}

In the ◊link[freezing-chapter]{last} two ◊link[undesirable-chapter]{chapters} we looked at the issues with digital payments, but when you think about donations you wouldn't assume they have the same problems as payments have. For example if you want to donate money to a charity, like ◊link[charity-water]{Charity Water}, they don't have to be worried of ◊link[charge-back-fraud]{charge back fraud}.◊sn{charity-fees} But the same problem with third-party censorship is relevant here as well.

◊ndef["charity-fees"]{
    Most payment processors have lower fees for charities, but they're still much more expensive than the ◊link[cheaper-faster]{low cryptocurrency fees}.
}

◊(define cheaper-faster "/cheaper_faster.html#cryptocurrency-fees")

Think of journalism in oppressive regimes while placing their lives on line. A third party might block donations or break the journalistic anonymity making donations for truth-seeking journalists very difficult.


◊subhead{Censorship is real}

A ◊link[bbc-tiananmen]{powerful example} of the dangers of censorship is the ◊link[wikipedia-tiananmen]{Tiananmen Square Massacre} in China 1989. It was a student led protest which was forcefully suppressed by hundreds of thousands military troops, killing large numbers of demonstrators and bystanders.

◊qt[#:author "Margaret Holt"
    #:src "BBC: Tiananmen 30 years on - China's great act of 'forgettance'"
    #:url "https://www.bbc.com/news/blogs-china-blog-48455582"]{
    "This gun-happy soldier, he's firing indiscriminately into the crowd and three young girl students knelt down in front of him and begged him to stop firing," she says quietly, gesturing with her hands in a praying motion.

    "And he killed them."
}

China has gone to extreme lengths to censor these events.  Twitter is censored by default in China◊sn{china-censorship} and anyone caught tweeting on Tiananmen can ◊link[twitter-detained]{get you arrested}.◊sn{reeducation} On the anniversary they have police escorts for the victim's families who wants to visit the graves---to keep them away from journalists.

◊ndef["reeducation"]{
    You'll probably be placed in a “◊link[china-reeducation]{re-education camp}”, they're quite similar to camps in Stalin's Soviet or Hitler's Germany.
}


◊ndef["china-censorship"]{
    The ◊link[china-censorship]{censorship in China} is absolutely massive. They try to scan and filter all internet traffic in China, often called “◊link[great-firewall-of-china]{The Great Firewall of China}”, and they're doing a pretty good job. For example they completely ban Facebook, Twitter, Snapchat, Google, Youtube, Wikipedia, WikiLeaks, Netflix and ◊strong{many} others. It might be possible to work around the restrictions using a VPN, but many doesn't work in China either.
}

◊(define china-censorship "https://en.wikipedia.org/wiki/Censorship_in_China")
◊(define great-firewall-of-china "https://www.howtogeek.com/162092/htg-explains-how-the-great-firewall-of-china-works/")


◊(define bbc-tiananmen "https://www.bbc.com/news/blogs-china-blog-48455582")
◊(define wikipedia-tiananmen "https://en.wikipedia.org/wiki/Tiananmen_Square_protests_of_1989")
◊(define twitter-detained "https://pen.org/press-release/deng-chuanbin-arrest/")
◊(define china-reeducation "https://www.amnesty.org/en/latest/news/2018/09/china-up-to-one-million-detained/")
◊(define wikileaks "https://wikileaks.org/")
◊(define charge-back-fraud "/cheaper_faster.html#charge-back-fraud")
◊(define charity-water "https://www.charitywater.org/")


◊subhead{A short history of WikiLeaks}

◊link[wikileaks]{WikiLeaks} is a very relevant example for us concerned with uncensorable payments. This is ◊strong{not} a glorification of WikiLeaks, in fact they have done some ◊link[wikileaks-immoral]{immoral things} like endangering individuals via their leaks. Instead it's an example of how exposing government atrocities can lead to your donations being censored---nothing more and nothing less.

I will bring up the events surrounding Julian Assange, because they are relevant to the story of government abuse, but it's not about him or any other person in particular. Even if Julian Assange is guilty of rape it does not change the importance of WikiLeaks as a concept, which goes above individuals.◊sn{association-fallacy}

◊ndef["association-fallacy"]{
    Trying to discredit WikiLeaks by discrediting Assange is ◊em{◊link[association-fallacy]{guilt by association}}, a logical fallacy. It's like saying "Ghandi was a pedophile, therefore everything he did should be disregarded."
}


◊(define association-fallacy "https://en.wikipedia.org/wiki/Association_fallacy")
◊(define wikileaks-immoral "https://www.wired.com/2016/07/wikileaks-officially-lost-moral-high-ground/")


◊section[#:class "wikileaks"]{

◊entry["Beginning"
        #:date "Oct 4, 2006"]{
    xyz

    ◊; https://www.technologyreview.com/s/421949/everything-you-need-to-know-about-wikileaks/
    ◊; https://medium.com/@joshuashawnmichaelhehe/a-history-of-wikileaks-9332028f37fd
}


◊entry["The Chelsea Manning leaks"
       #:date "October 22, 2010"]{

    ◊ol{
        ◊li{Helicopter attack}
        ◊li{US avoided UK cluster bomb ban}
        ◊li{Abu Omar abduction}
        ◊li{Executions of civilians, an infant and an elderly}
        ◊li{Iraq civilian death toll}
        ◊li{The Arab Spring (skip?)}
        ◊li{Saudi urged US to attack Iran (skip?)}
    }

    ◊; Helicopter attack
    ◊; https://www.youtube.com/watch?v=-Hx-jA2m_hY

    ◊; https://www.middleeasteye.net/news/chelsea-manning-seven-leaks-rocked-middle-east
}


◊entry["Sexual assault allegations against Julian Assange"
        #:date "Nov, 2010"]{

}


◊entry["PayPal freezes WikiLeaks donations"
       #:date "Dec 4, 2010"]{

    ◊;https://wikileaks.org/PayPal-freezes-WikiLeaks-donations.html
    ◊;https://www.wired.com/2010/12/paypal-wikileaks/

    ◊; The banking blockade against WikiLeaks was subsequently found to be illegal in the European courts and most of the companies involved, including PayPal, Visa and MasterCard, have conceded defeat.
    ◊;https://wikileaks.org/Protesters-against-WikiLeaks.html

    ◊qt[#:url "https://wikileaks.org/Protesters-against-WikiLeaks.html"
        #:author "WikiLeaks"
        #:date "Nov, 2014"]{
    The banking blockade against WikiLeaks was subsequently found to be illegal in the European courts and most of the companies involved, including PayPal, Visa and MasterCard, have conceded defeat.
    }

}


◊entry["WikiLeaks accepts Bitcoin"
       #:date "Jun 14, 2011"]{

    ◊;https://mobile.twitter.com/wikileaks/status/80774521350668288
    ◊;https://www.coindesk.com/assange-bitcoin-wikileaks-helped-keep-alive

}


◊entry["Assange receives asylum from Ecuador"
       #:date "June, 2012"]{
}


◊entry["More leaks"]{

    ◊; Vault 7
    ◊; CIA hacking tools
    ◊ol{
        ◊li{CIA hackers targeted smartphones and computers.}
    }
    ◊;https://wikileaks.org/ciav7p1/#PRESS

    ◊;release of the Vatican letters.

}

◊entry["Assange arrested on behalf of the United States authorities"
       #:date "April 11, 2019"]{

◊;https://www.theguardian.com/media/live/2019/apr/11/wikileaks-founder-julian-assange-arrested-at-the-ecuadorean-embassy-live-updates


}

}


◊(define (entry title #:date [date #f] . text)
   (define xdate (if date
                     `(div ((class "date")) ,date)
                     ""))
   `(div ((class "entry"))
      (div ((class "txt"))
        (div ((class "header"))
          (h3 ,title)
          ,xdate)
        ,@text)))



◊subhead{Hiding the skeleton in the closet}

◊;https://news.ycombinator.com/item?id=19632449
◊;https://www.lrb.co.uk/v36/n05/andrew-ohagan/ghosting


◊(define freezing-chapter "freezing_of_merchant_accounts.html")
◊(define undesirable-chapter "undesirable_businesses.html")


◊subhead{Cryptocurrency donations cannot be prevented}

While the US government was able to coerce payment processors to drop WikiLeaks (temporarily) they could never prevent Bitcoin donations. The best they can do is try to stop WikiLeaks from exchanging to fiat by coercing exchanges instead. But that's easier to work around, for example by selling bitcoins in person for cash or by avoiding fiat altogether.◊sn{hosting}

◊ndef["hosting"]{
    It's easy to pay for web hosting using only cryptocurrencies for example.
}

Even China, with the world's largest internet censorship, cannot censor cryptocurrency transactions. Even if they took control of a majority of Bitcoin's hashrate (most mining is currently located in China) and used that power to censor certain addresses, that would create ◊link[forks]{two separate coins} and WikiLeaks could continue using the other one.◊sn{contentious} Or WikiLeaks could use another cryptocurrency entirely, one with hashrate outside of China or one where miners can't tell where the transactions are going.

◊ndef["contentious"]{
    If China were to take over the Bitcoin network most probably the community would recognize it as an attack and agree to move on with new rules which neutralize the attack. This is absolutely the worst attack possible against a cryptocurrency, called a ◊em{51% attack}.
}

◊(define forks "/how_do_cryptocurrencies_work.html#network-upgrades-and-new-cryptocurrencies")

