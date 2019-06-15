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

◊; Color scheme for map
◊; http://colorbrewer2.org/#type=sequential&scheme=BuPu&n=6
◊; multi-hue
◊;#edf8fb (skip, too similar to background)
◊;#bfd3e6     209, 17, 90       0-10
◊;#9ebcda     210, 28, 85       11-35
◊;#8c96c6     230, 29, 78       36-60
◊;#8856a7     277, 49, 65       61-80
◊;#810f7c     303, 88, 51       81-100
◊;            39,  57, 84       no data


◊; RGB
◊;237,248,251
◊;191,211,230
◊;158,188,218
◊;140,150,198
◊;136,86,167
◊;129,15,124

◊; FIXME
◊; regenrate
◊; Iraq isn't filled in
◊; philipines/malaysia

There are ◊strong{◊link[findex-report]{1.7 billion adults}} without a bank account in the world. To get a sense for what countries they come from, take a look at this world map:

◊img[#:src "images/unbanked-map.png" #:class "fullwidth"]{
    Adults without a bank account, 2017.
    Source ◊link[findex-report]{Global Findex database}.
}

◊;#f0f9e8   92, 7, 98           < (no labeL)0
◊;#bae4bc   123, 18, 89         1 - 10 mil
◊;#7bccc4   174, 40, 80         10 - 50 mil
◊;#43a2ca   198, 67, 79         50 - 100 mil
◊;                              100 - 150 mil (no country!)
◊;#0868ac   205, 95, 67         > 150 mil
◊;http://datawrapper.dwcdn.net/AmFVU/2/

While this map helps us identify countries with a high fraction of unbanked, it doesn't really tell us where the large number of unbanked come from. Instead here's a map visualizing the number of unbanked in the world:

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

So about 420 million do have access to internet while being unbanked. I don't know if that's true or not, but anecdotally it seems almost all homeless people owns a smartphone of some sort. You can even get internet in Venezuela◊sn{venezuela-internet}, despite an unreliable power grid. And ◊link[undesirable-chapter]{remember} that even rich and successful can become temporarily unbankanked, if their banks arbitrarily decide porn stars or marijuana supporters isn't something they want to be associated with.◊sn{handelsbanken}

◊(define undesirable-chapter "undesirable_businesses.html")

◊ndef["venezuela-internet"]{
    Reportedly Venezuela has one of the worst internet speeds in the world. Yet they still ◊link[venezuela-social-media]{use social media actively}. Interestingly they also ◊link[venezuela-mining]{mine Bitcoin}.
}

◊ndef["handelsbanken"]{
    Here in Sweden I had an interesting encounter with Handelsbanken, one of the largest banks here. I asked if I could get an account there, I wanted to try out their internet bank, but I couldn't get one unless I moved over all my accounts and used them to receive my work payment. Isn't that... insane?

    I did finally get an account there when we took a mortgage there, but I don't use them as my main bank.
}

◊(define venezuela-mining "https://news.bitcoin.com/venezuelan-bitcoin-saves-family/")
◊(define venezuela-social-media "https://news.abs-cbn.com/overseas/02/01/19/venezuela-opposition-clings-to-social-media-lifeline")


◊;I've only touched on some statistics, please see the ◊link[findex-report]{full report} for more.


◊subhead{What's the problem?}


As you might expect it's often the developing countries, with poor access to electricity and internet, that have a high ratio of unbanked adults. And really, if nobody in the country has a bank account---it probably doesn't matter that much.

China (224 million), India (191 million) Mexico (58 million), USA (18 million), France (3 million)

Nearly half of all unbanked adults live in just seven economies: 

◊(define findex-report "https://globalfindex.worldbank.org/sites/globalfindex/files/2018-04/2017%20Findex%20full%20report_0.pdf")
◊(define findex-interactive "http://datawrapper.dwcdn.net/AmFVU/2/")


◊; A  growing  body  of  research  reveals  many  potential  development  benefits  from  financial inclusion — especially from the use of digital financial services, including  mobile  money  services,  payment  cards,  and  other  financial  technology  (or  fintech)  applications.  While  the  evidence  is  somewhat  mixed,  even  studies  that  do  not  find  positive  results  often  point  to  possibilities  for  achieving  better  out-comes through careful attention to local needs.

◊;The  benefits  from  financial  inclusion  can  be  wide  ranging.  For  example,  stud-ies  have  shown  that  mobile  money  services—  which  allow  users  to  store  and  transfer  funds  through  a  mobile  phone—  can  help  improve  people’s  income-  earning  potential  and  thus  reduce  poverty.  A  study  in  Kenya  found  that  access  to mobile money services delivered big benefits, especially for women. It enabled women-headed  households  to  increase  their  savings  by  more  than  a  fifth;  allowed  185,000  women  to  leave  farming  and  develop  business  or  retail  activi-ties;  and  helped  reduce  extreme  poverty  among  women-headed  households  by  22 percent.
