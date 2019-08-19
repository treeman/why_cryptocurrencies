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

In the ◊link[freezing-chapter]{last} two ◊link[undesirable-chapter]{chapters} we looked at the issues with digital payments, but when you think about donations you wouldn't assume they have the same problems as payments have. For example when donating money to a charity, like ◊link[charity-water]{Charity Water}, they don't have to be worried of ◊link[charge-back-fraud]{charge back fraud} because you're voluntarily giving them money.◊sn{charity-fees} But the same problem with third-party censorship is relevant here as well.

◊ndef["charity-fees"]{
    Most payment processors have lower fees for charities, but they're still much more expensive than the ◊link[cheaper-faster]{low cryptocurrency fees}.
}

◊(define cheaper-faster "/cheaper_faster.html#cryptocurrency-fees")

Think of journalism in oppressive regimes while placing their lives on line. A third party might block donations or break the journalistic anonymity making donations for truth-seeking journalists very difficult.


◊subhead{Censorship is real}

A ◊link[bbc-tiananmen]{powerful example} of the dangers of censorship is the ◊link[wikipedia-tiananmen]{Tiananmen Square Massacre} in China 1989. It was a student led protest which was forcefully suppressed by hundreds of thousands military troops, killing large numbers of demonstrators and bystanders.◊sn{hong-kong}

◊ndef["hong-kong"]{
    Some have ◊link[hong-kong-protests]{drawn parallels} between then recent protests in Hong Kong and Tiananmen. But with smartphones everywhere it would be close to impossible to cover up a similar massacre.
}


◊qt[#:author "Margaret Holt"
    #:src "BBC: Tiananmen 30 years on - China's great act of 'forgettance'"
    #:url "https://www.bbc.com/news/blogs-china-blog-48455582"]{
    "This gun-happy soldier, he's firing indiscriminately into the crowd and three young girl students knelt down in front of him and begged him to stop firing," she says quietly, gesturing with her hands in a praying motion.

    "And he killed them."
}

China has gone to extreme lengths to cover up these events. Twitter is censored by default in China◊sn{china-censorship} and anyone caught tweeting about Tiananmen might ◊link[twitter-detained]{get arrested}.◊sn{reeducation} On the anniversary they have police escorts for the victim's families who wants to visit the graves---to keep them away from journalists.

◊ndef["reeducation"]{
    You'll probably be placed in a “◊link[china-reeducation]{re-education camp}”, they're quite similar to camps in Stalin's Soviet or Hitler's Germany.
}


◊ndef["china-censorship"]{
    The ◊link[china-censorship]{censorship in China} is absolutely massive. They try to scan and filter all internet traffic in China, often called “◊link[great-firewall-of-china]{The Great Firewall of China}”, and they're doing a pretty good job. For example they completely ban Facebook, Twitter, Snapchat, Google, Youtube, Wikipedia, WikiLeaks, Netflix and ◊strong{many} others. It might be possible to work around the restrictions using a VPN, but many don't work in China either.
}

◊(define china-censorship "https://en.wikipedia.org/wiki/Censorship_in_China")
◊(define great-firewall-of-china "https://www.howtogeek.com/162092/htg-explains-how-the-great-firewall-of-china-works/")
◊(define hong-kong-protests "https://thefederalist.com/2019/07/25/hong-kong-protest-beijings-new-tiananmen-square/")
◊(define bbc-tiananmen "https://www.bbc.com/news/blogs-china-blog-48455582")
◊(define wikipedia-tiananmen "https://en.wikipedia.org/wiki/Tiananmen_Square_protests_of_1989")
◊(define twitter-detained "https://pen.org/press-release/deng-chuanbin-arrest/")
◊(define china-reeducation "https://www.amnesty.org/en/latest/news/2018/09/china-up-to-one-million-detained/")
◊(define wikileaks "https://wikileaks.org/")
◊(define charge-back-fraud "/cheaper_faster.html#charge-back-fraud")
◊(define charity-water "https://www.charitywater.org/")


◊subhead{A short history of WikiLeaks}

◊link[wikileaks]{WikiLeaks} is a very relevant example for us concerned with uncensorable payments. We will focus on the Chelsea Manning leaks and the aftermath, where WikiLeaks got their donation channels shut down.

I will bring up the events surrounding Julian Assange, because they are relevant to the story of government abuse, but it's not about him or any other person in particular. Even if Julian Assange is guilty of rape it does not change the importance of WikiLeaks as a concept, which goes above individuals.◊sn{association-fallacy}

