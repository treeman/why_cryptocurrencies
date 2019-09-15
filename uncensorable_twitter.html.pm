#lang pollen

◊(define-meta title "Uncensorable Twitter")
◊(define-meta subtitle "Permanent and uncensorable messages")
◊(define-meta updated "2019-09-12T19:37:10+02:00")
◊(define-meta uuid "281185fa-996c-44fa-8ae1-f2323e080f6e")

◊epigraph{
    ◊qt[#:author "Tyrion Lannister"
        #:src "A Clash of Kings"
        #:quote-src #t]{
        When you tear out a man's tongue, you are not proving him a liar, you're only telling the world that you fear what he might say.
    }
}

Another use for ◊link[embedding-data]{embeddable data} in a cryptocurrency is a Twitter clone. A type of Twitter where messages are included into transactions and therefore cannot be blocked or erased.

◊(define embedding-data "/extensions.html#embedding-data")

One example is ◊link[memo-cash]{memo.cash} which embeds data into the Bitcoin Cash blockchain, ◊link[memo-cash-protocol]{see their protocol} if you're interested in details.◊sn{why-bch}

◊(define memo-cash-protocol "https://memo.cash/protocol")
◊(define memo-cash "https://memo.cash/")

◊ndef["why-bch"]{
    Bitcoin Cash is a good option because it has ◊link[bch-low-fees]{low fees} and a larger OP_RETURN limit, making it a cheap and easy base for a messaging platform.
}

◊(define bch-low-fees "https://bitcoinfees.cash/")


◊subhead{Not a purely good thing}

For someone who's a big privacy supporter and who thinks the ◊link[right-to-be-forgotten]{Right to be forgotten} (the ability to remove yourself from the internet) is really important I'm quite conflicted. On the one hand this tech can be used for good---as we'll get into later---but it's also not a good idea for other reasons.

If this kind of social network becomes popular you may end up in a position where you cannot delete your posts and really embarrass yourself. For example if you drunkenly post really negative opinions about your boss, there's no way to take that back.◊sn{fired-social-media}

And what if someone posts something about you? I sometimes feel lucky I didn't grow up in the modern age, with the horrible cyber-bullying you hear about, but imagine if someone posts a degrading video of you? Today we might be able to get Facebook or someone to remove it, but if you base your social network on a cryptocurrency... No such luck.

All isn't doom-and-gloom, you still have websites or apps which display this information. So it's still possible to sort-of hide the information for many people, if you get these services to agree, but you cannot erase it completely. But I still don't think Facebook on a blockchain is a good idea.

◊ndef["fired-social-media"]{
    It does happens that people get fired for things they post on social media---and they're not always drunk. Turns out employers, both current and potential future ones, do routinely check out social media and use it to decide if they will fire or hire you.
}

◊(define right-to-be-forgotten "https://en.wikipedia.org/wiki/Right_to_be_forgotten")


◊subhead{An uncensorable forum}

At the same time there's something compelling about the idea of having a forum where your message cannot be censored.◊sn{intellectual-ddos}

◊ndef["intellectual-ddos"]{
    Another big issue, which I foresee as one of the biggest unsolved challenges of the internet age, is "intellectual DDOS". It basically tries to throw so much disinformation at you so cannot tell what's right and what's wrong. It's a denial-of-service attack which works by the fact that it's much easier to produce bullshit than to counter it.
}

◊todo{Proof of reddit censorship}


◊subhead{Uncorrupted history}

◊qt[#:src "1984"
    #:quote-src #t
    #:author "George Orwell"]{
    Who controls the past controls the future. Who controls the present controls the past.
}

Have you heard about the ◊link[barbarians]{barbarians}? They're primitive and uncivilized humans who more resembled beast than man. Some say they're too stupid to farm but they live to fight. There's nobody more savage and if they catch you they will bathe in your blood...

Except those are exaggerated rumors, twisted by the passage of time. The Romans for example often liked to spread these kinds of rumors for propaganda purposes. For example if a Roman general came back from a successful campaign he might want to play up his opponent to make his feat bigger. As the saying goes "history is written by the victors".◊sn{ceasar-celts}

You can also actively rewrite the history, which is one of the main themes of the book "1984" (which I quote often, because I love it so much). The idea is that you can get away with anything, because you erase it in hindsight. Sometimes you might even deny events because they don't fit your world-view or your bias. There are ◊link[rewriting-history]{many historic examples}, some more crazy than others. Maybe we know about the holocaust denials or the moon landing skeptics, but ◊todo{how USA declares they "won" the Vietnam war, the Iraqi War or the Afghan war}

◊ndef["ceasar-celts"]{
    A nice example of the one-sided history is the Roman war against the Celts. We have a great recounting from the Roman general Julius Caesar---but nothing else.

    Julius Caesar's "The Gallic Wars" is supposedly very good, but I'm content with Hardcore History's 6 hour episode ◊link[hc-celtic-holocaust]{The Celtic Holocaust} which is ◊strong{fantastic}.
}

◊(define rewriting-history "https://listverse.com/2016/01/05/10-insane-attempts-at-rewriting-history/")
◊(define barbarians "https://en.wikipedia.org/wiki/Barbarian")
◊(define hc-celtic-holocaust "https://www.dancarlin.com/hardcore-history-60-the-celtic-holocaust/")

