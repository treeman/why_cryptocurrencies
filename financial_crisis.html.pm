#lang pollen

◊(define-meta title "The financial crisis, bad loans and bailouts")
◊(define-meta subtitle "The doomsday, broken incentives and moral hazard")
◊(define-meta published "2019-10-25T00:00:00+01:00")
◊(define-meta updated "2020-10-09T19:50:43+02:00")
◊(define-meta uuid "0da3165e-e470-4143-a658-4b2858f3a148")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Tyrell Wellick"
      #:quote-src #t
      #:src "Mr. Robot"]{
    Give a man a gun and he can rob a bank, but give a man a bank, and he can rob the world.
  }
}

During 2007--2008 the world experienced the biggest financial crisis since the 1930s ◊link[great-depression]{Great Depression}, often referred to as the ◊link[2008-crisis]{2008 financial crisis}. What was so crazy about the crisis? And is there a relationship to ◊def[sound-money]{sound money}?◊mn{sound-money}

◊ndef["sound-money"]{
    Sound money is not prone to sudden changes in long term purchasing power, and the value is determined by the free market.
}

◊(define 2008-crisis
   (x-ref
     "2019-10-25"
     "https://en.wikipedia.org/wiki/Financial_crisis_of_2007%E2%80%9308"
     "Wikipedia: Financial crisis of 2007–08"))


◊subhead{What caused the 2008 financial crisis?}

