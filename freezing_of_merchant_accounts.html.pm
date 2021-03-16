#lang pollen

◊(define-meta title "Freezing of merchant accounts")
◊(define-meta subtitle "The account your business relies on can be frozen at any time")
◊(define-meta published "2019-06-14T00:00:00+01:00")
◊(define-meta updated "2020-10-24T11:38:47+02:00")
◊(define-meta uuid "ac14d4a1-3796-4f5b-9350-b56e796625a1")
◊(define-meta template "chapter.html")

◊(clear-sidenotes)

◊epigraph{
    ◊qt[#:src "PayPal freezes Neo900 funds"
        #:date "Dec 2015"
        #:url neo900-delay]{
      Considering that the project operates with minimum margins, just having most of its assets frozen for an unknown amount of time would be disastrous.
    }
}

◊(define neo900-delay
   (x-ref
      "2019-06-14"
      "https://neo900.org/news/paypal-trouble-delays-project"
      "Werner Almesberger (2015) PayPal trouble delays project"))

This chapter continues on the same idea as the ◊link[prev]{previous one}, but we'll view the issue from another angle. Instead of focusing on getting permission to accept payments at all we'll focus on the problem that accounts can be frozen at any time, for arbitrary reasons. This isn't a problem with cryptocurrencies, as they cannot be frozen.


◊subhead{Freezing funds, not just payments}

Imagine coming in to work one day and having this conversion with your boss:

◊div[#:class "story"]{
    ◊trow{I'm sorry John, but we'll pay you in 6 months.}
    ◊trow{What?}
    ◊trow{Don't worry, you'll still get your full salary, but we'll pay it in 6 months.}
    ◊trow{But why?}
    ◊trow{You apparently didn't put one of the new coversheets on your TPS reports."◊mn{office-space}}
    ◊trow{TPS reports...??}

    ◊note-pos[#:top -4]{office-space}
}


◊(define (trow . args)
  `(div ((class "talk")) ,@args))


◊ndef["office-space"]{
    The TPS report is is a reference to movie ◊link[office-space]{Office Space}, a black comedy about working in an office. There a worker gets reprimanded for an extremely minor and unimportant issue.
}

Don't worry if you don't know what a TPS report is, the point is you got your salary ◊strong{frozen for 6 months} for an ◊strong{arbitrary} and ◊strong{unknown} reason.◊mn{6-months}

◊ndef["6-months"]{
    You think 6 months is too long? PayPal freezes your account for 180 days by default. There are also several stories of PayPal ◊strong{never} releasing the funds.

    This is possible because PayPal isn't really a bank (in many countries) and can get away with more than regulated banks can.
}

Now imagine the consequences.

Would you be able to pay your rent? Buy food for yourself and your kids? Repair your fridge if it breaks? Given that ◊link[american-savings]{only 39% of Americans have enough savings to cover a $1,000 emergency} you should be glad if you can honestly answer yes to these questions. Many would panic if their salary was just a little bit late, let alone half a year.

Yet this has played out ◊link[rel-examples]{again and again} for businesses all over the world who have gotten their account frozen for an unknown amount of time for arbitrary or unknown reasons.  Actually, let me take that back. What happens is actually much worse---businesses also get ◊strong{funds} frozen. It's like if your employer would freeze your credit card, your savings account and hold off your salary.

Imagine what you would do now, without a salary and without your savings...

◊(define rel-examples `("#other-examples" "Other examples"))
◊(define american-savings
  (x-ref
    "2019-06-14"
    "https://www.cnbc.com/2018/01/18/few-americans-have-enough-savings-to-cover-a-1000-emergency.html"
    "Emmie Martin (2018) Only 39% of Americans have enough savings to cover a $1,000 emergency"))
◊(define office-space 
  (x-ref
    "2019-06-14"
    "https://www.imdb.com/title/tt0151804/"
    "IMDb: Office Space (1999)"))

◊note-pos[#:top -29]{6-months}


◊subhead{Confiscating future payments}

Just to be a little gratuitous and to drive home my point on how bad this can be---it doesn't end there. When PayPal freezes your account, they don't block incoming payments. People can continue paying for stuff, but you're not getting their money and you still have to give them the stuff they've paid for.◊mn{digital}

◊ndef["digital"]{
    It might be easy to deliver digital goods, but physical goods may be created on demand. In addition salaries, rent and other expenses needs to be paid. Cash flow is a very important issue for most companies.
}

◊qt[#:url notch
    #:author "Notch, creator of Minecraft"
    #:date "Sep 2010"]{
    There’s over 600000 euro in there. Money I was planning on investing in the new company.

    [...]

    I withdraw everything from paypal every week. They limited my account just as sales started spiking, so this money has accumulated since they limited the account.
}

◊(define notch
  (x-ref
    "2019-06-14"
    "https://notch.tumblr.com/post/1096322756/working-on-a-friday-update-crying-over-paypal"
    "Notch (2010) Working on a Friday update, crying over paypal"))

They didn't just freeze the account, they're making it worse by confiscating future payments as well!◊mn{lawsuits}

◊ndef["lawsuits"]{
    And even if you get all your money back eventually, you still have to deal with ruined reputation, missed opportunities and costumers suing you for delayed deliveries.
}

◊note-pos[#:top -25]{digital}
◊note-pos{lawsuits}


◊subhead{Small businesses & projects may be ruined}

If you run a very popular business like Minecraft you'll probably get through without much issue. You're already making enough money to cover expenses and the attention in news and social media will make sure the issue gets resolved quickly.◊mn{attention}

◊ndef["attention"]{
    Creating an uproar on social media is still the best way to resolve issues with companies that have very poor customer service. For example if you have an issue with Google hopefully your post on ◊link[hackernews]{Hacker News} gathers enough attention to catch the eye of someone working there.
}

But what happens if you run a small business? If your startup gets their account frozen, with no new money coming in?  Obviously you'll be in a world of hurt. Maybe you'll take a hit and survive but it could also kill your business.

The ◊link[neo900]{Neo900} project I quoted at the start of this chapter? They missed a bunch of supplier deadlines and the project is still crawling along---but as a shell of what it once was. It was indeed a disaster.

◊note-pos[#:top -16]{attention}

◊(define neo900 
  (x-ref
    "2019-06-14"
    "https://neo900.org/"
    "Neo900"))
◊(define hackernews 
  (x-ref
    #f
    "https://news.ycombinator.com/"
    "Hacker News"))


◊subhead{Other examples}

If you search for it online, there are thousands of stories like these. Here's a few examples to get the curious started:

◊ul{
    ◊li{◊link[kyc-failure]{PayPal Know Your Customer failure}}
    ◊li{◊link[paypal-12years]{We got banned from PayPal after 12 years of business}}
    ◊li{◊link[paypal-70000]{PayPal just froze over $70,000 in my account}}
    ◊li{◊link[paypal-8years]{PayPal destroyed my business of 8 years in a day}}
    ◊li{◊link[startups-stripe]{Why Should Startups Avoid Stripe?}}
    ◊li{◊link[keys4coins-stripe]{Why Stripe is the worst choice for your new startup business}}
}

Some of these had a happy ending but others did not.

◊(define kyc-failure 
  (x-ref
    "2019-06-14"
    "https://www.cogini.com/blog/paypal-know-your-customer-failure/"
    "Jake Morrison (2018) PayPal Know Your Customer failure"))
◊(define paypal-12years 
  (x-ref
    "2019-06-14"
    "https://blog.niteo.co/paypal-ban-after-12-years/"
    "Dejan Murko (2019) We got banned from PayPal after 12 years of business "))
◊(define paypal-70000 
  (x-ref
    "2019-06-14"
    "https://www.reddit.com/r/Entrepreneur/comments/1rkkd7/paypal_just_froze_over_70000_in_my_account_say/"
    "schockergd (2013) PayPal just froze over $70,000 in my account - Say they won't return it for 180 days"))
◊(define paypal-8years 
  (x-ref
    "2019-06-14"
    "http://www.aboutpaypal.org/paypal-destroyed-business-8-years-day/"
    "PayPal - Horror Stories, Lawsuits, Reviews PayPal Problems (2012) PayPal destroyed my business of 8 years in a day"))
◊(define startups-stripe 
  (x-ref
    "2019-06-14"
    "https://kinsta.com/blog/startups-avoid-stripe/"
    "Mark Gavalda (2019) Should Startups Avoid Stripe? How We Got Our Account Back"))
◊(define keys4coins-stripe 
  (x-ref
    "2019-06-14"
    "https://medium.com/@OlavOlsm/why-stripe-is-the-worst-choice-for-your-new-startup-business-e4d9f515e116"
    "Olav Småriset (2019) Why Stripe is the worst choice for your new startup business"))


◊subhead{Money under your mattress}

With cryptocurrencies you can accept digital payments that go directly into a wallet you control yourself. Then it's impossible to get your cryptocurrency account frozen; it's really like storing them under your own (digital) mattress.◊mn{tradeoff-holding}

◊ndef["tradeoff-holding"]{
    As always, there are trade-offs. Storing money at home drastically increases the risk of theft so keeping it at a trustworthy bank might be a wise choice.

    With cryptocurrencies a good compromise might be to receive payments to your own wallet and automatically transfer them to a more secure storage when the sum becomes too large.
}


This of course requires that you use a wallet which holds the coins itself, and not a custodial wallet---which a third party manages for you. It's why so much emphasis is placed on controlling your own keys, otherwise you won't get all benefits.

I'm not advocating either way, just realize there are trade-offs with controlling your own keys or not. If you want the ease of use of a custodial wallet then you'll sacrifice control of your account.

With cryptocurrencies at least you have a choice and a possibility to avoid your account getting arbitrarily frozen.

◊note-pos[#:top -20]{tradeoff-holding}


◊(define prev undesirable_businesses)

◊; Comic
◊;https://paypalsucks.org/toon1.shtml