This is ◊strong{not} a glorification of WikiLeaks, in fact they have done some ◊link[wikileaks-immoral]{immoral things} like endangering individuals. Instead it's an example of how exposing government atrocities can lead to your donations being censored---nothing more and nothing less.

◊ndef["association-fallacy"]{
    Trying to discredit WikiLeaks by discrediting Assange is ◊em{◊link[association-fallacy]{guilt by association}}---a logical fallacy. It's like saying "Ghandi was a pedophile, therefore everything he did should be disregarded."
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

    First I must caution you: it's very easy to become numb when you read about these leaks. The sheer amount of horror is enough to overwhelm you and might cause your brain to suppress your emotions, maybe out of self-defense. But try to remember that this happened to real people---it's not just a mass of text and numbers. Please don't relegate this as just another forgettable statistic.

    Chelsea Manning (formerly Bradley Manning) is a former soldier of the United States who provided WikiLeaks with nearly 750,000 military and diplomatic documents. Some of the content was absolutely shocking and caused global outrage, I've tried to pick out some notable leaks◊sn{more-leaks}:

    ◊ndef["more-leaks"]{
        It's hard to do justice as there are ◊strong{many} more leaks, I find it overwhelming. See for example:

        1. U.S. avoided the U.K. cluster bomb ban
        ◊; https://www.theguardian.com/world/2010/dec/01/wikileaks-cables-cluster-bombs-britain
        2. Abu Omar abduction
        ◊; https://www.spiegel.de/international/europe/cia-rendition-case-us-pressured-italy-to-influence-judiciary-a-735268.html
        3. The Arab Spring
        4. Saudi urged U.S. to attack Iran
    }

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

      ◊leak["Execution of children"
            #:url "https://www.mcclatchydc.com/news/special-reports/article24696685.html"]{

        In 2006, a group of U.S. soldiers entered a house in Iraq where they executed at least 10 people (9 civilians). This included an infant and four other children---all five years or younger---and elderly women. They then called in an airstrike to cover up the evidence, but postmortems showed they had been handcuffed and shot in the head.

        We're quick to call them terrorists, but viewed from another angle the U.S. soldiers are the terrorists. Just imagine if foreign soldiers came to your house and executed your mother, your wife and your 6 months baby...

        ◊; Better link?
        ◊; http://alexanderhiggins.com/wikileaks-cable-suggests-the-us-executed-handcuffed-women-and-children-under-5-including-an-infant/

        The soldiers were cleared of any wrongdoing by the U.S military, after they initially denied the events.

        ◊qt[#:author "Unknown"]{
            One man's terrorist is another man's freedom fighter
        }

      }

      ◊leak["Civilian deaths in Iraq"]{

        While U.S. officials had previously said no logs existed of civilian deaths in Iraq leaked cables told another story. 66,081 civilian deaths had been logged out of a total of 109,000 deaths between 2004 and 2009, that's 60.6% innocent people---a horrifyingly bad ratio.◊sn{wtc}

        Leaked cables also indicated that U.S. authorities had failed to investigate hundreds of reports of torture, rape, abuse and murder by Iraqi security officials.
      }

      ◊ndef["wtc"]{
          66 thousand innocent people dead in five years. That's like 22 World Trade center attacks (where 2,977 people died), more than four a year.
      }

    }

    Now I don't know about you, but I feel upset about this. Countless of civilians killed---while soldiers are laughing---and systematic cover-ups to hide it all.◊sn{purpose}

    ◊ndef["purpose"]{
        You just can't help but wonder---for what purpose? Imaginary nuclear weapons, bringing democracy and "peace" to Iraq, helping U.S. allies or simply needing a purpose for their massive war machine?
    }

    To me Chelsea Manning is a hero for bringing this to light. Yet how was she thanked? Like all whistleblowers she was made an example of: she was court-martialed and sentenced to 35 years in prison.




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

    Shortly after the massive leaks Julian Assange was accused of sexual assault in Sweden. The timing might be an extraordinary coincidence---like the Gods poking fun at us---or if you're a conspiracy theorist you might say they're manufactured by the U.S. government, in a way to reach Julian Assange.
  }


  ◊entry["PayPal freezes WikiLeaks donations"
         #:date "Dec 4, 2010"]{

    A month later ◊link[paypal-freezes-wikileaks]{PayPal freezes WikiLeaks donations} with the reason:

    ◊qt{
        Our payment service cannot be used for any activities that encourage, promote, facilitate or instruct others to engage in illegal activity.
    }

    Even if you don't like conspiracy theories, it's not a stretch to say the U.S. government put pressure on PayPal in their effort to shut down WikiLeaks.

    ◊;https://wikileaks.org/PayPal-freezes-WikiLeaks-donations.html
    ◊;https://www.wired.com/2010/12/paypal-wikileaks/
  }

  ◊entry["Banking blockade"
         #:date "Dec 7, 2010"]{
    This further developed into a ◊link[banking-blockade]{Banking Blockade} which the Bank of America, VISA, MasterCard and Western Union also joined. WikiLeaks claim this destroyed 95% of their revenue and they had to resort to cash reserves.

    The blockade was later ◊link[illegal-blockade]{found to be illegal} and today WikiLeaks again accept donations via PayPal and credit cards, but they suffered large damage at the crucial time when the world was in uproar over the leaks.
  }


  ◊entry["WikiLeaks accepts Bitcoin"
         #:date "Jun 14, 2011"]{

    After being shunned by banks and payment processors WikiLeaks turned to Bitcoin, because nobody---not even the U.S. government---can block Bitcoin transactions.

    Why did it take over a year before WikiLeaks started accepting Bitcoin? Satoshi made this appeal in the de-facto discussion forum at the time:

    ◊qt[#:author "Satoshi"
        #:url "http://archive.fo/Gvonb#msg26999"
        #:date "Dec 5, 2010"]{
        ◊qt{
            Basically, bring it on.  Let's encourage Wikileaks to use Bitcoins and I'm willing to face any risk or fallout from that act.
        }

        No, don't "bring it on".

        The project needs to grow gradually so the software can be strengthened along the way.

        I make this appeal to WikiLeaks not to try to use Bitcoin.  Bitcoin is a small beta community in its infancy.  You would not stand to get more than pocket change, and the heat you would bring would likely destroy us at this stage.
    }

    Which ◊link[assange-bitcoin-ama-msg]{Assange cites} as the reason they put off introducing Bitcoin donations.

    ◊;https://www.reddit.com/r/technology/comments/2ghp54/i_am_julian_assange_ama_about_my_new_book_when/ckjcmyw/

    ◊;This was 6 days before Satoshi vanished from the community.

    ◊;◊qt[#:author "Satoshi"
        ◊;#:url "https://archive.fo/2acvG#msg29280"
        ◊;#:date "Dec 11, 2010"]{
        ◊;It would have been nice to get this attention in any other context.  WikiLeaks has kicked the hornet's nest, and the swarm is headed towards us.
    ◊;}

    ◊;https://mobile.twitter.com/wikileaks/status/80774521350668288
    ◊;https://www.coindesk.com/assange-bitcoin-wikileaks-helped-keep-alive
    ◊; Actual source of Assange talking about bitcoin:
    ◊; https://www.reddit.com/r/technology/comments/2ghp54/i_am_julian_assange_ama_about_my_new_book_when/

  }


  ◊entry["Assange receives asylum from Ecuador"
         #:date "June, 2012"]{

◊;https://www.theguardian.com/media/2012/jun/19/julian-assange-wikileaks-asylum-ecuador
◊;https://www.theguardian.com/media/2012/aug/16/julian-assange-ecuador-embassy-asylum-live
  }


  ◊entry["Chelsea Manning's sentence is commuted"
         #:date "Jan 17, 2017"]{

    President Barack Obama ◊link[manning-commutes]{commutes Chelsea Manning's prison sentence}. Important to note is that it only reduces her sentence, it doesn't change the fact that she was convicted.◊sn{pardon} She spent almost 7 years of her original 35 year sentence in prison.

    ◊ndef["pardon"]{
        In contrast a ◊em{pardon} would completely absolve her of any wrongdoing.
    }
  }

  ◊entry["Assange arrested on behalf of the United States authorities"
         #:date "April, 2019"]{

    Chelsea Manning was also jailed again for her refusal to testify against Julian Assange.

◊;https://www.theguardian.com/media/live/2019/apr/11/wikileaks-founder-julian-assange-arrested-at-the-ecuadorean-embassy-live-updates


  }

}


