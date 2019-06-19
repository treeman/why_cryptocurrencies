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

    First I must caution you. It's very easy to become numb when you read about what I will write about. The sheer amount of horror is enough to overwhelm you and might cause your brain to suppress your emotions, maybe out of self-defense. But try to remember that this happened to real people, it's not just a mass of text and numbers. Don't relegate this as just another statistic.

    Chelsea Manning (formerly Bradley Manning) is a former soldier of the United States who provided WikiLeaks with nearly 750,000 military and diplomatic documents. Some of the content was absolutely shocking and caused global outrage, I've tried to pick out some of the most important ones:

    ◊ol{
      ◊leak["Collateral murder" #:url collateral-murder-wikileaks]{

        WikiLeaks uploaded a video of a Baghdad helicopter attack in July 12, 2007 with the title "Collateral murder". It's a video of how an attack helicopter kills a dozen (innocent) people, including two Reuters news staff.

        Here are some ◊link[collateral-murder-transcripts]{transcripts} of the ◊link[collateral-murder-full]{full video} (although at 2019-06-19 the timestamps are slightly off, I've tried to match them up better):

        ◊todo{+24 sec delay or something?}

        ◊div[#:class "transcript-wrapper"]{

          ◊transcript{
              02:10  He's got an RPG [Rocket Propelled Grenade]?
              02:11  All right, we got a guy with an RPG.
          }

          Except now we know it's not an RPG but a camera held by a Reuters journalist.

          ◊transcript{
              03:23  All right, hahaha, I hit [shot] 'em...
              ...
              04:31  Oh, yeah, look at those dead bastards.
              04:36  Nice.
              ...
              06:33  Come on, buddy.
              06:38  All you gotta do is pick up a weapon.
          }

          After killing a bunch of people they're looking at an injured person crawling on the ground wanting him to pick up a weapon---so they're allowed to kill him.

          ◊transcript{
              07:36  Picking up the wounded?
              07:38  Yeah, we're trying to get permission to engage.
              07:41  Come on, let us shoot!
          }

          Then a van enters the scene and they're rushing in to help the wounded. But now the rules aren't that important anymore---they want to shoot!

          ◊transcript{
              10:11  Oh yeah, look at that. Right through the windshield!
              10:14  Ha ha!
              10:16  All right. There were uh approximately four to five individuals in that truck, so I'm counting about twelve to fifteen.
          }

          There were two children behind that windshield who got seriously injured. Their father was killed for trying to help the wounded on the street.

        }



        ◊; https://www.theguardian.com/world/2010/apr/05/wikileaks-us-army-iraq-attack

        When Reuters tried to get answers for how their reporters died the U.S. military claimed they didn't know how they got killed, and that all dead were insurgents. They also didn't know how the children got injured, despite them having the video footage.

        Afterwards the military investigated the issue and concluded that the actions of the soldiers where in accordance with the law of armed conflict and its own "Rules of Engagement".
      }

      ◊leak["US avoided UK cluster bomb ban"]{

        Clusterbombs
      }
      ◊leak["Abu Omar abduction"]{
      }
      ◊leak["Execution of children"
            #:url "https://www.mcclatchydc.com/news/special-reports/article24696685.html"]{

        In 2006, a group of U.S. soldiers entered a house in Iraq where they executed at least 10 civilians. This included an infant and four other children---all five years or younger---and elderly women. They then called in an airstrike to cover up the evidence, but postmortems showed they had been handcuffed and shot in the head.

        We're quick to call them terrorists, but viewed from another angle the U.S. soldiers are the terrorists. Just imagine if foreign soldiers would come to your house and handcuff your mother, your wife and your little baby girl... And execute them?

        ◊qt[#:author "Unknown"]{
            One man's terrorist is another man's freedom fighter
        }
      }
      ◊leak["Iraq civilian death toll"]{
      }

    }

    ◊; Helicopter attack
    ◊; https://www.youtube.com/watch?v=-Hx-jA2m_hY
    ◊; 17 min version:
    ◊; https://www.youtube.com/watch?time_continue=1&v=5rXPrfnU3G0
    ◊; Full version:
    ◊; https://www.youtube.com/watch?time_continue=820&v=is9sxRfU-ik

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


  ◊entry["Chelsea Manning court-martial"
         #:date "July, 2013"]{
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

    Chelsea Manning was also jailed again for her refusal to testify against Julian Assange.

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

◊(define (leak title #:url [url #f] . text)
   (define xtitle (if url
                      (link url title)
                      title))
   `(li ((class "leak"))
      (div [[class "title"]] ,xtitle)
      ,@text))

◊(define (transcript . rows)
   (define (make-row row)
     (if (string=? row "\n")
       ""
       (let ((cols (string-split row "  ")))
         `(div ((class "row"))
            (span ((class "time")) ,(car cols))
            (span ((class "txt")) ,@(cdr cols))))))
   `(div ((class "transcript"))
      ,@(map make-row rows)))

◊(define collateral-murder-wikileaks "https://collateralmurder.wikileaks.org/")
◊(define collateral-murder-17 "https://www.youtube.com/watch?time_continue=1&v=5rXPrfnU3G0")
◊(define collateral-murder-full "https://www.youtube.com/watch?time_continue=820&v=is9sxRfU-ik")
◊(define collateral-murder-transcripts "https://collateralmurder.wikileaks.org/en/transcript.html")


◊subhead{Hiding the skeleton in the closet}

◊;https://news.ycombinator.com/item?id=19632449
◊;https://www.lrb.co.uk/v36/n05/andrew-ohagan/ghosting


◊(define freezing-chapter "/freezing_of_merchant_accounts.html")
◊(define undesirable-chapter "/undesirable_businesses.html")


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

