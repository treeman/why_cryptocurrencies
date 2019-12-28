#lang pollen

◊(define-meta title "Protection against government seizures")
◊(define-meta subtitle "It's harder for governments to take cryptocurrencies from you")
◊(define-meta updated "2019-09-02T07:00:09+02:00")
◊(define-meta uuid "01795fb4-c99a-4168-8685-73ad86ed7c0c")

◊epigraph{
  ◊qt[#:author "Gollum"
      #:quote-src #t
      #:src "The Lord of the Rings: The Fellowship of the Ring"]{
    It came to me. My own. My love. My own. My precious.
  }
}

In this chapter we'll see how governments around the world sometimes directly or indirectly take your money, and how cryptocurrencies might help you avoid it.

No, this chapter is ◊strong{not} about tax evasion---do your taxes people.

It's about laws meant to fight crime end up hurting innocent people and how they limit people's freedom.◊sn{legal-moral} It's also about how difficult it can be for you to keep your money safe and your wealth intact; and of course, as this is about cryptocurrencies, how they might help.

◊ndef["legal-moral"]{
    Remember that legality doesn't imply moraly, meaning just because it's legal doesn't make it right, which we explored in the chapter about ◊link[rel-darknet]{darknet markets}.
}

◊(define rel-darknet "/darknet_markets.html")
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


◊subhead{Civil asset forfeiture}

Perhaps you've heard the phrase "innocent until proven guilty"? It's called ◊link[presumption-of-innocence]{presumption of innocence} and it's a cornerstone in the modern justice system that says the default stance is that you're innocent of a crime and it's up to the prosecution to prove otherwise. It's an old legal principle that the United Nations has declared an ◊link[un-universal-human-rights]{universal human right} (see article 11).

If it was the other way around, "guilty until proven innocent", then it would open up abuse from inside the justice system and innocent people would end up in jail, either by being unlucky---despite being innocent you lack convincing evidence that you are---or you simply cannot afford competent defense to protect yourself. Therefore the presumption of innocence a necessary requirement to keep the justice system fair.

◊(define presumption-of-innocence "https://en.wikipedia.org/wiki/Presumption_of_innocence")
◊(define un-universal-human-rights "https://www.un.org/en/universal-declaration-human-rights/")

However in the United States there's something called ◊link[civil-forfeiture]{◊em{civial asset forfeiture}}. It's a legal tool which allows the police to seize your car, home, money or other assets without ever charging you with a crime. You read that right, they can seize your assets ◊strong{without charging you with a crime}.◊sn{cash-limits} There are ◊link[10-cases-forfeiture]{tons of stories} of ◊link[7-cases-forfeiture]{innocent people} having their ◊link[ef-cases]{money or property confiscated}, for example:

◊ndef["cash-limits"]{
    The limits placed on cash I referenced in the ◊link[prev-chapter]{previous chapter} are also examples of the presumption of innocence being turned on it's head. For example if you transfer €50,000 to an European bank it's up to you to prove where you got the money, not the bank or the government.
}

◊(define prev-chapter "/cashless_dystopia.html")

◊ul{
    ◊li{NYPD officers ◊link[nypd-civil-forfeiture]{stole $4,800} in a warrantless search.

        When he went to retrieve his money he was told it was too late and it had already been deposited into the NYPD's pension fund.
    }
    ◊li{A couple had their ◊link[parents-house-seized]{house seized} after their son sold heroin.

        One day the police showed up and turned their power off, locked the doors with screws and forced them out on the street because their son had been arrested for selling $40 worth of heroin.
    }
    ◊li{A nurse got $41,377 ◊link[houston-forfeiture]{confiscated before boarding a flight}.

        She was planning to start a medical clinic for women and children. She was never charged with a crime and was pressured to sign an unconstitutional agreement waiving important rights, including right to interest on the cash and her right to sue back.
    }
}

On a technical level it's not the owner that's charge with a crime, but the property itself. That's why it's legal for the police to seize a house because someone sold drugs in the house, even if the owners didn't know about it.