◊(define (entry title #:date [date #f] . text)
   (define xdate (if date
                     `(div ((class "date")) ,date)
                     ""))
   `(div ((class "entry"))
      (div ((class "header"))
        (h3 ,title)
        ,xdate)
      (div ((class "txt"))
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

◊(define paypal-freezes-wikileaks "https://wikileaks.org/PayPal-freezes-WikiLeaks-donations.html")
◊(define banking-blockade "https://wikileaks.org/Banking-Blockade.html")
    ◊(define illegal-blockade "https://wikileaks.org/Protesters-against-WikiLeaks.html")
◊(define assange-bitcoin-ama-msg "https://www.reddit.com/r/technology/comments/2ghp54/i_am_julian_assange_ama_about_my_new_book_when/ckjcmyw/")
◊(define manning-commutes "https://www.nytimes.com/2017/01/17/us/politics/obama-commutes-bulk-of-chelsea-mannings-sentence.html")


◊subhead{Hiding skeletons in the closet}

◊todo{Needs a better red thread}

There's a minor theme in the WikiLeaks story: It's how the U.S. government instead of admitting these horrible events, punishing the responsible and importantly making sure they never happen again---seem to do everything to cover them up.

This idea that American soldiers are unconditionally heroes, regardless of they've done, makes me both angry and sad. Donald Trump has for example expressed concerns over soldiers being prosecuted for war crimes, and ◊link[trump-pardons]{considers pardoning them}. This includes a ◊link[gallagher]{Navy Seals soldier} who (allegedly) stabbed a 15-year old defenseless kid with a knife and shot unarmed civilians. That's not a hero.

But of course this isn't a U.S. only phenomena. Just look at how Lenin and Stalin were glorified in Sovjet. Or how Genghis Khan is looked up to---despite murdering countless of people. Maybe you've heard that 1 of 200 people of all people alive today are related to Genghis Khan? That's because he raped young girls wherever he went.◊sn{dan-hitler}

◊ndef["dan-hitler"]{
    Dan Carlin, creator of the excellent ◊link[hardcore-history]{Hardcore History} podcast, brought up an interesting question: how long will it take for people to celebrate Hitler?

    It seems absurd to us now, but remember that for example Genghis Khan did similarly awful things yet there's ◊link[khan-eurovision]{a song in the 1979 Eurovision Song Contest} about him and how "all women fell for him".
}

Also here in Sweden, and in neighbouring Scandinavian countries, we have this glorified view of Vikings. But the word Viking originally refers to actions of a group; "to viking", "to pirate" or "to pillage". And pillaging means killing, stealing, raping and taking people as slaves. Not unlike the actions of the U.S. soldiers who executed children---which we find so revolting.


◊(define word-viking "https://norse-mythology.net/what-does-the-word-viking-mean/")
◊(define khan-eurovision "https://www.youtube.com/watch?v=NvS351QKFV4")
◊(define hardcore-history "https://www.dancarlin.com/hardcore-history-series/")

◊(define trump-pardons "https://www.usnews.com/news/politics/articles/2019-05-24/trump-considers-pardons-for-soldiers-accused-of-war-crimes")
◊(define gallagher "https://en.wikipedia.org/wiki/Eddie_Gallagher_(soldier)")


◊subhead{Burrying the truth will allow it to continue}

I know what some of you might say and what we others might feel: "I don't want to know about these horrible things". It's true that you'll feel better if you're unaware and you'll probably personally be better off if you act like these never happened.

But if we practice collective 'forgettance', where we all pretend these never happened, they will continue to happen. This is why what Chelsea Manning and WikiLeaks revealed about the Iraq war is so important: we're forced to confront the truth.◊sn{prevent-future}

◊ndef["prevent-future"]{
    I'm not so naive to say the leaks will prevent future atrocities---they won't. But knowledge of what actually happens is a necessary first step for change to be possible at all.
}


◊qt[#:author "George Orwell"
    #:src "1984"]{
    ... if all records told the same tale--then the lie passed into history and became truth. 'Who controls the past,' ran the Party slogan, 'controls the future: who controls the present controls the past.' ... 'Reality control', they called it: in Newspeak, 'doublethink'.
}






◊subhead{Cryptocurrency donations cannot be prevented}

While the US government was able to coerce payment processors and banks to drop WikiLeaks, they could never prevent Bitcoin donations. Even China, with the world's largest internet censorship, cannot censor cryptocurrency transactions.◊sn{china-mining} The best they can do is force exchanges to cooperate. But that can be worked around, for example by selling bitcoins in person for cash or by avoiding fiat altogether.

◊ndef["china-mining"]{
    China does have most of the Bitcoin hashrate inside their country. They could theoretically take majority control of Bitcoin's hashrate and censor transactions that way (this is the worst attack possible against a cryptocurrency, called a ◊em{51% attack}). If this happened the Bitcoin community would most likely recognize it as an attack and a chain split would happen, making existing miners worthless.
}

◊todo{How to end the chapter?}


◊(define forks "/how_do_cryptocurrencies_work.html#network-upgrades-and-new-cryptocurrencies")

◊(define freezing-chapter "/freezing_of_merchant_accounts.html")
◊(define undesirable-chapter "/undesirable_businesses.html")

◊;https://news.ycombinator.com/item?id=19632449
◊;https://www.lrb.co.uk/v36/n05/andrew-ohagan/ghosting
