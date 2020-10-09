#lang pollen

◊(define-meta title "The blind leading the blind")
◊(define-meta subtitle "We don't understand, and neither do the experts")
◊(define-meta published "2019-11-11T00:00:00+01:00")
◊(define-meta updated "2020-10-09T19:49:04+02:00")
◊(define-meta uuid "4684c5b0-9f93-479b-a8ab-165601a430c9")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Will Rogers"
      #:date "1930s"]{
    It's almost been worth ◊link[great-depression]{this depression} to find out how little our big men know.
  }
}
◊;https://books.google.co.uk/books?id=6Mdh5yuHavgC&pg=PA86&lpg=PA86&ots=vJ319cMgdc&focus=viewport&dq=%E2%80%9CIt%27s+almost+been+worth+this+depression+to+find+out+how+little+our+big+men+know.%E2%80%9D++%E2%80%95+Will+Rogers

Even though ◊def[sound-money]{sound money}---like cryptocurrencies or money backed by gold---might fix the bad incentives at the heart of the ◊link[financial_crisis]{2008 finanical crisis}, there are many arguments against it. One of the most common is we that lose the ability to influence and react to the market. For example if the economy crashes, or we think it will crash, the modern central banks might try to print money and buy things to soften the crash. This isn't possible with cryptocurrencies or gold, since they cannot be created freely.◊mn{elaciticity}

But there's a fatal flaw with this argument: it relies on being able to predict the market and to know what actions to take to move it in the direction you want. With how intricate and complex the economy is, it's an absurd assumption.