This really flips the "innocent until proven guilty" mantra on it's head. You're often---but not always!---able to contest the seizure to get back your assets. If you're lucky you'll get them back, but more likely you'll get locked down in a year long legal battle with expensive lawyer fees. Unfortunately it's often more expensive to contest the seizure so many are forced to accept the loss.

Maybe there were some good intentions◊sn{banks-laundering} when these laws mere made, but today they simply don't work as intended. I'll leave it to Columbia's former police chief to explain:

◊ndef["banks-laundering"]{
    They say the laws are supposed to confiscate assets from criminals. For example from drug dealers who sells large amounts of drugs for cash. Because only criminals use large amounts of cash... well, that's the claim anyway.
}

◊(define us-banks-mexico-drug-gangs "https://www.theguardian.com/world/2011/apr/03/us-bank-mexico-drug-gangs")
◊(define gang-mass-grave "https://www.theguardian.com/world/2017/mar/14/mexico-skulls-mass-grave-drug-cartel-veracruz")


◊qt[#:author "Columbia's Police Chief Ken Burton"
    #:url "https://www.themaneater.com/stories/outlook/police-chief-ken-burton-calls-forfeiture-funds-pen"
    #:date "2012"
    #:emphasis #t]{
    It’s usually based on a need---well, I take that back, there’s some limitations on it. ... Actually, there’s not really on the forfeiture stuff. We just usually base it on ◊strong{something that would be nice to have} that we can’t get in the budget, for instance. We try not to use it for things that we need to depend on because we need to have those purchased. It’s kind of like pennies from heaven---◊strong{it gets you a toy} or something that you need is the way that we typically look at it to be perfectly honest.
}

Most of the money goes to funding the police.◊sn{police-funding} But the money has gone to ◊link[steak-forfeiture]{extravagant Christmas parties, sirloin beef and a $8,200 security system} for the district attorney's private home. And of course some managed to spend it on ◊link[forfeiture-alcohol]{alcohol, prostitutes and marijuana}. Then there's the case where another district attorney ◊link[forfeiture-hawaii]{spent $27,000 to take his whole office to Hawaii}, including the approving district judge.

◊ndef["police-funding"]{
    If you're a cynic, like I tend to be, you have to love the incentives at play here. If the police seize money they directly help themselves yet there appears to be no negative consequences if they do.
}

In practice civil asset forfeiture is state-sanctioned theft where the police are acting like ◊link[highway-robbers]{highway robbers}.

So how can cryptocurrencies protect you against the forfeiture laws? While they naturally can't prevent the police from seizing your house or your car, they allow you to easily store and travel with as much money as you can---without anyone noticing. Even if they know you have them there's nothing they can physically steal---they would need your password. (Of course they might be able to coerce you to unluck it for them.)◊sn{how-to-store}

◊ndef["how-to-store"]{
    An app on your phone can hold an unlimited amount of value in cryptocurrencies. Or if you want to be more secure you can encrypt your private key with a strong password and store it on your computer or online. Even the government cannot break strong encryption.
}

◊(define highway-robbers "https://www.aclu.org/press-releases/aclu-announces-settlement-highway-robbery-cases-texas")
◊(define forfeiture-hawaii "https://www.npr.org/templates/story/story.php?storyId=104065589&t=1567527486222")
◊(define forfeiture-alcohol "https://www.policemag.com/348174/prosecutor-mich-cops-spent-forfeiture-funds-on-alcohol-prostitutes")
◊(define steak-forfeiture "https://www.economist.com/democracy-in-america/2013/10/15/fighting-crime-through-superior-steak")

◊(define houston-forfeiture "https://ij.org/case/houston-forfeiture")
◊(define parents-house-seized "https://edition.cnn.com/2014/09/03/us/philadelphia-drug-bust-house-seizure/")
◊(define 10-cases-forfeiture "https://listverse.com/2015/06/29/10-egregious-abuses-of-civil-asset-forfeiture/")
◊(define 7-cases-forfeiture "https://dailycaller.com/2015/01/30/the-7-most-egregious-examples-of-civil-asset-forfeiture/")
◊(define ef-cases "http://endforfeiture.com/#cases")

