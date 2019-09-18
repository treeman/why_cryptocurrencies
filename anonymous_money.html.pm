#lang pollen

◊(define-meta title "Anonymous money")
◊(define-meta subtitle "Reclaim your financial privacy with cryptocurrencies")
◊(define-meta updated "2019-09-17T07:19:33+02:00")
◊(define-meta uuid "9f90581c-24f1-4653-9b4a-d86a9ec9e365")


◊epigraph{
  ◊qt[#:author "Edward Snowden" #:date "May 21, 2015"
      #:url "https://www.reddit.com/r/IAmA/comments/36ru89/just_days_left_to_kill_mass_surveillance_under/crglgh2/"]{
    Arguing that you don't care about the right to privacy because you have nothing to hide is no different than saying you don't care about free speech because you have nothing to say.
  }
}

Privacy and anonymity is an important issue in the modern world and there are countless examples of privacy violations everywhere. Before we get to some of them we first need to address why privacy matter, because today government officials, company owners, the news and regular people all ask the same questions:

But why privacy? Why would you want to stay anonymous? What are you hiding? Are you criminal?◊sn{summary-discussion}

◊ndef["summary-discussion"]{
    Privacy discussions can often be summarized to:

    ◊span[#:class "talking"]{
      ◊trow{Why do I need privacy? I have nothing to hide.}
      ◊trow{Then pull your pants down, give me a dickpick, your email password and your credit card numbers.}
    }

    I can't promise I'll do better but I'll try. At least I don't have anyone except myself to argue with, if that makes a difference...
}

