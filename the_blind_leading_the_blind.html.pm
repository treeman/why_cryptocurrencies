#lang pollen

◊(define-meta title "The blind leading the blind")
◊(define-meta subtitle "We don't understand, and neither do the experts")
◊(define-meta updated "2019-10-01T08:34:55+02:00")
◊(define-meta uuid "4684c5b0-9f93-479b-a8ab-165601a430c9")

◊epigraph{
  ◊qt[#:author "Will Rogers"
      #:date "1930s"]{
    It's almost been worth ◊link[great-depression]{this depression} to find out how little our big men know.
  }
}
◊;https://books.google.co.uk/books?id=6Mdh5yuHavgC&pg=PA86&lpg=PA86&ots=vJ319cMgdc&focus=viewport&dq=%E2%80%9CIt%27s+almost+been+worth+this+depression+to+find+out+how+little+our+big+men+know.%E2%80%9D++%E2%80%95+Will+Rogers
◊(define great-depression "https://en.wikipedia.org/wiki/Great_Depression")

One of the most common arguments against ◊link[sound-money]{◊em{sound money}}---like cryptocurrencies or money backed by gold---is you lose the ability to influence and react to the market. For example if the economy crashes, or you think it will crash, the modern central banks might try to print money and buy things to soften the crash. This isn't possible with cryptocurrencies or gold, since they cannot be created freely. ◊sn{elaciticity}

◊ndef["elaciticity"]{
    ◊em{Elaciticity} is a nice word fractional banking proponents have used to describe this ability. In plain English it means the ability to inflate and deflate the money supply freely.
}

But there is a fatal flaw with this argument: it relies on being able to predict the market and to know what actions to take to move it in the direction you want. With how intricate and complex the economy is, it's an absurd assumption.


◊subhead{How to become an expert}

To become an expert in a field you need a lot of dedication, effort and maybe a bit of talent,◊sn{10000h} but as Daniel Kahneman points out in his book “◊link[thinking-fast-and-slow-book]{Thinking, Fast and Slow}” you also need the right environment to develop expertise:

◊ndef["10000h"]{
    There's a misunderstood myth that you only need 10,000 hours, or that you need at least 10,000 hours before you become an expert. But that's not the truth, with the right environment and ◊link[deliberate-practice]{◊em{deliberate practice}} you can become an expert much faster and if you use your time inefficiently you may never become one.

    Think for example of the teenage golf prodigies who eclipse the middle-aged men---who've spent their entire lives playing golf---in no time at all.
}

◊(define deliberate-practice "https://expertenough.com/1423/deliberate-practice")

◊ul{
    ◊li{An environment that is sufficiently regular to be predictable.}
    ◊li{An opportunity to learn these regularities through prolonged practice.}
}

For example picking stock is notoriously difficult, so difficult that in general you'll be ◊link[investing-index]{better off investing in a passive index fund than picking stock yourself}. This may not be surprising but it also applies to professional investors, most of whom under-perform against the index! This is because the stock market isn't regular enough to be predictable.◊sn{wicked-env}

◊ndef["wicked-env"]{
    There's also a "wicked" environment where you're likely to learn the wrong lesson from your experience. The example given is of a physician who tried to tried to confirm his a hypothesis for who might develop typhoid. Unfortunately he tested his hunch by palpating the patient's tongue, without washing his hands, making him draw the wrong conclusion.
}

In contrast learning how to drive a car provides an ideal learning environment. You'll get instant feedback whenever you break or use the gas pedal, when you turn the steering-wheel the car turns and you'll quickly find out if you changed gears correctly. While similar learning how to maneuver a large ship is more difficult because of the delayed feedback.

◊(define investing-index "https://www.cnbc.com/2017/05/12/warren-buffett-says-index-funds-make-the-best-retirement-sense-practically-all-the-time.html")


◊subhead{The problem with planning the economy}

In ◊link[economic-planning]{economic planning} central governments make, or influence, economic decisions. There is nothing inherently bad about this and all governments do it, for example large infrastructure projects are often created by the government.  The Soviet Union took this concept ◊link[command-economy]{further} and it was up to the government to decide what goods to produce, how much and when.

Because the economy is made up of millions or even billions of people, with different motivations and imperfect knowledge, it's ◊strong{extremely} hard to predict all the needs of the market. For example you need to predict larger demand for butter closer to Christmas, because people are more likely to bake.◊sn{milk} Or that the demand for fluffy toys will skyrocket, because a game called Pokémon will become unreasonable popular. You think picking stock is difficult? This is much harder.◊sn{impossible?}

◊ndef["milk"]{
    You also need to predict a larger demand for milk, because there are people like me who only drink milk with gingerbread.
}

