#lang pollen

◊(define-meta title "The financial crisis, bad loans and bail-outs")
◊;(define-meta subtitle "Benefits over existing payment systems")
◊(define-meta updated "2019-08-30T15:47:12+02:00")
◊(define-meta uuid "0da3165e-e470-4143-a658-4b2858f3a148")

◊epigraph{
  ◊qt[#:author "Tyrell Wellick"
      #:quote-src #t
      #:src "Mr. Robot"]{
    Give a man a gun and he can rob a bank, but give a man a bank, and he can rob the world.
  }
}

During 2007--2008 the world experienced the biggest financial crisis since the 1930s ◊link[great-depression]{Great Depression}, often referred to as the ◊link[2008-crisis]{2008 financial crisis}. I'll try to give an condensed version of the crisis and how it relates to sound money.

◊(define great-depression "https://en.wikipedia.org/wiki/Great_Depression")
◊(define 2008-crisis "https://en.wikipedia.org/wiki/Financial_crisis_of_2007%E2%80%932008")


◊subhead{What caused the 2008 financial crisis?}

The financial crisis was caused by too many people with very little money borrowing  money they could never repay. The banks gladly helped them and repackaged the bad loans and sold them to someone else, for a nice profit. This eventually blew up and brought the global economy to it's knees.

Of course this explanation is too simplified. There were for example two bubbles that popped; the housing bubble and the much bigger bond bubble. The complex financial products which appeared to be low-risk but were very high-risk. And of course the "heads I win, tails you lose" incentives at play all the way from top to bottom in the system.◊sn{villains}

A lot of ink has been spent on articles, books and movies explaining the events better and in far more detail than I could hope to do. I particularly like the explanations given in the Oscar-winning movie ◊link[the-big-short]{The Big Short (2015)}:

◊qt[#:author "Margot Robbie"
    #:src "The Big Short"
    #:quote-src #t
    #:url margot-robbie]{
  Basically, Lewis Ranieri's mortgage bonds were amazingly profitable for the big banks. They made billions and billions on their 2% fee they got for selling each of these bonds. But then, they started running out of mortgages to put in them. After all, there are only so many homes and so many people with good enough jobs to buy them, right?

  So, the banks started filling these bonds with riskier and riskier mortgages. That way, they can keep that profit machine churning, alright? By the way, these risky mortgages are called "subprime." So, whenever you hear the word "subprime," think "shit."
}

◊qt[#:author "Anthony Bourdain"
    #:src "The Big Short"
    #:quote-src #t
    #:url anthony-bourdain]{
  OK, I'm a chef on a Sunday afternoon, setting the menu at a big restaurant. I ordered my fish on Friday, which is the mortgage bond that Michael Burry shorted. But some of the fresh fish doesn't sell. I don't know why. Maybe it just came out halibut has the intelligence of a dolphin.

  So, what am I going to do? Throw all this unsold fish, which is the BBB level of the bond, in the garbage, and take the loss? No way. Being the crafty and morally onerous chef that I am, whatever crappy levels of the bond I don't sell, I throw into a seafood stew. See, it's not old fish. It's a whole new thing! And the best part is, they're eating 3-day-old halibut. ◊em{That} is a CDO.
}

◊;youtube[margot-robbie]{ Margot Robbie describes subrime mortgages.  }
◊;youtube[anthony-bourdain]{Anthony Bourdain explains what a CDO is.}

If you want an approachable explanation of the crisis, watch the movie. If it's too much Hollywood for your taste I recommend "The Big Short: Inside the Doomsday Machine" by Michael Lewis, which the movie is based on.

◊(define the-big-short "https://www.imdb.com/title/tt1596363/")
◊(define margot-robbie "https://www.youtube.com/watch?v=anSPG0TPf84")
◊(define anthony-bourdain "https://www.youtube.com/watch?v=kxN_qPuefrM")


◊ndef["villains"]{
    In "After the Music Stopped" Alan S. Blinder identifies seven villains responsible for the crisis:

    1. Housing bubble
    2. Bond bubble
    3. Regulatory shortfalls
    4. Subprime lending disgraceful practices
    5. Complexity run amok
    6. Overrated rating agencies
    7. Crazy compensation schemes

    He does a good job describing the background of the crisis, although he's been criticised as being too positive towards the actions of the FED and the politicians.
}


◊subhead{The effects of the crisis}