◊(define (trow . args)
  `(span ((class "row")) ,@args))


◊subhead{You do have something to hide}

When people are alone and relaxed they do things they otherwise wouldn't. Maybe you like to dance when you're alone, sing in the shower or scratch yourself somewhere... nice. If you're caught in the act you immediately stop what we're doing and feel embarrassed.

If you don't recognize the situation please watch the scene where Hugh Grant plays the ◊link[love-actually-dance]{dancing prime minister in Love Actually}. Even if you do know what I'm talking about the scene's so good you should watch it anyway.

◊todo{IMG of a dancing dude embarrassing himself}

◊(define love-actually-dance "https://www.youtube.com/watch?v=zcgxBHBsl-4")

People may say privacy don't matter yet their actions tell a different story. For example Facebook's founder Mark Zuckerberg has said that privacy is ◊link[zuckerberg-privacy-not-norm]{no longer a social norm}, and then he buys up four homes surrounding his home ◊link[zuckerberg-buy-privacy]{because he wants privacy}.

Caring about privacy is a natural instinct---for good reason. It's not just about avoiding embarrassment, it's also for your own personal safety. In fact privacy is closely related to security:

◊ol{
  ◊li{Identity theft can ruin your life.}
  ◊li{Criminals target rich people.}
  ◊li{Crime of opportunity.}
}

Administration Using the Full Power of the Surveillance State on Whistleblowers
<https://news.ycombinator.com/item?id=20615084>

◊(define identity-theft "https://www.forbes.com/sites/laurashin/2014/11/18/someone-had-taken-over-my-life-an-identity-theft-victims-story/")


"Fear" to force people to be as unassuming as possible, to avoid interest. We change our behavior when being watched.

◊qt[#:author "George Orwell" #:src "1984" #:quote-src #t]{
    There was of course no way of knowing whether you were being watched at any given moment. How often, or on what system, the Thought Police plugged in on any individual wire was guesswork. It was even conceivable that they watched everybody all the time.
}

While crude it cuts right to the chase: you do in fact have things which are best to hide. Your passwords and credit card numbers◊sn{cc-numbers} is a good example: you should hide them because of security reasons. We lock our door for both privacy and security reasons.


◊(define zuckerberg-buy-privacy "https://www.inquisitr.com/989057/facebooks-zuckerberg-buys-his-neighborhood-because-get-this-he-wants-privacy/")
◊(define zuckerberg-privacy-not-norm "https://www.theguardian.com/technology/2010/jan/11/facebook-privacy")

◊ndef["cc-numbers"]{

}

After all we don't have curtains or blinders on our windows because we do something illegal, it's because we like 

◊ol{
  ◊li{You do in fact have something to hide.}
  ◊li{Security and privacy are related.}
  ◊li{The right to privacy means you have a ◊em{choice}.}
}


◊subhead{Others have very important things to hide}

Now even if you still don't think you have anything to hide, remember that others do. If we give up our right to privacy then everyone have to give up theirs as well.

Here are some examples where lack of economic privacy is directly harmful for certain individuals:

◊ol{
  ◊li{Unwanted pregnancies.

      There was a story that went viral years ago on how Target ◊link[teenage-pregnancy]{predicted a teenage pregnancy and exposed it to her father}. In a normal western household it might not be that big of a deal, but remember that ◊link[murder-family-honor]{thousands of women are killed each year} for family "honor". Often for much less than a teenage pregnancy, such as ◊link[dowry-murder]{not getting paid enough for marrying the bride}.
  }
  ◊li{Sexual preferences.

    While homosexuality is becoming more accepted it's still ◊link[gay-illegal]{illegal in some countries} where you might face execution. Similar to the story of the girl's pregnancy above, having a history of your purchases might expose you.

    There is also nothing wrong with having a fetish and engaging in strange sexual fantasies in your own home, but maybe you don't want your neighbourhood to know you bought a vibrating horse dildo.◊sn{porn-story}

    ◊ndef["porn-story"]{
        I read a story long ago, but I can't remember if it was real or made up.

        It was about a couple and their son who liked to play with their neighbours. They were happy to let him, the neighbours were really friendly, and they liked to spend time with them too. But one day they found an amateur porn DVD---the neighbours apparently liked to create homemade porn.

        The DVD never harmed them, and their son didn't know about it, but they never allowed their son to visit the neighbours anymore and the couple stopped spending time with them because it "felt weird".

        I guess the point of the story is some things are best left unknown.
    }
  }
  ◊li{A cause for oppression.

    In China if you're end up on the ◊link[china-social-credit]{wrong side of their social credit system}, you're banned from spending on "luxuries". If prospective business partners or customers discovers your status as a "deadbeat" you might get shunned and your hope of climbing out of your situation disappear. Keeping your economy private to outsiders would be a great help.
  }
}


◊(define teenage-pregnancy "https://www.nytimes.com/2012/02/19/magazine/shopping-habits.html?pagewanted=all&_r=0")
◊(define murder-family-honor "https://www.nationalgeographic.com/culture/2002/02/thousands-of-women-killed-for-family-honor/")
◊(define dowry-murder "https://en.wikipedia.org/wiki/Dowry_system_in_India#Dowry_murder")
◊(define gay-illegal "https://www.theguardian.com/world/2016/jun/21/gay-lgbt-muslim-countries-middle-east")
◊(define china-social-credit "https://www.inkstonenews.com/china/chinas-13-million-discredited-individuals-face-discrimination-thanks-social-credit-system/article/3003319")

As Snowden's quote in the beginning of the chapter says: just because you choose not to exercise your right, why should that mean we remove the right for others? Privacy should be a ◊em{choice}---not something that's chosen for you.


◊subhead{We're living in the Stasi's wet dream}

◊ol{
  ◊li{Snowden showed...}
  ◊li{Google, Facebook, everyone are selling our data}
  ◊li{Credit card companies know everything about us and are selling our data}
}

Credit cards have a privacy problem
◊link{https://news.ycombinator.com/item?id=20800115}

Administration Using the Full Power of the Surveillance State on Whistleblowers
◊link{https://news.ycombinator.com/item?id=20615084}

◊link{https://www.cbc.ca/news/business/banking-information-shared-with-third-parties-1.5102931}

◊; https://news.bitcoin.com/snowden-us-seizing-my-book-revenue-is-good-for-bitcoin/


◊subhead{Boiling a frog}

Where has this slippery slope lead us?


◊subhead{Cryptocurrencies are anonymous}

◊; Credit cards have a privacy problem
◊; https://news.ycombinator.com/item?id=20800115

◊; Supporting finanical privacy makes me an extremist
◊; https://www.coingecko.com/buzz/erik-voorhees-supporting-financial-privacy-extremist

◊; I have I don't have anything to hide
◊; https://www.privacytools.io/

◊; TED talk, very good
◊; https://www.ted.com/talks/glenn_greenwald_why_privacy_matters

