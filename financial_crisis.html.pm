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

◊ol{
    ◊li{What banking actually does, fractional banking & the financial system}
    ◊li{Background on the financial crisis}
    ◊li{How the banks were bailed out}
    ◊li{The aftermath, nothing really changed}
    ◊li{What can cryptocurrencies do?}
}




◊(define times-img "https://imgur.com/pGYXHJh")
◊(define times-20090103 "https://www.thetimes.co.uk/article/chancellor-alistair-darling-on-brink-of-second-bailout-for-banks-n9l382mn62h")

◊subhead{The magic money machine}

Money isn't created, it just magically appears in the bank's balance.

◊qt[#:author "Thomas Jefferson"]{
    I believe that banking institutions are more dangerous to our liberties than standing armies. Already they have raised up a monied aristocracy that has set the government at defiance. The issuing power (of money) should be taken away from the banks and restored to the people to whom it properly belongs.
}

The FED is not a government agency. It's a private entity and its shareholders are banks which earn a dividend. As much as 80 billion dollars per year, total.  (Which banks? It's a secret)

Nobody really knows how many dollars exist.  Nobody knows how much banks are printing to pad their own pockets.


◊subhead{The 2008 financial crisis}

Our financial crisis had everything to do with virtual dollars. Too many people with very little income borrowed a lot of money they could never repay.  But the banks didn't care. They didn't have to. They quickly made and sold shaky loans to someone else, for a profit.  Selling bad loans was a good business, until the whole thing blew up in a global financial crisis. (Bitcoin the end of money as we know it)


◊qt[#:author "Margot Robbie"
    #:src "The Big Short"
    #:quote-src #t
    #:url "https://www.youtube.com/watch?v=anSPG0TPf84"]{
    Margot Robbie: [In a bubble bath with a glass of champagne] Basically, Lewis Ranieri's mortgage bonds were amazingly profitable for the big banks. They made billions and billions on their 2% fee they got for selling each of these bonds. But then, they started running out of mortgages to put in them. After all, there are only so many homes and so many people with good enough jobs to buy them, right? So, the banks started filling these bonds with riskier and riskier mortgages. [Butler pours more champagne into her glass] (Thank you, Benjamin) That way, they can keep that profit machine churning, alright? By the way, these risky mortgages are called "subprime." So, whenever you hear the word "subprime," think "shit." Our friend, Michael Burry, found out that these mortgage bonds that were supposedly 65% AAA, were actually just, mostly, full of shit, so now, he's going to "short" the bonds, which means "to bet against." Got it? Good...[Takes a sip of champagne] Now, fuck off.
}


◊qt[#:author "Anthony Bourdain"
    #:src "The Big Short"
    #:quote-src #t
    #:url "https://www.youtube.com/watch?v=Vrv9odqUvlw"]{
    OK, I'm a chef on a Sunday afternoon, setting the menu at a big restaurant. I ordered my fish on Friday, which is the mortgage bond that Michael Burry shorted. But some of the fresh fish doesn't sell. I don't know why. Maybe it just came out halibut has the intelligence of a dolphin. So, what am I going to do? Throw all this unsold fish, which is the BBB level of the bond, in the garbage, and take the loss? No way. Being the crafty and morally onerous chef that I am, whatever crappy levels of the bond I don't sell, I throw into a seafood stew. See, it's not old fish. It's a whole new thing! And the best part is, they're eating 3-day-old halibut. *That* is a CDO. 
}

◊subhead{Bad loans}


◊subhead{Bail-outs}

"In medieval Europe, a banker who couldn't pay depositors was hanged. Today, that same banker would get bailed out, paid bonuses and enjoy some tax benefits, too."

But at least we're going to see some of them go to jail.
Except they took the money the American people gave them and gave themselves huge bonuses.

A single banker went to jail.

◊qt[#:author "Satoshi"
    #:src "Coinbase parameter for block 0"
    #:url "https://blockchair.com/bitcoin/block/0"]{
  The Times 03/Jan/2009 Chancellor on brink of second bailout for banks
}
◊;https://news.bitcoin.com/10-years-ago-bitcoins-genesis-block-changed-the-course-of-history/
◊;https://thenextweb.com/hardfork/2018/10/12/bitcoin-easter-egg/
◊;https://www.thetimes03jan2009.com/

Satoshi refers to ◊link[times-img]{The Times issued the 3rd of January, 2009} with the title "Chancellor on brink of second bailout for banks" and the subtitle "Billions may be needed as lending squeeze tightens". You can ◊link[times-20090103]{read it online} (although the title is different compared to the printed copy).


In 2015, several banks began selling billions in something called a "bespoke tranche opportunity."
Which, according to Bloomberg News, is just another name for a CDO.

◊(define bespoke-tranche-opportunity "https://www.bloomberg.com/news/articles/2015-02-04/goldman-sachs-hawks-cdos-tainted-by-credit-crisis-under-new-name")


◊subhead{Reclaiming the power to print money}


◊; Cashing In: How to Make Negative Interest Rates Work 
◊; <https://news.ycombinator.com/item?id=20079686>

◊; Germany in Uproar as Negative Rates Threaten Saving Obsession 
◊; <https://news.ycombinator.com/item?id=20792765>

◊; More money than anyone imagined: an explanation for why the bubble never burst 
◊; <https://news.ycombinator.com/item?id=20535390>