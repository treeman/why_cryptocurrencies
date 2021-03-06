#lang pollen

◊(define-meta title "About me, the author")
◊(define-meta subtitle "Hello, I'm Jonas")
◊(define-meta published "2019-04-12T00:00:00+01:00")
◊(define-meta updated "2021-05-07T19:11:00+01:00")
◊(define-meta uuid "b1aaa891-a7c6-4bf4-a01c-4c43c0446abf")
◊(define-meta template "chapter.html")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Albert Einstein "]{
    I have no special talents. I am only passionately curious.
  }
}

I wonder what you might think of someone who is writing a book about cryptocurrencies? Maybe you'll think of a teenage multi-millionaire or an old neckbeard raving about free software? Or perhaps an anarchist who's trying to convince you that "governments are evil" and that "taxation is theft"?◊mn{there-are}

◊ndef["there-are"]{
    It's easy to see why cryptocurrencies might attract people like this. Cryptocurrencies are all about freedom, and the free software movement (saying that ◊strong{all} software should be free) and anarchism seek freedom to the extreme.
}

I am none of those. I'm just a normal person, perhaps a bit introverted. I only have a short beard, and I pay my taxes and enjoy the benefits we get here in Sweden. Unfortunately, I'm neither a teenager nor a multi-millionaire.

I first heard about Bitcoin in 2010, about one year after its creation. I installed a Bitcoin wallet and played around with it a little. It was just another internet thing for me and like many others, it failed to hold my attention. After about 10 or 15 minutes, I removed it and promptly forgot about it.◊mn{had-some}

◊ndef["had-some"]{
    I did have a couple of Bitcoins at that time. It hurts to admit this as today a single Bitcoin is worth around $50,000, but sadly I've lost them. After all, back then they weren't worth anything.
}

It wasn't until four years later that I looked at Bitcoin again. I studied computer science and we had a course in cryptography---a very fun course I might add---with a part about cryptocurrencies. We went through the technical details, and it made me curious about Bitcoin on a deeper level. I read the white paper and began following the news and development in the space.

Before writing this book, I wasn't actively involved in cryptocurrencies. While I love programming, ever since I started programming full-time, it's been difficult to find energy for side-projects, like I had during my University years.

The free time I've had has been taken up by my two boys, my girlfriend and other hobbies. Saying no to something is saying yes to something else.◊mn{hobbies}

◊ndef["hobbies"]{
    My current hobbies include ◊link[bjj]{Brazilian Jiu-Jitsu}, boardgames, and standard low-effort ones such as reading books or watching videos.

    I have a very on-and-off relationship with my hobbies, which I pick up and do intensely for a short period of time. For instance, I've been into ◊link[lockpicking]{lockpicking}, ◊link[go]{Go}, and learning Korean, which I would like to start again some day.

    I have a ◊link[blog]{blog} where I write about random stuff, mostly for myself. It's also, as you might imagine, not updated regularly.
}

After my parental leave we decided that I should work part time to avoid long days at pre-school.  Working less has also opened up time and energy for me to work on a side project, and writing a book has been on my bucket-list so I thought "why not do it now"? My girlfriend, wonderful as she is, has always been super supportive of my silly ideas.

As the book project has been finishing up, I've started working on another cryptocurrency project: a ◊link[bitpal]{self-hosted payment processor}, that allows you to accept payments online without any third-party.

Am I qualified to write about cryptocurrencies? Am I a cryptocurrency expert? I don't know. I just see myself as an enthusiast who is trying to write down and share my thoughts. Please keep that in mind when you consider any claims I make---I may very well miss something important.

◊(define blog
  (x-ref
    #f
    "http://www.jonashietala.se/"
    "My personal blog"))
◊(define bjj
   (x-ref
    "2019-04-12"
    "https://www.grapplearts.com/japanese-jiujitsu-vs-bjj/"
    "Stephan Kesting (2018) Japanese Jiujitsu vs BJJ"))
◊(define lockpicking 
   (x-ref
    #f
    "https://www.reddit.com/r/lockpicking/"
    "Reddit: Lockpicking"))
◊(define go 
   (x-ref
    "2019-04-12"
    "https://en.wikipedia.org/wiki/Go_(game)"
    "Wikipedia: Go (game)"))
◊(define bitpal
   (x-ref
    "2021-05-07"
    "https://bitpal.dev/"
    "BitPal"))