◊note-pos[#:top -9]{elaciticity}

◊ndef["elaciticity"]{
    ◊def{Elaciticity} is a nice word ◊def[legal_counterfeiting]{fractional banking} proponents have used to describe this ability. In plain English it means the ability to inflate and deflate the money supply freely.
}


◊subhead{How to become an expert}

To become an expert in a field you need a lot of dedication, effort and maybe a bit of talent,◊sn{10000h} but as Daniel Kahneman points out in his book ◊(book-link thinking-fast-and-slow-book) you also need the right environment to develop expertise:


◊(define deliberate-practice
   (x-ref
     "2019-11-11"
     "https://expertenough.com/1423/deliberate-practice"
     "Deliberate Practice What It Is and Why You Need It"))

◊ul{
    ◊li{An environment that is sufficiently regular to be predictable.}
    ◊li{An opportunity to learn these regularities through prolonged practice.}
}

For example picking stock is notoriously difficult, so difficult that in general you'll be ◊link[investing-index]{better off investing in a passive index fund than picking stock yourself}. This may not be surprising but it also applies to professional investors, most of whom under-perform compared to the index! This is because the stock market isn't regular enough to be predictable.◊sn{wicked-env}

In contrast learning how to drive a car provides an ideal learning environment. You'll get instant feedback whenever you break or use the gas pedal, when you turn the steering-wheel the car turns and you'll quickly find out if you changed gears correctly. While similar, learning how to maneuver a large ship is more difficult because of the delayed feedback.

◊note-pos[#:top -29]{10000h}
◊note-pos[#:top -13]{wicked-env}

◊ndef["10000h"]{
    There's a misunderstood myth that you only need 10,000 hours, or that you need at least 10,000 hours before you become an expert. But that's not the truth, with the right environment and ◊def[deliberate-practice]{deliberate practice} you can become an expert much faster and if you use your time inefficiently you may never become one.

    Think for example of the teenage golf prodigies who eclipse the middle-aged men---who've spent their entire lives playing golf---in no time at all.
}

◊ndef["wicked-env"]{
    There's also a "wicked" environment where you're likely to learn the wrong lesson from your experience. The example given is of a physician who tried to tried to confirm his a hypothesis for who might develop typhoid. Unfortunately he tested his hunch by palpating the patient's tongue without washing his hands, making him draw the wrong conclusion.
}

◊(define investing-index
   (x-ref
     "2019-11-11"
     "https://www.cnbc.com/2017/05/12/warren-buffett-says-index-funds-make-the-best-retirement-sense-practically-all-the-time.html"
     "Warren Buffett says index funds make the best retirement sense 'practically all the time'"))


◊subhead{The problem with planning the economy}

In ◊link[economic-planning]{economic planning} central governments make, or influence, economic decisions. There's nothing inherently bad about this and all governments do it, for example large infrastructure projects are often created by the government.  The Soviet Union ◊link[command-economy]{took this concept further} by letting the government decide what goods to produce, how much and when.

This didn't go so well, with huge queues outside almost empty stores and people having to resort to the black market for necessities. The inability to predict the market, and control the economy, is ◊link[ussr-collapse]{one of the reasons} the Soviet Union collapsed.

Because the economy is made up of millions or even billions of people, with different motivations and imperfect knowledge, it's ◊strong{extremely} hard to predict all the needs of the market. For example you need to predict larger demand for butter closer to Christmas, because people are more likely to bake.◊sn{milk} Or that the demand for fluffy toys will skyrocket, because a game called Pokémon will become unreasonably popular. You think picking stock is difficult? This is much harder.◊sn{impossible?}

◊note-pos[#:top -6]{milk}
◊note-pos[#:top -2]{impossible?}

◊ndef["milk"]{
    You also need to predict a larger demand for milk, because there are people like me who only drink milk with gingerbread.
}

◊ndef["impossible?"]{
    I do think it's an impossible task. You need to accurately predict small events that can have large effects, known as the ◊def[butterfly-effect]{Butterfly effect}.

    Not to mention ◊def[black-swan]{Black Swan} events which are by definition unpredictable. The rise of Bitcoin is one example (currently valued at above $10,000).
}

◊(define black-swan
   (x-ref
     "2019-11-11"
     "https://www.investopedia.com/terms/b/blackswan.asp"
     "Black Swan"))
◊(define butterfly-effect
   (x-ref
     "2019-11-11"
     "https://en.wikipedia.org/wiki/Butterfly_effect"
     "Wikipedia: Butterfly effect"))
◊(define economic-planning
   (x-ref
     "2019-11-11"
     "https://www.britannica.com/topic/economic-planning"
     "Economic planning"))
◊(define command-economy
   (x-ref
     "2019-11-11"
     "https://www.investopedia.com/terms/c/command-economy.asp"
     "Command Economy"))
◊(define ussr-collapse
   (x-ref
     "2019-11-11"
     "https://www.investopedia.com/articles/investing/021716/why-ussr-collapsed-economically.asp"
     "Why the USSR Collapsed Economically"))


◊subhead{Our leaders are blind}

◊qt[#:author "Citigroup CEO Chuck Prince"
    #:date "2007"]{
  When the music stops, in terms of liquidity, things will be complicated. But as long as the music is playing, you’ve got to get up and dance. We’re still dancing.
}

It's not just the Soviet Union that has problems predicting and adapting to the whims of the global economy. The financial crisis in 2008, as we discussed in the ◊link[financial_crisis]{previous chapter}, should have been obvious yet took almost everyone by surprise. Here's what the Federal Reserve had to say, merely a month before the financial meltdown:

◊qt[#:author "The Federal Reserve"
    #:date "August, 2007"
    #:url fed-rates]{
  Financial markets have been volatile in recent weeks, credit conditions have become tighter for some households and businesses, and the housing correction is ongoing.

  Nevertheless, the economy seems likely to continue to expand at a moderate pace over coming quarters, supported by solid growth in employment and incomes and a robust global economy.
}

The Federal Reserve, calling the global economy "robust", fanned the flames of the housing bubble by focusing on inflation and keeping the rate low, all the way up to the crash. They also let Lehman Brothers fail, not realizing the disaster it would create. ◊(cite-book after-the-music-stopped-book)

Maybe you feel like I'm focusing too much on the ◊link[financial_crisis]{2008 financial crisis}? Then how about their actions around the ◊link[great-depression]{Great Depression} (which were critiqued as worsening the crisis), of which the Federal Reserve chairman had this to say:

◊qt[#:author "Ben S. Bernanke, chairman of the Federal Reserve"
    #:date "2002"
    #:url bernanke]{
    Let me end my talk by abusing slightly my status as an official representative of the Federal Reserve. I would like to say to Milton and Anna: Regarding the Great Depression, you're right. We did it. We're very sorry. But thanks to you, we won't do it again.◊mn{oops}
}

◊note-pos[#:top -6]{oops}

◊ndef["oops"]{
    Oops!... you did it again.
}

This shouldn't be that surprising when you consider that the national and global economy is too irregular to be predictable, and the feedback loop is extremely long---if it even exists.  If for example the central bank lowers the interest rate, how long do we have to wait to see the effect? Days, months and maybe even years. And how do we know the economy reacted this way because of the changes to the interest rate, and not because of the trade war between the U.S. and China, Brexit or a million other reasons?◊mn{models}

These people aren't experts, simply because the environment doesn't lend itself to creating experts. The worst thing isn't that they're clueless, the worst thing is that they don't know their limitations:◊mn{actually-worst}

◊qt[#:author "IMF:s financial advisor Jose Viñals"
    #:date "2016"
    #:url imf-jose]{
  Although the experience with negative nominal interest rates is limited, we tentatively conclude that overall, they help deliver additional monetary stimulus and easier financial conditions, which support demand and price stability.
}

◊note-pos[#:top -12]{actually-worst}

While the article itself is more nuanced, you can't conclude anything with such a small sample size, with such a short timespan and in an irregular environment.

◊ndef["models"]{
    What do you do then? You use complicated models, based on historical data, to predict the effects on the economy.

    How do you know the models are correct? You don't.
}

◊ndef["actually-worst"]{
    Well, the actual worst thing is that the economic system is built upon these "experts" predicting and reacting to events.
}

◊(define fed-rates
   (x-ref
     "2019-11-11"
     "https://www.reuters.com/article/us-usa-fed-rates-idUSN0722343620070808"
     "Fed says inflation main worry, but cites risks (August, 2007)"))
◊(define bernanke
   (x-ref
     "2019-11-11"
     "https://www.federalreserve.gov/boarddocs/speeches/2002/20021108/default.htm"
     " Remarks by Governor Ben S. Bernanke (2002)"))
◊(define imf-jose
   (x-ref
     "2019-11-11"
     "https://blogs.imf.org/2016/04/10/the-broader-view-the-positive-effects-of-negative-nominal-interest-rates/"
     "The Broader View: The Positive Effects of Negative Nominal Interest Rates (2016)"))


◊subhead{We are blind}

◊qt[#:author "Henry Ford"]{
    It is well enough that people of the nation do not understand our banking and monetary system, for if they did, I believe there would be a revolution before tomorrow morning.
}

I could argue that we're blind because we collectively don't understand the banking system, the modern monetary system or the financial system---which would largely be true. But there's another, more sinister, cause of our blindness: the Federal Reserve.

Do the people know that the least accountable operation in the U.S. government isn't the FBI, CIA or the NSA---which are all accountable to congressional supervision---but the Federal Reserve? The central bank of the United States, the largest economy in the world, isn't accountable to anyone, has no budget and nobody has insight into it's operations.
◊(cite-book case-against-fed-book)

The Fed isn't a government agency. It's a private entity and its shareholders are banks which ◊link[fed-dividends]{earn a dividend}---at 6%, often tax-free. (Which banks? It's a secret.) Nobody knows how much banks are printing to pad their own pockets and nobody knows how many dollars exist.◊mn{bonuses}

It's worse than us not understanding how the system works. We simply don't have the ability to understand because the Federal Reserve makes us all blind. But this is often promoted as a benefit, not a drawback:◊mn{oversight-control}

◊qt[#:author "Alan Greenspan, Chairmain of the Federal Reserve"]{
    The temptation is to step on the monetary accelerator or at least to avoid the monetary break until after the next election... Giving in to such temptations is likely to impart an inflationary bias to the economy and could lead to instability, recession and economic stagnation.
}

◊note-pos[#:top -6]{oversight-control}

This argument could be made against almost everything. For example ◊link[mega-projects]{megaprojects often fail} (vastly overruns their cost or timetable) because politicians make them their pet project, pushing them through against all odds... And leave it to other people to pick up the pieces after the next election.◊mn{olympics}

Proponents will of course say that money is more important than other issues---too important to leave it to the whims of the politicians---and therefore the Federal Reserve must remain independent. I believe it's much too important to be handled in the dark, by a private entity.

◊note-pos[#:top -11]{olympics}

◊ndef["bonuses"]{
    An easy thing to criticise is how the ◊link[the-bailouts]{banks got bailed out} in the 2008 financial crisis, and were given money with almost no strings attached and paid out ridiculous salaries and bonuses. Conflict of interest much?
}

◊ndef["oversight-control"]{
    The resistance isn't just regarding control. It's also about transparency---they don't want us to see what's going on.
}

◊ndef["olympics"]{
    My favorite example of failing megaprojects is the Olympics, which have vastly overrun their initial projected cost every single time.
}


◊subhead{A new hope}

Cryptocurrencies are interesting because they allow anyone to verify the number of coins in circulation---with certainty. No money in history has had this valuable property.  There's always been the need to trust the word of someone, that the amount of money is what they say it is. Even with gold coins there's trust involved, you have to trust the issuer to include the right amount of gold, otherwise the trust---and the currency---◊link[rome-debasing]{will collapse in value}.◊mn{portraits}

◊ndef["portraits"]{
    Ever wonder why there are portraits on coins? Because they make them recognizable so you can decide to trust them or not. "I'll gladly accept emperor Augustu's coins" or "we don't accept that usurpers coins here."
}

◊(define rome-debasing
   (x-ref
     "2019-11-11"
     "https://money.visualcapitalist.com/currency-and-the-collapse-of-the-roman-empire/"
     "Currency and the Collapse of the Roman Empire"))

You can also predict how many coins will be created and when, it's coded into the rules of the cryptocurrency after all. While Bitcoin ◊link[predetermined-emission-rate]{mimics the rate that gold is mined}, there's no risk of counterfeit bitcoin or a meteor made of bitcoin crashing on earth to disrupt the supply, like with gold or other precious materials.◊sn{inflation-bug}

◊ndef["inflation-bug"]{
    With cryptocurrencies there's instead a risk of ◊link[inflation-bug]{bugs in the code} which may allow hackers to print coins.
}

◊(define inflation-bug
   (x-ref
     "2019-11-11"
     "https://medium.com/@awemany/600-microseconds-b70f87b0b2a6"
     "600 Microseconds: A perspective from the Bitcoin Cash and Bitcoin Unlimited developer who discovered CVE-2018–17144"))

Finally cryptocurrencies don't rely on "experts", who are supposed to avoid crashes by predicting what cannot be predicted. There's nobody in control so nobody can push the wrong button or pull the wrong lever to cause economic chaos.◊sn{half-truth}

Therefore cryptocurrencies are a more transparent and robust alternative, which avoids many of the problems inherent to the modern financial system.

◊ndef["half-truth"]{
    This is a half-truth. Yes there's nobody who can create coins out of thin air, but there are developers, miners, exchanges and users of a cryptocurrency who can influence its development. After all it's "just code" (and a lot of people agreeing with the rules of the code).
}

◊qt[#:author "Obi-Wan Kenobi"
    #:src "Star Wars: Episode IV - A New Hope"
    #:quote-src #t
    #:url star-wars-iv]{
  An elegant weapon for a more civilized age.
}

◊(define star-wars-iv
   (x-ref
      "2019-11-11"
      "https://www.imdb.com/title/tt0076759/"
      "Star Wars: Episode IV - A New Hope (1977)"))

◊note-pos[#:top -20.5]{inflation-bug}
◊note-pos[#:top -15]{half-truth}

◊(define mega-projects
   (x-ref
     "2019-11-11"
     "http://omegataupodcast.net/181-why-megaprojects-fail-and-what-to-do-about-it/"
     "181 – Why Megaprojects Fail (and what to do about it)"))
◊(define fed-dividends
   (x-ref
     "2019-11-11"
     "https://newrepublic.com/article/116913/federal-reserve-dividends-most-outrageous-handout-banks"
     "This Is the Fed's Most Brazen and Least Known Handout to Private Banks "))