The crisis, which began with the collapse of the bank Lehman Brothers, issued in the ◊link[great-recession]{Great Recession}. In the U.S. alone the crisis meant $18 trillion dollars disappeared, millions of jobs were lost and more than a million people lost their homes.◊sn{music-stopped}

◊ndef["music-stopped"]{
    "After the Music Stopped" Alan S. Blinder
}

◊(define great-recession "https://en.wikipedia.org/wiki/Great_Recession")

◊todo{IMG of the GDP growth rates}

The crisis spread globally and for example in only the first quarter of 2009 the GDP declined by 14.4% in Germany, 15.2% in Japan and 9.8% in the Euro area. (TODO source)


◊subhead{The bail-outs}

But the crisis could've been much worse. The U.S. came close to a complete financial meltdown, but without crossing the line. Partly thanks to the bail-outs, where the Federal Reserve bailed out banks and other private companies. The extremely risky assets, which were too risky for anyone else to touch, were bought up to rescue the banks which were "too big to fail".◊sn{interconnected}

◊ndef["interconnected"]{
    Or perhaps a better term would be "too interconnected to fail". The biggest fear of a big bank going bankrupt is if it brings down the rest of the economy with it, which happened when Lehman Brothers failed.
}

◊ol{
    ◊li{Investment bank Bear Stearns for $27 billion}
    ◊li{Mortgage lenders Fannie Mae and Freddie Mac for $200 billion}
    ◊li{Insurance giant American Investment Group (AIG) for $182 billion}
}

Notably Bear Stearns was bailed out while Lehman Brothers wasn't, a decision which is easy to criticise in hindsight. Furthermore the FED, for the first time in history, took control over a private company.◊sn{fed-political}

◊ndef["fed-political"]{
    The FED is supposed to be completely politically independent. But with their actions during the crisis, can they still claim to be independent?
}

In practice this meant that the tax payers were stuck paying for risky assets and, if things went sideways, would end up eating a huge loss. It's like betting all on red on a roulette wheel---you can win big or lose a lot. In this case American taxpayers got a good outcome, they even made money on the bailouts. The Irish taxpayers ◊link[irish-bailout]{weren't so lucky}.◊sn{managing-risk}

◊ndef["managing-risk"]{
    Investments come with a risk--reward trade-off. If you want the potential for higher return then you need to take a larger risk and if you want lower risk you'll sacrifice potential gains. In this case the bailouts forced a very large risk on the taxpayers.
}

◊(define irish-bailout "https://www.irishtimes.com/business/financial-services/was-it-worth-paying-41-7bn-to-bail-out-irish-banks-1.4036792?mode=amp")

◊; https://www.thebalance.com/aig-bailout-cost-timeline-bonuses-causes-effects-3305693

◊; https://fortune.com/2019/09/26/the-feds-repo-market-bailout-is-a-sign-of-deeper-problems-that-are-getting-worse-over-time/


◊subhead{A message from Satoshi}

After having released the ◊link[wp]{Bitcoin whitepaper} in 2008 Satoshi mined the first bitcoins and launched the Bitcoin network January 2009, just after the financial crisis. Little is known of the ideals of Bitcoin's creator, but Satoshi did ◊link[embedding-data]{leave a message} in the first ever Bitcoin block:

◊qt[#:author "Satoshi"
    #:src "Coinbase parameter for block 0"
    #:url "https://blockchair.com/bitcoin/block/0"]{
  The Times 03/Jan/2009 Chancellor on brink of second bailout for banks
}

Satoshi refers to ◊link[times-img]{The Times issued the 3rd of January, 2009} with the title "Chancellor on brink of second bailout for banks" and the subtitle "Billions may be needed as lending squeeze tightens".◊sn{times-online}

◊ndef["times-online"]{
    You can ◊link[times-20090103]{read the issue online}, although the title is different compared to the printed copy.
}

Which you might see as a sign that Satoshi wasn't a fan of bailing out the banks (if developing an alternative to the banking system wasn't sign enough).

◊(define embedding-data "/extensions.html#embedding-data")
◊(define times-img "https://imgur.com/pGYXHJh")
◊(define times-20090103 "https://www.thetimes.co.uk/article/chancellor-alistair-darling-on-brink-of-second-bailout-for-banks-n9l382mn62h")


◊subhead{Nothing really changed}