◊ndef["impossible?"]{
    I do think it's an impossible task. You need to accurately predict small events that can have large effects, known as the ◊link[butterfly-effect]{◊em{Butterfly effect}}.

    Not to mention ◊link[black-swan]{◊em{Black Swan}} events which are by definition unpredictable. The rise of Bitcoin is one example (currently valued at around $9,000).
}

This didn't go so well, with huge queues outside almost empty stores and people having to resort to the black market for necessities. The inability to predict the market, and control the economy, is ◊link[ussr-collapse]{one of the reasons} the Soviet Union collapsed.

◊(define black-swan "https://www.investopedia.com/terms/b/blackswan.asp")
◊(define butterfly-effect "https://en.wikipedia.org/wiki/Butterfly_effect")
◊(define economic-planning "https://www.britannica.com/topic/economic-planning")
◊(define command-economy "https://www.investopedia.com/terms/c/command-economy.asp")
◊(define ussr-collapse "https://www.investopedia.com/articles/investing/021716/why-ussr-collapsed-economically.asp")


◊subhead{Our leaders are blind}

◊qt[#:author "Citigroup CEO Chuck Prince"
    #:date "2007"]{
  When the music stops, in terms of liquidity, things will be complicated. But as long as the music is playing, you’ve got to get up and dance. We’re still dancing.
}

It's not just the Soviet Union that has problems predicting and adapting to the whims of the global economy. Look at the ◊link[financial-crisis]{financial crisis in 2008} which should have been obvious, but took almost everyone by surprise. Here's what the Federal Reserve had to say, a month before the financial meltdown:

◊qt[#:author "The Federal Reserve"
    #:date "August, 2007"
    #:url "https://www.reuters.com/article/us-usa-fed-rates-idUSN0722343620070808"]{
  Financial markets have been volatile in recent weeks, credit conditions have become tighter for some households and businesses, and the housing correction is ongoing.

  Nevertheless, the economy seems likely to continue to expand at a moderate pace over coming quarters, supported by solid growth in employment and incomes and a robust global economy.
}

The Federal Reserve, calling the global economy "robust", fanned the flames of the housing bubble by focusing on inflation and keeping the rent low, all the way up to the crash. They also let Lehman Brothers fail, not realizing the realizing the disaster it would create.◊mn{music-stops}

Maybe you feel like I'm focusing too much on the ◊link[financial-crisis]{2008 financial crisis}? Then how about their actions around the ◊link[great-depression]{Great Depression} (which were critiqued as worsening the crisis), of which the Federal Reserve chairman had this to say:

◊qt[#:author "Ben S. Bernanke, chairman of the Federal Reserve"
    #:date "2002"
    #:url "https://www.federalreserve.gov/boarddocs/speeches/2002/20021108/default.htm"]{
    Let me end my talk by abusing slightly my status as an official representative of the Federal Reserve. I would like to say to Milton and Anna: Regarding the Great Depression, you're right. We did it. We're very sorry. But thanks to you, we won't do it again.◊sn{oops}
}

◊ndef["oops"]{
    Oops!... you did it again.
}

◊(define financial-crisis "/financial_crisis.html")

◊ndef["music-stops"]{
    “◊link[after-the-music-stopped-book]{After the Music Stopped}” Alan S. Blinder
}

This shouldn't be that surprising when you consider that the national and global economy is too irregular to be predictable, and the feedback loop is extremely long---if it even exists.  If for example the central bank lowers the interest rate, how long do we have to wait to see the effect? Days, months and maybe even years. And how do we know the economy reacted this way because of the changes to the interest rate, and not because of the trade war between the U.S. and China, brexit or a million other reasons?◊sn{models}

◊ndef["models"]{
    What do you do then? You use complicated models, based on historical data, to predict the effects on the economy.

    How do you know the models are correct? You don't.
}

These people aren't experts, simply because the environment doesn't lend itself to creating experts. The worst thing isn't that they're clueless, the worst thing is that they don't know their limitations:◊sn{actually-worst}

◊ndef["actually-worst"]{
    Well, the actually worst thing is that the economic system is built upon these "experts" predicting and reacting to events.
}

◊qt[#:author "IMF:s financial advisor Jose Viñals"
    #:date "2016"
    #:url "https://blogs.imf.org/2016/04/10/the-broader-view-the-positive-effects-of-negative-nominal-interest-rates/"]{
  Although the experience with negative nominal interest rates is limited, we tentatively conclude that overall, they help deliver additional monetary stimulus and easier financial conditions, which support demand and price stability.
}

While the article itself is more nuanced, you can't conclude anything with such a small sample size, with such a short timespan and in an irregular environment.

◊;https://news.ycombinator.com/item?id=21028770

◊subhead{We are blind}

◊qt[#:author "Henry Ford"]{
    It is well enough that people of the nation do not understand our banking and monetary system, for if they did, I believe there would be a revolution before tomorrow morning.
}

I could argue that we're blind because we collectively don't understand how the banking system work, the modern monetary system or the financial system---which would largely be true. But there's another, more sinister, cause of our blindness: the Federal Reserve.