◊; https://listverse.com/2015/06/29/10-egregious-abuses-of-civil-asset-forfeiture/
◊; https://www.aclu.org/other/morrow-v-city-tenaha-et-al-plaintiff-biographies?redirect=morrow-v-city-tenaha-et-al-plaintiff-biographies
◊; https://dailycaller.com/2015/01/30/the-7-most-egregious-examples-of-civil-asset-forfeiture/

◊; Lot's of interesting examples of where the money is going...
◊; https://www.washingtonpost.com/news/opinions/wp/2014/01/15/gawker-on-asset-forfeiture-abuse-at-nypd/

◊(define nypd-civil-forfeiture "https://gothamist.com/news/how-the-nypds-use-of-civil-forfeiture-robs-innocent-new-yorkers")





◊(define civil-forfeiture "http://endforfeiture.com/")

◊; https://www.heritage.org/research/reports/2014/03/civil-asset-forfeiture-7-things-you-should-know

◊; https://www.wsj.com/articles/SB10001424053111903480904576512253265073870
◊; https://www.washingtonpost.com/news/opinions/wp/2014/01/15/gawker-on-asset-forfeiture-abuse-at-nypd/
◊; https://www.nationalreview.com/2017/03/civil-asset-forfeiture-clarence-thomas/

◊subhead{Safe deposit boxes aren't safe}

Okay we now know the dangers of walking around with a bunch of cash. Forget about moving it around, how about just finding a secure way to store them? What about storing them (or gold or jewelries) in a safe deposit box, surely they're called safe deposit boxes because they're ◊em{safe}?

◊todo{Image of a "trustworthy" banker gremling/monster dude in front of deposit boxes with the same numbers}

Unfortunately safe deposit boxes aren't safe:

◊qt[#:url safe-deposit-boxes-not-safe
    #:author "The New York Times"
    #:src "Safe deposit boxes aren't safe"]{
    There are an estimated 25 million safe deposit boxes in America, and they operate in a legal gray zone within the highly regulated banking industry. There are no federal laws governing the boxes; no rules require banks to compensate customers if their property is stolen or destroyed.
}

The contents of safety deposit boxes disappear all the time, and there's not a whole lot you can do if it happens to you. There are no hard laws to protect you, even if the bank's own records clearly show items vanishing. The banks instead cap their liability in the lease contract:

◊qt[#:url "https://int.nyt.com/data/documenthelper/1425-wells-fargo-safe-deposit-box-l/a4a2ec35134500f23c01/optimized/full.pdf#page=1"
    #:author "The New York Times"
    #:src "Wells Fargo's safe-deposit-box-contract"]{
    If a loss results from our negligence or willful misconduct, our total liability will be the lesser of your actual uninsured loss or $500.
}

And they really are negligent. Did you know that the safe deposit box numbers aren't unique? So it may happen that a bank tries to evict another customer for not keeping up with payments, and they ◊link[safe-deposit-boxes-not-safe]{remove another box with the same number}.

Deposit boxes won't keep you safe from creditors, who may ◊link[creditors-open]{ask the bank for your deposit box}, and of course they won't be safe ◊link[governments-deposit-boxes]{from the government}---or even the banks themselves---in bad economic times.

◊(define governments-deposit-boxes "https://internationalman.com/articles/say-goodbye-to-your-safe-deposit-box/")
◊(define creditors-open "https://calebjonesblog.com/bank-safety-deposit-boxes-no-longer-safe/")
◊(define safe-deposit-boxes-not-safe "https://www.nytimes.com/2019/07/19/business/safe-deposit-box-theft.html")
◊; https://news.ycombinator.com/item?id=20545276


◊subhead{Confiscating money from your bank accounts}

Alright, so if having physical goods isn't good enough how about storing money digitally in a bank account?

Similar to how safe deposit boxes aren't safe during a financial crisis, neither is your bank account. For example during ◊link[cyprus-crisis]{financial crisis in Cyprus} in 2013 deposits over €100,000 had ◊link[cyprus-47.5%]{47.5%} of the value forcefully taken away. The banks closed overnight and withdrawals were blocked. When banks were reopened capital control limits were in place to prevent a ◊link[bank-run]{bank run}.◊sn{bank-IOU}

◊ndef["bank-IOU"]{
    I think this exemplifies our relationship with banks well. When we have our money at a bank, it's not really ours anymore. It's now the bank's money and we only have their promise to return our money when we ask for it. Which generally works well---until it doesn't.
}

◊(define bank-run "https://www.investopedia.com/terms/b/bankrun.asp")
◊(define cyprus-crisis "https://en.wikipedia.org/wiki/2012%E2%80%9313_Cypriot_financial_crisis")
◊(define cyprus-47.5% "https://eu.usatoday.com/story/money/business/2013/07/29/bank-of-cyprus-depositors-lose-savings/2595837/")

◊; Cyprus everyone with more than €100,000 confiscated
◊; https://www.theguardian.com/world/2013/mar/25/cyprus-bailout-deal-eu-closes-bank

◊; The greek financial crisis:
◊; https://www.econcrises.org/2017/07/20/the-greek-financial-crisis-2009-2016/
◊; https://www.nytimes.com/interactive/2016/business/international/greece-debt-crisis-euro.html
◊; https://en.wikipedia.org/wiki/Greek_government-debt_crisis


◊subhead{Invalidating money}

Fine. Let's say you know about all these ways someone can take your money and you've decided to hide your cash somewhere really safe, maybe buried in your yard or in a hidden safe somewhere in your house.◊sn{safe-tips} Perhaps nobody even knows you have it so the risk of someone ◊link[xkcd-security]{hitting you with a wrench until you give it} up is minimized. That should do it, right?

◊ndef["safe-tips"]{
    Here are some tips if you want to install a safe:

    1. Bolt it to the floor.
    2. Hide it (not your master bedroom).
    3. Make sure as few people as possible know about it and what you have inside, but do tell someone.
    4. Consider another safe to act as a dummy.
}

◊(define xkcd-security "https://www.xkcd.com/538/")

Tough luck. In India they found an innovative way to “◊link[india-fight-corruption]{fight corruption}” when they abolished the 500 and 1,000 rupee notes---that's ◊link[india-86%]{86%} of all cash in circulation made invalid in one stroke.

Many turned to gold, jewelry and anything that could reasonably hold value to prevent their money and savings from disappearing in a puff of smoke. Cryptocurrencies could've also been used for protection because nobody can invalidate what you have, similar to having a physical gold bar.

◊(define india-86% "https://www.bbc.com/news/world-asia-india-37974423")
◊(define india-fight-corruption "https://www.bloomberg.com/news/articles/2016-11-08/india-abolishes-inr500-1-000-rupee-notes-to-fight-corruption")
◊; https://www.bloomberg.com/news/articles/2016-11-08/india-abolishes-inr500-1-000-rupee-notes-to-fight-corruption
◊; https://www.cpr.org/2016/11/08/in-surprise-move-india-voids-500-and-1000-rupee-bills-to-fight-corruption/
◊; https://www.npr.org/sections/thetwo-way/2016/11/08/501199606/in-surprise-move-india-voids-500-and-1-000-rupee-bills-to-fight-corruption?t=1567402561294
◊; https://www.vox.com/world/2016/11/29/13763070/india-modi-cash-demonetization-protests
◊; https://www.theguardian.com/world/2016/nov/10/rupee-note-cancellation-panic-in-india-banks-500-1000



◊;em{Man walks through Boston Logan Airport with $50K in a backpack; government wants to keep it}
◊; https://www.masslive.com//boston/2019/02/man-walks-through-boston-logan-airport-with-50k-in-a-backpack-government-wants-to-keep-it.html


◊subhead{Falling through the cracks when cash is renewed}

I like cash. I like the feel of it and I like that I can store it at home and be reasonably sure that I can keep it. The government outright invalidating it---like in India---is the exception and it's extremely unlikely for example the Swedish government would do so without the ability to exchange the old for new. For instance when Sweden ◊link[nyasedlar]{upgraded to new bills} the old ones were valid in stores for about a year, and you could exchange them at banks long after that too.◊sn{dislike-cash}

◊ndef["dislike-cash"]{
    Even though I like the idea of cash, I don't use it much. Simply because I'm ◊em{lazy}, and paying with cards is much easier.
}

But the system isn't perfect. If you miss your window and have to go to a bank with your old, and now technically invalid bills, you have to prove where the cash came from. This can be quite hard if you've been saving some money here and there for many years, and if you don't your money is now lost.

Exactly this happened to a 91-year old Swedish woman ◊link[91-woman]{couldn't deposit her old bills} (worth around €10,000), because she couldn't prove where she got them. There isn't anything outright evil going on here (maybe a little unintended evil?), there are rules which have to be followed and cash do have to get replaced from time to time. It's just unfortunate that some people may fall through the cracks.◊sn{old-people}

◊ndef["old-people"]{
    It's not surprising that it was an old woman who got in trouble. When you're over 90 years old you probably didn't even know about the new bills and that the old ones were becoming invalid. She probably wasn't up-to-date with the ever-more strict KYC laws either. When she was younger she didn't have to track every single income-source, just to not lose her money.
}

◊(define 91-woman "https://www.svt.se/nyheter/lokalt/skane/91-arig-kvinna-vagras-losa-in-sina-sedlar")
◊(define nyasedlar "http://nyasedlar.nu/")

◊;em{91-year old Swedish woman couldn't deposit her old bills, because she couldn't prove where she got them.}
◊; https://www.svt.se/nyheter/lokalt/skane/91-arig-kvinna-vagras-losa-in-sina-sedlar

◊;em{Gunnar löste in 311 500 kronor – Riksbanken behöll pengarna}
◊; https://www.svt.se/nyheter/konsument/han-loste-in-311-500-kronor-riksbanken-beholl-pengarna


◊subhead{Inflation}

There is another way governments can take money from you: by inflating the money supply and using the excess money for themselves. We explored inflation in the chapter ◊link[defective-system]{A defective system}, and the extreme hyperinflation in the chapter ◊link[global-currency]{A global currency}, so I won't repeat myself too much here.

◊(define defective-system "/a_defective_system.html")
◊(define global-currency "/global_currency.html")

Just remember that inflation is a more indirect---and perhaps sinister---way to take money from you as you probably won't notice it. After all they aren't taking something physically from you---you still have your cash in your mattress and numbers in your bank account are unchanged---but they now get you less stuff.◊sn{inflation-sad}

◊ndef["inflation-sad"]{
    Here's a sad story I heard about what inflation can do to your savings:

    This couple was quite frugal and saved a lot of their income. They were planning to give some of it to their son when he got older, so he could live a good life and not having to worry so much. After having saved a lot over many decades they gave a big gift to him as a lump sum.

    After a few years they asked him what he did with the money and they were horrified by his answer---he had bought skiing equipment for all the money! But this money was supposed to buy a house or a car, how could he be this irresponsible?

    Turns out the money wasn't worth that much anymore. They had just left the money alone letting inflation eat up most of the value.
}

With cryptocurrencies nobody can "steal" money from you buy printing more of it.

◊; https://www.reddit.com/r/btc/comments/c6cfbf/let_me_tell_you_a_tale_about_ecuador_that_abused/

◊subhead{What cryptocurrencies does}

Here's a short summary on how cryptocurrencies can help protect our money and our wealth:

◊ol{
    ◊li{It allows you to hold, and hide, any amount of money}
    ◊li{If you use strong encryption, nobody can confiscate it (unless they use force)}
    ◊li{You can easily bring your money everywhere}
    ◊li{The government cannot invalidate your money}
    ◊li{Nobody can inflate the money supply and devalue your money}
}

Of course we must always remember that cryptocurrencies are extremely volatile, and storing your wealth in them might be less preferable than letting it slowly wither away from inflation. With time, and increased adoption, this might change.