◊qt[#:src "Bitcoin the end of money as we know it"
    #:url "https://www.imdb.com/title/tt4654844/"
    #:quote-src #t]{
    In medieval Europe, a banker who couldn't pay depositors was hanged. Today, that same banker would get bailed out, paid bonuses and enjoy some tax benefits, too.
}

After the dust settled it's easy to think the guilty got punished---after all the U.S. loves to dish out harsh punishments---and the system was reworked to prevent a similar crisis from ever happening again. But reality isn't a fairy tail.

The bankers weren't punished for their unregulated gambling, in fact only a single U.S. banker went to jail. Instead they got bonuses and in 2010 the banks were enjoying massive profits---while regular people were still struggling without jobs and houses.

Remember the $182 billion bailout of AIG? Shortly after accepting the bailout they paid out ◊strong{$165 million in bonuses} to their executives, those responsible for ◊link[aig-record-loss]{the biggest corporate loss in history}, and bonuses for the entire company could reach as high as $1.2 billion. As ◊link[obama-aig-bonuses]{president Obama asks}: "how do they justify this outrage to the taxpayers who are keeping the company afloat?". One can't help but wonder...

Of course there were changes made to the financial system, but the fundamental problems remain unsolved. The incentive for the banks is still to flip a coin, because if they win they win big and if they lose they get bailed out (with fat severance bonuses for the responsible).


◊qt[#:author "Michael Lewis"
    #:src "The Big Short: Inside the Doomsday Machine"
    #:quote-src #t]{
  What are the odds that people will make smart decisions about money if they don’t need to make smart decisions—if they can get rich making dumb decisions?
}

In 2015, several banks began selling billions in something called a "bespoke tranche opportunity" which ◊link[bespoke-tranche-opportunity]{is just another name for a CDO}. The banks are also ◊link[warming-up-mortgage-bonds]{warming up} to the same mortgage bonds that burned them in 2008, while housing prices are going through the roof and people are borrowing like mad. History doesn't repeat itself, but it rhymes awfully well.

◊(define aig-record-loss "https://www.nytimes.com/2009/03/03/business/03aig.html")
◊(define obama-aig-bonuses "http://edition.cnn.com/2009/POLITICS/03/16/AIG.bonuses/")
◊(define warming-up-mortgage-bonds "https://www.wsj.com/articles/banks-warm-to-mortgage-bonds-that-burned-them-in-2008-11568626202")
◊(define bespoke-tranche-opportunity "https://www.bloomberg.com/news/articles/2015-02-04/goldman-sachs-hawks-cdos-tainted-by-credit-crisis-under-new-name")

◊;Iceland jails bankers:
◊;<https://www.bloomberg.com/news/features/2016-03-31/welcome-to-iceland-where-bad-bankers-go-to-prison>


◊subhead{What if we used sound money?}


◊;https://news.bitcoin.com/10-years-ago-bitcoins-genesis-block-changed-the-course-of-history/
◊;https://thenextweb.com/hardfork/2018/10/12/bitcoin-easter-egg/
◊;https://www.thetimes03jan2009.com/

◊;Cashing In: How to Make Negative Interest Rates Work 
◊;<https://news.ycombinator.com/item?id=20079686>

◊;Germany in Uproar as Negative Rates Threaten Saving Obsession 
◊;<https://news.ycombinator.com/item?id=20792765>

◊;More money than anyone imagined: an explanation for why the bubble never burst 
◊;<https://news.ycombinator.com/item?id=20535390>


◊; Cashing In: How to Make Negative Interest Rates Work 
◊; <https://news.ycombinator.com/item?id=20079686>

◊; Germany in Uproar as Negative Rates Threaten Saving Obsession 
◊; <https://news.ycombinator.com/item?id=20792765>

◊; More money than anyone imagined: an explanation for why the bubble never burst 
◊; <https://news.ycombinator.com/item?id=20535390>

◊; !!!
◊; https://www.wsj.com/articles/banks-warm-to-mortgage-bonds-that-burned-them-in-2008-11568626202?mod=rsswn

◊; 33 AD example
◊; https://www.businessinsider.com/qe-in-the-financial-crisis-of-33-ad-2013-10?r=US&IR=T&IR=T

◊; Americans lost $12.8 trillion
◊; https://finance.yahoo.com/blogs/daily-ticker/2008-financial-crisis-cost-americans-12-8-trillion-145432501.html

