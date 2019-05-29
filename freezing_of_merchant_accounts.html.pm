#lang pollen

◊(define-meta title "Freezing of merchant accounts")
◊(define-meta subtitle "The account your business relies on can at any time be frozen")
◊(define-meta updated "2019-05-29T06:35:29+02:00")
◊(define-meta uuid "ac14d4a1-3796-4f5b-9350-b56e796625a1")

◊epigraph{
    ◊qt[#:src "PayPal freezes Neo900 funds"
        #:date "Dec 2015"
        #:url "https://neo900.org/news/paypal-trouble-delays-project"]{
        Considering that the project operates with minimum margins, just having most of its assets frozen for an unknown amount of time would be disastrous.
    }
}

This chapter is very similar to the ◊link[prev]{previous one}, but we'll view the issue from another angle. Instead of focusing on getting permission to accept payments at all we'll focus on the problem that accounts can be frozen at any time, for arbitrary reasons.


◊subhead{Freezing funds, not just payments}

Imagine coming in to work one day and having this conversion with your boss:

◊div[#:class "story"]{

    "I'm sorry John, but we'll pay you in 6 months."

    "What?"

    "Don't worry, you'll still get your salary but we'll pay it all in 6 months."

    "But why?"

    "You apparently didn't put one of the new coversheets on your TPS reports."◊sn{office-space}

    "A TPS report...??"
}

◊ndef["office-space"]{
    This is a reference to movie ◊link[office-space]{Office Space}, a black comedy about working in an office.
}

Don't focus on the TPS report, the point is you got your salary ◊strong{frozen for 6 months} for an ◊strong{arbitrary} and ◊strong{unknown} reason.◊sn{6-months}

◊ndef["6-months"]{
    You think 6 months is too long? PayPal freezes your account for 180 days by default. There are also several stories of PayPal ◊strong{never} releasing the funds.
}

Now imagine the consequences. Would you be able to pay your rent? Buy food for yourself and your kids? Repair your fridge if it breaks? Given that ◊link[american-savings]{only 39% of Americans have enough savings to cover a $1,000 emergency} you should be very glad if you can honestly answer yes to these questions. Many would panic if their salary is just a little bit late, let alone half a year.

Yet this has played out again and again for businesses all over the world who has gotten their account frozen for an unknown amount of time for arbitrary or unknown reasons.

Actually let me take that back, it's actually much worse. It's like your employer freezing your credit card and your savings account ◊em{in addition} to withholding your salary.

Imagine what you would do now, without a salary and without your savings...



◊(define american-savings "https://www.cnbc.com/2018/01/18/few-americans-have-enough-savings-to-cover-a-1000-emergency.html")


◊subhead{Confiscating future payments}

Just to be a little gratuitous and to drive home my point on how bad this can be---it doesn't end there.

When PayPal freezes your account, they don't block incoming payments. So people can continue paying for stuff---but you're not getting their money---so you still have to give them the stuff they've paid for.◊sn{digital}

◊ndef["digital"]{
    It might be easy to deliver digital goods, but physical goods may be created on demand. In addition salaries, rent and other expenses needs to be paid. Cash flow is a very important issue for most companies.
}

◊qt[#:url "https://notch.tumblr.com/post/1096322756/working-on-a-friday-update-crying-over-paypal"
    #:author "Notch, creator of Minecraft"
    #:date "Sep 2010"]{
    There’s over 600,000 euro in there. Money I was planning on investing in the new company.

    ...

    I withdraw everything from paypal every week. They limited my account just as sales started spiking, so this money has accumulated since they limited the account.
}

They didn't just freeze your account, they're actively making it worse by confiscating future payments as well!◊sn{lawsuits}

◊ndef["lawsuits"]{
    Even if you get all your money back eventually, you still have to deal with ruined reputation, missed opportunities and costumers suing you for delayed deliveries.
}


◊subhead{Small businesses & projects may be ruined}

If you run a very popular business, like Minecraft, you'll probably get through without much issue. You're already making enough money to cover expenses and the attention in news and social media will make sure the issue gets resolved quickly.◊sn{attention}

◊ndef["attention"]{
    Creating an uproar on social media is still the best way to resolve issues with companies that have very poor customer service. For example if you have an issue with Google hopefully your post on ◊link[hackernews]{Hacker News} gathers enough attention to catch the eye of someone working there.
}

But what happens if you run a small business? If your startup gets their account frozen, with no new money coming in?  Obviously you'll be in a world of hurt. Maybe you'll take a hit and survive but it could also kill your business.

The ◊link[neo900]{Neo900} project I quoted at the start of this chapter? They missed a bunch of supplier deadlines and the project is still crawling along---but as a shell of what it once was. It was indeed a disaster.

◊(define neo900 "https://neo900.org/")
◊(define hackernews "https://news.ycombinator.com/")


◊subhead{Money under your mattress}

With cryptocurrencies you can accept digital payments that go directly into a wallet you control yourself. Then it's impossible to get your cryptocurrency account frozen, it's really like storing them under your (digital) mattress.

This of course requires that you use a wallet which holds the coins itself, and not a custodial wallet---which a third party manages for you. It's why so much emphasis is placed on controlling your own keys---otherwise you won't get all benefits.

I'm not advocating either way, just realize there are trade-offs with controlling your own keys or not. If you want the ease of use of a custodial wallet then you'll sacrifice permissionless. With cryptocurrencies you have a choice.


◊(define prev "/undesirable_businesses.html")

◊; PayPal
◊; https://www.cogini.com/blog/paypal-know-your-customer-failure/
◊; https://blog.niteo.co/paypal-ban-after-12-years/
◊; https://www.reddit.com/r/Entrepreneur/comments/1rkkd7/paypal_just_froze_over_70000_in_my_account_say/
◊; https://news.ycombinator.com/item?id=13851120

◊; Stripe
◊; Gabe (but white nationalists? A better example?)
◊; https://news.ycombinator.com/item?id=18135927
◊; https://thinkprogress.org/payment-processor-stripe-freezes-account-of-far-right-friendly-gab-5e525b537343/
◊;
◊; https://kinsta.com/blog/startups-avoid-stripe/

◊; Owen Benjamin (podcaster)
◊;https://www.youtube.com/watch?v=Js1kOPu0T4g
◊;https://www.youtube.com/watch?v=DViuUEqbmw0&t=1h39m0s

◊; Comic
◊;https://paypalsucks.org/toon1.shtml

◊(define office-space "https://www.imdb.com/title/tt0151804/")
