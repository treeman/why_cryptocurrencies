#lang pollen

◊(define-meta title "Uncensorable donations")
◊;(define-meta subtitle "Avoids middleman fees and settles quickly")
◊(define-meta updated "2019-06-07T07:38:13+02:00")
◊(define-meta uuid "f35cab59-0629-4173-9de0-a07a0eef33dc")

◊epigraph{
    ◊qt[#:author "WikiLeaks"
        #:url "https://wikileaks.org/wiki/Draft:About"]{
        Open government is strongly correlated to quality of life. Open government is compelled to answer injustice rather than causing it. Plans by an open government which are corrupt, cause injustice or do not alleviate suffering are revealed and so opposed before implementation. If unjust plans cannot reach implementation then government will be a force for justice.
    }
}

When you think about donations, you wouldn't assume they have the same problems as payments have. For example if you want to donate money to a charity, like ◊link[charity-water]{Charity Water}, they don't have to be worried of ◊link[charge-back-fraud]{charge back fraud}.

But there are certain types of donations where having a trusted third party is detrimental: think of journalism in oppressive regimes working against censorship while placing their lives on line. A third party might block donations or break the journalistic anonymity making donations for truth-seeking journalists impossible.

A ◊link[bbc-tiananmen]{powerful example} of the dangers of censorship is the ◊link[wikipedia-tiananmen]{Tiananmen Square Massacre} in China 1989. It was a student led protest which was forcefully suppressed by hundreds of thousands military troops, killing large numbers of demonstrators and bystanders.

◊qt[#:author "Margaret Holt"
    #:src "BBC: Tiananmen 30 years on - China's great act of 'forgettance'"
    #:url "https://www.bbc.com/news/blogs-china-blog-48455582"]{
    "This gun-happy soldier, he's firing indiscriminately into the crowd and three young girl students knelt down in front of him and begged him to stop firing," she says quietly, gesturing with her hands in a praying motion.

    "And he killed them."
}

China has gone to extreme lengths to censor these events.  Twitter is censored by default in China◊sn{china-censorship} and anyone caught tweeting on Tiananmen can ◊link[twitter-detained]{get you arrested}.◊sn{reeducation} On the anniversary they have police escorts for the victim's families who wants to visit the graves, to keep them away from journalists.

◊ndef["reeducation"]{
    You'll probably be placed in a “◊link[china-reeducation]{re-education camp}”, they're quite similar to camps in Stalin's Soviet or Hitler's Germany.
}


◊ndef["china-censorship"]{

}

But I think there's a more relevant example for us concerned with uncensorable payments. This is a story about ◊link[wikileaks]{WikiLeaks}.


◊(define bbc-tiananmen "https://www.bbc.com/news/blogs-china-blog-48455582")
◊(define wikipedia-tiananmen "https://en.wikipedia.org/wiki/Tiananmen_Square_protests_of_1989")
◊(define twitter-detained "https://pen.org/press-release/deng-chuanbin-arrest/")
◊(define china-reeducation "https://www.amnesty.org/en/latest/news/2018/09/china-up-to-one-million-detained/")
◊(define wikileaks "https://wikileaks.org/")
◊(define charge-back-fraud "/cheaper_faster.html#charge-back-fraud")
◊(define charity-water "https://www.charitywater.org/")


◊subhead{WikiLeaks}

Oct 4, 2006

◊; https://www.technologyreview.com/s/421949/everything-you-need-to-know-about-wikileaks/
◊; https://medium.com/@joshuashawnmichaelhehe/a-history-of-wikileaks-9332028f37fd


◊subhead{The Chelsea Manning leaks}

October 22nd, 2010

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


◊subhead{Sexual assault allegations against Julian Assange}

Nov, 2010


◊subhead{PayPal freezes WikiLeaks donations}

Dec 4, 2010

◊;https://wikileaks.org/PayPal-freezes-WikiLeaks-donations.html
◊;https://www.wired.com/2010/12/paypal-wikileaks/

◊; The banking blockade against WikiLeaks was subsequently found to be illegal in the European courts and most of the companies involved, including PayPal, Visa and MasterCard, have conceded defeat.
◊;https://wikileaks.org/Protesters-against-WikiLeaks.html

◊qt[#:url "https://wikileaks.org/Protesters-against-WikiLeaks.html"
    #:author "WikiLeaks"
    #:date "Nov, 2014"]{
The banking blockade against WikiLeaks was subsequently found to be illegal in the European courts and most of the companies involved, including PayPal, Visa and MasterCard, have conceded defeat.
}


◊subhead{WikiLeaks accepts Bitcoin}

Jun 14, 2011

◊;https://mobile.twitter.com/wikileaks/status/80774521350668288
◊;https://www.coindesk.com/assange-bitcoin-wikileaks-helped-keep-alive


◊subhead{Asylum from Ecuador}

June, 2012


◊subhead{More leaks}

◊; Vault 7
◊; CIA hacking tools
◊ol{
    ◊li{CIA hackers targeted smartphones and computers.}
}
◊;https://wikileaks.org/ciav7p1/#PRESS

◊;release of the Vatican letters.

◊subhead{Arrested on behalf of the United States authorities}

April 11, 2019

◊;https://www.theguardian.com/media/live/2019/apr/11/wikileaks-founder-julian-assange-arrested-at-the-ecuadorean-embassy-live-updates


◊subhead{Treatment of whistle blowers}

◊;https://news.ycombinator.com/item?id=19632449
◊;https://www.lrb.co.uk/v36/n05/andrew-ohagan/ghosting
