#lang pollen

◊(define-meta title "For the unbanked")
◊(define-meta subtitle "Digital payments for those without a bank account")
◊(define-meta updated "2019-06-12T08:51:00+02:00")
◊(define-meta uuid "875332fd-f5ad-4275-8254-008a2e74a4a0")

◊epigraph{
    ◊qt[#:src "Global Findex database"
        #:url findex-report
        #:date "2017"]{
    A growing body of research reveals many potential development benefits from financial inclusion — especially from the use of digital financial services, including mobile money services, payment cards, and other financial technology (or fintech) applications.
    }
}

In the previous chapters we've looked at some problems with having to get permission to accept digital payments, and what happens when we don't. This time we'll look at the reverse problem: when you can't make digital payments.


◊subhead{Who are the unbanked?}


There are ◊strong{◊link[findex-report]{1.7 billion adults}} without a bank account in the world. To get a sense for what countries they come from, take a look at this world map:

◊; http://colorbrewer2.org/#type=sequential&scheme=PuRd&n=5
◊; multi-hue
◊; #f1eef6  0-10
◊; #d7b5d8  11-35
◊; #df65b0  36-60
◊; #dd1c77  61-80
◊; #980043  81-100
◊img[#:src "images/unbanked-map.png" #:class "fullwidth"]{
    Adults without a bank account, 2017.
    Source ◊link[findex-report]{Global Findex database}.
}


While this map helps us identify countries with a high fraction of unbanked, it doesn't really tell us where the large number of unbanked come from. Instead here's a map visualizing the number of unbanked in the world:

◊; http://colorbrewer2.org/#type=sequential&scheme=PuRd&n=5
◊; multi-hue
◊;#f0f9e8   < (no labeL)0
◊;#bae4bc   1 - 10 mil
◊;#7bccc4   10 - 50 mil
◊;#43a2ca   50 - 100 mil
◊;          100 - 150 mil (no country!)
◊;#0868ac   > 150 mil
◊img[#:src "images/unbanked-count-map.png" #:class "fullwidth"]{
    The number of adults without a bank account, 2017.
    Source ◊link[findex-report]{Global Findex database} (◊link[findex-interactive]{interactive}).
}

Almost half of all unbanked live in just seven countries: China, India, Indonesia, Mexico, Nigeria, Pakistan and Bangladesh. In fact China (224 million) and India (191 million) alone make up nearly a quarter of all unbanked in the world.

While the fraction of unbanked adults are high in the developing countries, with poor access to electricity and internet, a surprisingly large number of unbanked live in developed countries. For example USA has 18 million unbanked and in France there are 3 million unbanked.

The question "But how do the unbanked pay for internet?" is always asked when discussing the unbanked. The report has this to say:

◊qt{
    Fewer unbanked adults have both a mobile phone and access to the internet in some form— whether through a smartphone, a home computer, an internet café, or some other way. Globally, the share is about a quarter.
}

So about ◊strong{420 million} do have access to internet while being unbanked. I don't know if that's true or not, but anecdotally it seems almost all homeless people owns a smartphone of some sort. You can even get internet in Venezuela◊sn{venezuela-internet}, despite an unreliable power grid. And ◊link[undesirable-chapter]{remember} that even rich and successful can become temporarily unbankanked, if their banks arbitrarily decide porn stars or marijuana supporters isn't something they want to be associated with.◊sn{handelsbanken}

◊(define undesirable-chapter "undesirable_businesses.html")

◊ndef["venezuela-internet"]{
    Reportedly Venezuela has one of the worst internet speeds in the world. Yet they still ◊link[venezuela-social-media]{use social media actively}. Interestingly they also ◊link[venezuela-mining]{mine Bitcoin}.
}

◊ndef["handelsbanken"]{
    Here in Sweden I had an interesting encounter with Handelsbanken, one of the largest banks here. I asked if I could get an account there, I wanted to try out their internet bank, but I couldn't get one unless I moved over all my accounts and used them to receive my salary.

    I did finally get an account there when we took a mortgage with them, but I don't use them as my main bank.
}

◊(define venezuela-mining "https://news.bitcoin.com/venezuelan-bitcoin-saves-family/")
◊(define venezuela-social-media "https://news.abs-cbn.com/overseas/02/01/19/venezuela-opposition-clings-to-social-media-lifeline")


◊;I've only touched on some statistics, please see the ◊link[findex-report]{full report} for more.


◊subhead{What's the problem?}

◊todo{Rewrite all this}

One of the best ways to fight poverty is economic growth. Ability to make digital payments is a cornerstone for inclusion into the ever-more digitalized world.

◊qt{
    The benefits from financial inclusion can be wide ranging. For example, studies have shown that mobile money services--- which allow users to store and transfer funds through a mobile phone---can help improve people’s income earning potential and thus reduce poverty. A study in Kenya found that access to mobile money services delivered big benefits, especially for women. It enabled women-headed households to increase their savings by more than a fifth; allowed 185,000 women to leave farming and develop business or retail activities; and helped reduce extreme poverty among women-headed households by 22 percent.
}

But the problem isn't exclusive to poor countries. In Sweden for example almost everyone and everything uses digital payments. Some shops don't accept cash anymore (and they talk about it like it's a benefit to us customers) and they prefer to use Swish instead---which unfortunately also requires a bank account.

What happens to the people without credit cards in Sweden? Or perhaps tourists if their card doesn't work? They're luckily few... But they're people too! With the current development they might not even be able to use public bathrooms!◊sn{public-bathroom}

◊ndef["public-bathroom"]{
    In fact when I last visited a public bathroom in a shopping mall they had a new payment system there. Instead of inserting a coin to get the door open---you guessed it---you had to pay with a credit card or with Swish. I guess the kids, who aren't allowed to have a credit card or Swish yet, can go pee in the corner.
}

In China mobile payments are growing like mad. If you're a tourist you need to get them, otherwise you'll have a tough time. This in combination with China's ◊em{social credit}, which ranks people's behaviors to make sure they're in line with the party, is a recipe for disaster. If you score badly you might not be allowed to fly and maybe you'll lose the privilege of digital payments.

◊; WeChat is Watching: Living in China with the app that knows everything about me
◊; https://news.ycombinator.com/item?id=20173549


◊(define findex-report "https://globalfindex.worldbank.org/sites/globalfindex/files/2018-04/2017%20Findex%20full%20report_0.pdf")
◊(define findex-interactive "http://datawrapper.dwcdn.net/AmFVU/2/")


◊; A  growing  body  of  research  reveals  many  potential  development  benefits  from  financial inclusion — especially from the use of digital financial services, including  mobile  money  services,  payment  cards,  and  other  financial  technology  (or  fintech)  applications.  While  the  evidence  is  somewhat  mixed,  even  studies  that  do  not  find  positive  results  often  point  to  possibilities  for  achieving  better  out-comes through careful attention to local needs.

◊;The  benefits  from  financial  inclusion  can  be  wide  ranging.  For  example,  stud-ies  have  shown  that  mobile  money  services—  which  allow  users  to  store  and  transfer  funds  through  a  mobile  phone—  can  help  improve  people’s  income-  earning  potential  and  thus  reduce  poverty.  A  study  in  Kenya  found  that  access  to mobile money services delivered big benefits, especially for women. It enabled women-headed  households  to  increase  their  savings  by  more  than  a  fifth;  allowed  185,000  women  to  leave  farming  and  develop  business  or  retail  activi-ties;  and  helped  reduce  extreme  poverty  among  women-headed  households  by  22 percent.