Do the people know that the least accountable operation in the U.S. government isn't the FBI, CIA or the NSA---which are all accountable to congressional supervision---but the Federal Reserve? The central bank of the United States, the largest economy in the world, isn't accountable to anyone, has no budget and nobody has insight into it's operations.◊mn{case-against-fed}

◊ndef["case-against-fed"]{
    “◊link[case-against-fed-book]{The Case Against the Fed}” Murray N. Rothbard
}

The Fed isn't a government agency. It's a private entity and its shareholders are banks which ◊link[fed-dividends]{earn a dividend}---at 6%, often tax-free. (Which banks? It's a secret.) Nobody knows how much banks are printing to pad their own pockets and nobody knows how many dollars exist.◊sn{bonuses}

◊ndef["bonuses"]{
    An easy thing to criticise is how the ◊link[bailouts]{banks got bailed out} in the 2008 financial crisis, and were given money with almost no strings attached and paid out ridiculous salaries and bonuses. Conflict of interest much?
}

◊(define bailouts "/financial_crisis.html#the-bailouts")

It's worse than us not understanding how the system works. We simply don't have the ability to understand because the Federal Reserve makes us all blind. But this is often promoted as a benefit, not a drawback:◊sn{oversight-control}

◊ndef["oversight-control"]{
    The resistance isn't just regarding control. It's also about transparency---they don't want us to see what's going on.
}

◊qt[#:author "Alan Greenspan, Chairmain of the Federal Reserve"]{
    The temptetion is to step on the monetary accelerator or at least to avoid the monetary break until after the next election... Giving in to such temptations is likely to impart an inflationary bias to the economy and could lead to instability, recession and economic stagnation.
}

This argument could be made against almost everything. For example ◊link[mega-projects]{megaprojects often fail} (vastly overruns their cost or timetable) because politicians make them their pet project, pushing them through against all odds... And leave it to other people to pick up the pieces after the next election.◊sn{olympics}

◊ndef["olympics"]{
    My favorite example of failing megaprojects is the Olympics, which have vastly overrun their initial projected cost every single time.
}

Proponents will of course say that money is more important than other issues---too important to leave it to the whims of the politicians---and therefore the Fed must remain independent. I believe it's much to important to be handled in the dark, by a private entity.


◊subhead{A new hope}

Cryptocurrencies are interesting because they allow anyone to verify the number of coins in circulation---with certainty. No money in history has had this valuable property.  There has always been the need to trust the word of someone, that the amount of money is what they say it is. Even with gold coins there's trust involved, you have to trust the issuer to include the right amount of gold otherwise the trust---and the currency---◊link[rome-debasing]{will collapse in value}.◊sn{portraits}

◊ndef["portraits"]{
    Ever wonder why there are portraits on coins? Because they make them recognizable so you can decide to trust them or not. "I'll gladly accept emperor Augustu's coins" or "we don't accept that usurpers coins here."
}

◊(define rome-debasing "https://money.visualcapitalist.com/currency-and-the-collapse-of-the-roman-empire/")

You can also predict how many coins will be created and when, it's coded into the rules of the cryptocurrency after all. While Bitcoin ◊link[emission-rate]{mimics the rate that gold is mined}, there is no risk of counterfeit bitcoin or a meteor made of bitcoin crashing on earth to disrupt the supply, which there is with gold or other precious materials.◊sn{inflation-bug}

◊ndef["inflation-bug"]{
    There is instead a risk of ◊link[inflation-bug]{bugs in the code} which may allow hackers to print coins.
}

◊(define inflation-bug "https://medium.com/@awemany/600-microseconds-b70f87b0b2a6")
◊(define emission-rate "/properties_of_a_cryptocurrency.html#predetermined-emission-rate")

Finally cryptocurrencies don't rely on "experts", who are supposed to predict what cannot be predicted. There's nobody in control, so there's nobody to push the wrong button or pull the wrong lever and cause economic chaos.◊sn{half-truth}

◊ndef["half-truth"]{
    This is a half-truth. Yes there's nobody who can create coins out of thin air, but there are developers, miners, exchanges and users of a cryptocurrency who can influence its development. After all it's "just code" (and a lot of people agreeing with the rules of the code).
}

◊qt[#:author "Obi-Wan Kenobi"
    #:src "Star Wars: Episode IV - A New Hope"
    #:quote-src #t
    #:url "https://www.imdb.com/title/tt0076759/"]{
    An elegant weapon for a more civilized age.
}

◊(define mega-projects "http://omegataupodcast.net/181-why-megaprojects-fail-and-what-to-do-about-it/")
◊(define fed-dividends "https://newrepublic.com/article/116913/federal-reserve-dividends-most-outrageous-handout-banks")
◊(define sound-money "https://www.soundmoneydefense.org/sound-money-explained")