The financial crisis was caused by too many people borrowing too much money. The banks were happy to help and repackaged the bad loans and sold them to someone else, for a nice profit.◊mn[#:top -6]{resell-loans} When there weren't enough loans the clever banks conjured new ones, keeping the money machine rolling. This eventually blew up and brought the global economy to it's knees.

This explanation is naturally very simplified. There were for example two bubbles that popped: the housing bubble and the much bigger bond bubble (based in large part on mortgage loans). The complex financial products (for example the ◊link[mortgage-bonds]{mortgage bonds} or the ◊link[cdo]{CDOs} nobody really understood) appeared to be low-risk but were high-risk.  And of course the "heads I win, tails you lose" incentives at play all the way from top to bottom in the system.◊mn{villains}

It's not important to understand exactly how the complex financial products, such as CDOs, work; the important thing to know is that experts didn't understand them either.

◊(define mortgage-bonds
   (x-ref
     "2019-10-25"
     "https://www.investopedia.com/terms/m/mortgage_bond.asp"
     "Mortgage Bond"))
◊(define cdo
   (x-ref
     "2019-10-25"
     "https://www.investopedia.com/terms/c/cdo.asp"
     "Collateralized Debt Obligation (CDO)"))
◊(define subprime-mortgage
   (x-ref
     "2019-10-25"
     "https://www.investopedia.com/terms/s/subprime_mortgage.asp"
     "Subprime Mortgage"))

A lot of ink has been spent on articles, books and movies explaining the events better and in far more detail than I could hope to do. I particularly like the explanations given in the Oscar-winning movie ◊link[the-big-short]{The Big Short (2016)}. Just look at how they describe ◊link[subprime-mortgage]{subprime mortgages} and CDOs:

◊qt[#:author "Margot Robbie, “The Big Short”"
    #:src "(youtube)"
    #:url margot-robbie]{
  Basically, Lewis Ranieri's mortgage bonds were amazingly profitable for the big banks. They made billions and billions on their 2% fee they got for selling each of these bonds. But then, they started running out of mortgages to put in them. After all, there are only so many homes and so many people with good enough jobs to buy them, right?

  So, the banks started filling these bonds with riskier and riskier mortgages. That way, they can keep that profit machine churning, alright? By the way, these risky mortgages are called "subprime." So, whenever you hear the word "subprime," think "shit."
}

◊qt[#:author "Anthony Bourdain, “The Big Short”"
    #:src "(youtube)"
    #:url anthony-bourdain]{
  OK, I'm a chef on a Sunday afternoon, setting the menu at a big restaurant. I ordered my fish on Friday, which is the mortgage bond that Michael Burry shorted. But some of the fresh fish doesn't sell. I don't know why. Maybe it just came out halibut has the intelligence of a dolphin.

  So, what am I going to do? Throw all this unsold fish, which is the BBB level of the bond, in the garbage, and take the loss? No way. Being the crafty and morally onerous chef that I am, whatever crappy levels of the bond I don't sell, I throw into a seafood stew. See, it's not old fish. It's a whole new thing! And the best part is, they're eating 3-day-old halibut. ◊em{That} is a CDO.
}

◊;youtube[margot-robbie]{ Margot Robbie describes subrime mortgages.  }
◊;youtube[anthony-bourdain]{Anthony Bourdain explains what a CDO is.}

A pitch of humor sure makes for memorable explanations. But if it's too much Hollywood for your taste I recommend the book the movie is based on:  ◊(book-link the-big-short-book) by Michael Lewis. Or if you're short on time maybe ◊link[11-min]{this 11 minute video} might suffice.

◊ndef["resell-loans"]{
    It might sound strange, but you can resell loans. For example when you take a loan at the bank, the bank now earns a small fee for the loan in return for the risk that you might not pay them back. The bank can decide to sell this loan to others, so they take the risk but earn the fees. Many such loans can be combined into bonds and sold or even insured.
}

◊(define 11-min
   (x-ref
     "2019-10-25"
     "https://www.youtube.com/watch?v=bx_LWm6_6tA"
     "The Crisis of Credit Visualized - HD (11 min)"))
◊(define the-big-short
   (x-ref
     "2019-10-25"
     "https://www.imdb.com/title/tt1596363/"
     "The Big Short (2015)"))
◊(define margot-robbie
   (x-ref
     "2019-10-25"
     "https://www.youtube.com/watch?v=anSPG0TPf84"
     "The Big Short scene - Margot Robbie explains finance terms (2 min)"))
◊(define anthony-bourdain
   (x-ref
     "2019-10-25"
     "https://www.youtube.com/watch?v=kxN_qPuefrM"
     "The Big Short Anthony Bourdain explains CDO (1 min)"))


◊ndef["villains"]{
    In ◊(book-link after-the-music-stopped-book) Alan S. Blinder identifies seven villains responsible for the crisis:

    1. Housing bubble
    2. Bond bubble
    3. Regulatory shortfalls
    4. Subprime lending disgraceful practices
    5. Complexity run amok
    6. Overrated rating agencies
    7. Crazy compensation schemes

    He does a good job describing the background of the crisis, although he's been criticised as being too positive towards the actions of the Federal Reserve and the politicians.
}


◊subhead{The effects of the crisis}

The crisis began with the collapse of the bank Lehman Brothers, marking the start of the ◊link[great-recession]{Great Recession}. In the U.S. alone the crisis meant ◊nbsp{$18 trillion} disappeared, millions of jobs were lost and more than a million people lost their homes.
◊(cite-book after-the-music-stopped-book)

◊(define great-recession
   (x-ref
     "2019-10-25"
     "https://en.wikipedia.org/wiki/Great_Recession"
     "Wikipedia: Great Recession"))

◊img[#:src "images/us-gdp.svg" #:link #t
     #:alt "United States GDP growth rate between 2005 and 2012."]{
    ◊link[us-gdp]{United States GDP growth rate} surrounding the years of the financial crisis.  
    It bottomed out at -8.4% the fourth quarter of 2008.
}

Although the crisis originated in the U.S. the crisis spread globally.◊mn[#:top -8]{global-buys} For example in only the first quarter of 2009 the GDP rate was -4.7% ◊link[germany-gdp]{in Germany}, -4.8% ◊link[japan-gdp]{in Japan} and -3% ◊link[euro-gdp]{in the Euro area}. There are many details to dig into here, such as unemployment rate or stock market valuations, but I'm content with just noting that the crisis was indeed a global disaster.

◊(define us-gdp
   (x-ref
     "2019-10-25"
     "https://tradingeconomics.com/united-states/gdp-growth"
     "Trading Economics: United States GDP Growth Rate"))
◊(define germany-gdp
   (x-ref
     "2019-10-25"
     "https://tradingeconomics.com/germany/gdp-growth"
     "Trading Economics: Germany GDP Growth Rate"))
◊(define japan-gdp
   (x-ref
     "2019-10-25"
     "https://tradingeconomics.com/japan/gdp-growth"
     "Trading Economics: Japan GDP Growth Rate"))
◊(define euro-gdp
   (x-ref
     "2019-10-25"
     "https://tradingeconomics.com/euro-area/gdp-growth"
     "Trading Economics: Euro Area GDP Growth Rate"))

◊ndef["global-buys"]{
    The crisis was able to spread because bankers all over the world bought these shitty assets that later collapsed to nothing. Banks were simply too interconnected and had to much risk, and when some banks started having trouble they all were in trouble.
}


◊subhead{The bailouts}

Although bad, the crisis could have been much worse. The U.S. came close to a complete financial meltdown, but without crossing the line. Partly thanks to the bailouts, where the Federal Reserve bailed out banks and other private companies. The extremely risky assets---too risky for anyone else to touch---were bought up to rescue the banks which were "too big to fail".◊mn[#:top -4]{interconnected}
◊(cite-book after-the-music-stopped-book)

◊ndef["interconnected"]{
    Or perhaps a better term would be "too interconnected to fail". The biggest fear of a big bank going bankrupt is if it brings down the rest of the economy with it, which to an extent happened when Lehman Brothers failed.
}

The bailouts started when the government guaranteed assets of the investment bank Bear Stearns and encouraged J.P. Morgan to buy them for a knockdown price. Then the mortgage lenders Fannie Mae and Freddie Mac collapsed, promptly rescued by being nationalized coupled with a $200 billion government investment.

While the investment bank Bear Stearns was saved, the investment bank Lehman Brothers was allowed to go bankrupt. At first the Treasury and Federal Reserve claimed they allowed Lehman to fail to send the signal that recklessly managed Wall Street firms did not all come with government guarantees. But when they saw the fatal effects the bank's collapse had on the economy they changed their tune and claimed they lacked the legal authority to do so.
◊(cite-book the-big-short-book)

Then followed massive new efforts to bailout banks and other private companies. For example the Federal Reserve, for the first time in history, took control over the private company American Investment Group (AIG) while giving them a $182 billion loan. The laws allowing them to do this, but not bailout Lehman Brothers, must be very interesting.  (Lehman Brothers was an ◊em{investment} bank, which isn't a real bank. Other investment banks later converted to "commercial banks" in order to receive bailouts.) ◊mn[#:top -4]{fed-political}
◊(cite-book after-the-music-stopped-book)

In September 2008 U.S. Treasury Secretary Henry Paulson persuaded the U.S. Congress for $700 billion to buy subprime mortgage assets from banks.◊sn[#:top -11]{tarp} But once handed the money they abandoned the promised strategy and instead essentially gave away billions of dollars to Citigroup, Morgan Stanley, Goldman Sachs and others. For instance the $13 billion AIG owed to Goldman Sachs was paid off in full by the U.S. government.
◊(cite-book the-big-short-book)

◊ndef["tarp"]{
    This is known as the Troubled Asset Relief Program, or TARP.
}

The government guaranteed $306 billion of Citigroup's assets. They didn't ask for a piece of the action, change in management or anything of importance. The $306 billion guarantee---nearly 2% of U.S. GDP, and roughly the combined budgets of the departments of Agriculture, Education, Energy, Homeland Security, Housing and Urban Development and Transportation---was presented undisguised, as a gift. No explanation was given, just that the action was taking in response to Citigroup's "declining stock price."◊mn{where-money?}

When it was clear the money wasn't enough the Federal Reserve started buying bad subprime mortgages directly from the banks. By early 2009 the tax payers were stuck with more than a trillion dollars' risky assets and, if things went sideways, would end up eating a huge loss while the banks were in the clear.

◊ndef["where-money?"]{
    There are many important problems a nation need to handle; health care, poverty, education, infrastructure, security and immigration; but with too little money to solve them. Yet there's almost infinity money for the banks. I find it fascinating and incredibly frustrating.
}

◊ndef["fed-political"]{
    The Federal Reserve is supposed to be completely politically independent. But with their actions during the crisis, can they still claim to be independent?
}

For the taxpayers it's like betting all on red on a roulette wheel---you risk a very big loss. In this case American taxpayers got a good outcome, they even ◊link[money-tarp]{made money} on the bailouts, but the Irish taxpayers for example ◊link[irish-bailout]{weren't so lucky}.◊mn{managing-risk}


◊ndef["managing-risk"]{
    Investments come with a risk--reward trade-off. If you want the potential for higher return then you need to take a larger risk and if you want lower risk you'll sacrifice potential gains. In this case the bailouts forced a very large risk on the taxpayers, with questionable upside.
}

◊(define money-tarp
   (x-ref
     "2019-10-25"
     "https://www.washingtonpost.com/business/economy/tarp-moves-into-the-black-as-some-loans-are-repaid/2011/03/30/AFDrEc6B_story.html"
     "TARP moves into the black as some loans are repaid"))
◊(define irish-bailout
   (x-ref
     "2019-10-25"
     "https://www.irishtimes.com/business/financial-services/was-it-worth-paying-41-7bn-to-bail-out-irish-banks-1.4036792?mode=amp"
     "Was it worth paying €41.7bn to bail out Irish banks? "))


◊subhead{A message from Satoshi}

After having released the ◊link[bitcoin_whitepaper]{Bitcoin whitepaper} in 2008 Satoshi mined the first bitcoins and launched the Bitcoin network January 2009, just after the financial crisis. Little is known of the ideals of Bitcoin's creator, but Satoshi did ◊link[embedding-data]{leave a message} in the first ever Bitcoin block:

◊qt[#:author "Satoshi"
    #:src "Coinbase parameter for block 0"
    #:url block-0]{
  The Times 03/Jan/2009 Chancellor on brink of second bailout for banks
}

Satoshi refers to ◊link[times-img]{The Times issued the 3rd of January, 2009} with the title "Chancellor on brink of second bailout for banks" and the subtitle "Billions may be needed as lending squeeze tightens".◊mn{times-online}

◊ndef["times-online"]{
    You can ◊link[times-20090103]{read the issue online}, although the title is different compared to the printed copy.
}

Which you might see as a sign that Satoshi wasn't a fan of bailing out the banks (◊nbsp{if developing} an alternative to the banking system wasn't enough of a hint).

◊(define times-img
   (x-ref
     "2019-10-25"
     "https://imgur.com/pGYXHJh"
     "Imgur: The Times | 1/3/2009 | Chancellor on Brink of Second Bailout for Banks | Satoshi Nakamoto"))
◊(define times-20090103
   (x-ref
     "2019-10-25"
     "https://www.thetimes.co.uk/article/chancellor-alistair-darling-on-brink-of-second-bailout-for-banks-n9l382mn62h"
     "Chancellor Alistair Darling on brink of second bailout for banks"))

◊note-pos[#:top -6]{times-online}


◊subhead{Life is unfair}

◊qt[#:src "Bitcoin the end of money as we know it"
    #:url bitcoin-the-end
    #:quote-src #t]{
    In medieval Europe, a banker who couldn't pay depositors was hanged. Today, that same banker would get bailed out, paid bonuses and enjoy some tax benefits, too.
}

◊(define bitcoin-the-end
  (x-ref
    "2019-10-25"
    "https://www.imdb.com/title/tt4654844/"
    "Bitcoin the end of money as we know it (2015)"))

After the dust settled it's easy to think the guilty got punished---after all the U.S. loves to dish out harsh punishments---and the system was reworked to prevent a similar crisis from ever happening again. But reality is often disappointing.

The bankers weren't punished for their unregulated gambling or outright fraud. In fact ◊link[us-banker-jail]{only a single U.S. banker went to jail}.◊mn[#:top -8]{iceland-jail} Instead they got bonuses and in 2010 the banks were enjoying massive profits---while regular people were still struggling without jobs and houses.
◊(cite-book the-big-short-book)

Remember the $182 billion AIG bailout? Shortly after accepting the bailout they paid out ◊strong{$165 million in bonuses} to their executives, those responsible for ◊link[aig-record-loss]{the biggest corporate loss in history}. As ◊link[obama-aig-bonuses]{president Obama asks}: “how do they justify this outrage to the taxpayers who are keeping the company afloat?”. One can't help but wonder...

Then there's the case of ◊link[hubler]{Howie Hubler}, which to me exemplifies the mindbogglingly stupid bonuses oh so well. He was responsible for the biggest loss of a single trade in history---a staggering ◊em{$9 billion}---yet when asked to resign (a friendly way to get fired) he received $10 million.◊mn{financial-independent}

◊(define hubler
   (x-ref
     "2019-10-25"
     "https://en.wikipedia.org/wiki/Howie_Hubler"
     "Wikipedia: Howie Hubler"))

How about the other traders and the "CDO managers" who sold junk disguised as safe assets to their customers? They became rich too.◊mn{be-banker?}

◊note-pos[#:top -8]{financial-independent}
◊note-pos{be-banker?}

◊ndef["iceland-jail"]{
    Iceland is the only nation that actually ◊link[iceland-jail]{put top finance executives behind bars} after the 2008 crisis.
}

◊ndef["financial-independent"]{
    Just for context, $10 million is many times more than enough for me and my family to live on for the rest of our lives. Even if we start going on vacation several times a year.
}

◊ndef["be-banker?"]{
    I can't help but regret my life choices here. Bankers seem to have a pretty sweet deal---you'll get rich even if you have no idea what you're doing! As long as you can sell shit to unsuspecting customers with a straight face...

    Well, I can try to take comfort that I didn't sell out my morality.
}

◊(define iceland-jail
   (x-ref
     "2019-10-25"
     "https://www.bloomberg.com/news/features/2016-03-31/welcome-to-iceland-where-bad-bankers-go-to-prison"
     "This Is Where Bad Bankers Go to Prison"))
◊(define us-banker-jail
   (x-ref
     "2019-10-25"
     "https://www.nytimes.com/2014/05/04/magazine/only-one-top-banker-jail-financial-crisis.html"
     "Why Only One Top Banker Went to Jail for the Financial Crisis"))


◊subhead{It's all about incentives}

◊qt[#:author "Charlie Munger"
    #:src "The Psychology of Human Misjudegement"
    #:url human-misjudgement
    #:date "1995"]{
    Never, ever, think about something else when you should be thinking about the power of incentives.
}

◊(define human-misjudgement
   (x-ref
     "2019-10-25"
     "https://www.youtube.com/watch?v=pqzcCfUglws"
     "The Psychology of Human Misjudgement - Charlie Munger Full Speech (1 hour 16 min)"))

◊;If you wanted to predict how people would behave, you only have to look at their incentives.
◊; "The Psychology of Human Misjudegement" speech by Charlie Munger Jun 1995

What ◊em{really} caused the financial crisis, and made the crisis so large? It's easy to point the finger at people who borrowed money they couldn't afford, at the bankers who helped them (or tricked them) and at the rating agencies who didn't really know what they were rating. But the greed of Wall Street shouldn't be surprising---it should instead be expected.

The blame should be placed on the incentives that enabled the greed to flourish. They made the rating agencies not look too closely at the assets they were rating---otherwise the bankers would go to another rating agency and take their money with them. The people taking loans were incentivized to loan more since the house prices kept rising, making them more money. And the people giving out loans were encouraged to give out as many loans as possible, because they would get a cut of every loan they gave out.◊mn{pets}

◊book-qt[the-big-short-book]{
  What are the odds that people will make smart decisions about money if they don’t need to make smart decisions—if they can get rich making dumb decisions?
}

If you exploit and gamble, but instead of a prison sentence you're rewarded with a fat bonus check, you will not change your actions. In fact you'll be more likely to continue. It's exactly like a child who wants candy: if he screams and cries until he gets candy, what will he learn? He'll learn that you get candy when you cry---so now he'll cry to get the candy.◊mn{moral-hazard}

Indeed, as investor extraordinaire Charlie Munger ◊link[human-misjudgement]{says}: if you want to predict how people will behave, you only have to look at their incentives.  This is why the bailouts, while helpful in the short run (the child stopped crying), made the fundamental problem that enabled the crisis worse (the child will cry more in the future). Bad behaviour by banks and the people working at banks are even more likely now since they've learned that if they fail they will just get bailed-out, and keep their bonuses. They even passed laws to make it even easier for the Federal Reserve to step in and rescue whatever they deem "too big to fail", without the ◊em{unnecessary} overhead of going through congress.◊mn{bail-in}

I find it interesting to compare the incentives for banks with the ◊link[51%-attack]{incentives for cryptocurrency miners}. While banks are incentivized to gamble, exploit and cheat as much they can get away with, the incentives for miners are to work in the network's best interest. While incentives makes the financial industry unstable, it's what makes cryptocurrencies secure.

◊note-pos[#:top -12]{bail-in}

◊ndef["pets"]{
    Strawberry pickers were given out million dollar loans despite having a tiny income, and without posting any collateral. Las Vegas strippers owned multiple houses and people were getting loans by writing their pet's name on the loan.
}

◊ndef["moral-hazard"]{
    The term ◊def[moral-hazard]{moral hazard} is often used to describe the bailouts. It refers to someone taking risks that others will pay for.

    "Heads I win, tails I get bailed-out."
}

◊(define moral-hazard
   (x-ref
     "2019-10-25"
     "https://www.thebalance.com/moral-hazard-what-it-is-and-how-it-works-315515"
     "Moral Hazard: Definition and Examples "))


◊ndef["bail-in"]{
    Instead of bailouts banks can be rescued by ◊def[bail-in]{bail-ins}. Instead of using money from taxpayers it uses the money from unsecured creditors, depositors and bondholders. In English it means the banks can take money from their customers to save themselves. The banks can also be placed under direct federal control.

    This should in theory protect taxpayers, which is great, but it doesn't change the incentives. The banks can still play fast and lose and be saved by someone else.
}
◊(define bail-in
   (x-ref
     "2019-10-25"
     "https://www.investopedia.com/articles/markets-economy/090716/why-bank-bailins-will-be-new-bailouts.asp"
     "Why Bank Bail-Ins Will Be the New Bailouts"))


◊subhead{Will history repeat itself?}

The 2008 financial crisis was a combination of a number of different factors working together. If only one were removed, for example if bankers didn't give out loans to everyone and their pets or if the rating agencies would rate the assets correctly, then the crisis would never have grown so big. And there were changes to the financial system after the crisis which should prevent a repeat of the crisis.

But as I wrote previously, the core incentives problem is unsolved and even made worse. There won't be an exact repeat of the 2008 crisis, but we might see similar problems resurface in the future. It's like "curing" fever by lowering your body temperature, while leaving the virus infection intact.

For example in 2015, several banks began selling billions in something called a "bespoke tranche opportunity"---which ◊link[bespoke-tranche-opportunity]{is just another name for a CDO} (the 3-day old halibut). The banks are also ◊link[warming-up-mortgage-bonds]{warming up to the same mortgage bonds} that burned them in 2008, while housing prices are going through the roof and people are borrowing like mad.◊mn{house-prices}

◊ndef["house-prices"]{
    With a feeling of déjà vu the house prices have been rising globally, especially in cities, for many years now. Here in Sweden it's almost impossible for young adults to buy their first house or apartment in a city unless they get help from their parents or work for years saving up for the down-payment.
}

History doesn't repeat itself, but it rhymes awfully well.

◊note-pos[#:top -5]{house-prices}

◊(define aig-record-loss
   (x-ref
     "2019-10-25"
     "https://www.nytimes.com/2009/03/03/business/03aig.html"
     "A.I.G. Reports Loss of $61.7 Billion as U.S. Gives More Aid"))
◊(define obama-aig-bonuses
   (x-ref
     "2019-10-25"
     "http://edition.cnn.com/2009/POLITICS/03/16/AIG.bonuses/"
     "Obama tries to stop AIG bonuses: 'How do they justify this outrage?'"))
◊(define warming-up-mortgage-bonds
   (x-ref
     "2019-10-25"
     "https://www.wsj.com/articles/banks-warm-to-mortgage-bonds-that-burned-them-in-2008-11568626202"
     "Banks Warm to Mortgage Bonds That Burned Them in 2008"))
◊(define bespoke-tranche-opportunity
   (x-ref
     "2019-10-25"
     "https://www.bloomberg.com/news/articles/2015-02-04/goldman-sachs-hawks-cdos-tainted-by-credit-crisis-under-new-name"
     "Goldman Sachs Hawks CDOs Tainted by Credit Crisis Under New Name"))


◊subhead{What if we used sound money?}

With ◊def[sound-money]{sound money} nobody can manipulate the money supply. For example fiat backed by gold (as long as we trust the backers), actual gold coins or cryptocurrencies are sound money. The question is: could the financial crisis have been prevented if we used sound money?

Unfortunately, probably not. The housing and bond bubble might still have happened as the banks can still create mortgage backed securities, CDOs and other complex derivatives. Sound money cannot prevent anyone from creating and selling junk.

But the incentives would be different. Banks can still use ◊def[legal_counterfeiting]{fractional banking} (create IOUs and inflate the money supply) but if they fail there's nobody to print money for them to bail them out. The bailouts in 2008--2009 were only possible because the Federal Reserve has the ability to print as much money as they want.◊sn{print-digital} There's no upper limit to the size of the bailout---they can always conjure enough. Not so with sound money.

Therefore the unhealthy "heads I win, tails I get bailed-out" incentives would return to the normal "heads I win, tails I lose" incentives we see in any healthy gamble. This seemingly small but important change would force banks to be more careful with their risk-taking, and if they overstep their bounds they will fail. This might have bad effects in the short-term, but would lead to a more robust and healthy risk management in the long-term. The virus infection would be cured, but the fever might worsen temporarily.

◊ndef["print-digital"]{
    Of course they don't actually print physical bills worth billions of dollars, they just move digital numbers in some spreadsheets. The effect is the same.
}
◊note-pos[#:top -20]{print-digital}


◊(list-xrefs)
