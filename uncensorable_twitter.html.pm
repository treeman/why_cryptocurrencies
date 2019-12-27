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

Another use for ◊link[embedding-data]{embeddable data} in a cryptocurrency is a Twitter clone where messages are included into transactions, and thereby uncensorable. One example is ◊link[memo-cash]{memo.cash} which embeds data into the Bitcoin Cash blockchain.◊sn{why-bch} Like Twitter it only supports fairly short messages, for example:◊sn{memo-length}

◊(define embedding-data "/extensions.html#embedding-data")


◊qt[#:src "(transaction on the blockchain)"
    #:author "homopit"
    #:author-url "https://memo.cash/post/9649592301c43b168db94b66a110f8b5aa4a8fad2ff5752aec9d963a8c4a2849"
    #:url "https://blockchair.com/bitcoin-cash/transaction/9649592301c43b168db94b66a110f8b5aa4a8fad2ff5752aec9d963a8c4a2849"]{
    memo hitting over 1k regularly last days - ◊link{https://memo.cash/charts}
}
◊qt[#:src "(transaction on the blockchain)"
    #:author "CashBack"
    #:author-url "https://memo.cash/post/c2503a1aecb55e2584b41ea183c3c355c527790a1ef9cb0dc3f90d8d7ae654bd"
    #:url "https://blockchair.com/bitcoin-cash/transaction/c2503a1aecb55e2584b41ea183c3c355c527790a1ef9cb0dc3f90d8d7ae654bd"]{
    ◊link{https://youtu.be/5q3kDx1USPM}
}
◊qt[#:src "(transaction on the blockchain)"
    #:author "Vidteks"
    #:author-url "https://memo.cash/post/5e614e32e679df162cc04582769b09fd88e7f0ea32f537dcc72cae38efcb7fe9"
    #:url "https://blockchair.com/bitcoin-cash/transaction/5e614e32e679df162cc04582769b09fd88e7f0ea32f537dcc72cae38efcb7fe9"]{
    I can feel the anticipation rising...
}

Images or videos aren't actually embedded but references outside services. ◊link[memo-cash-protocol]{See their protocol} if you want more details.

◊ndef["memo-length"]{
    Memo could potentially extend their message length from the current 217 character limit by ◊link[embedding-data]{chaining transactions} as described before.
}


◊(define memo-cash-protocol "https://memo.cash/protocol")
◊(define memo-cash "https://memo.cash/")

◊ndef["why-bch"]{
    Bitcoin Cash is a good option because it has ◊link[bch-low-fees]{low fees} and a larger OP_RETURN limit, making it a cheap and easy base for a messaging platform.
}

◊(define bch-low-fees "https://bitcoinfees.cash/")


◊subhead{Not a purely good thing}

For someone who's a big privacy supporter and who thinks the ◊link[right-to-be-forgotten]{Right to be forgotten} (the ability to remove yourself from the internet) is really important I'm quite conflicted. On the one hand this tech can be used for good---as we'll get into later---but it might also be a bad idea for other reasons.

If this kind of social network becomes popular you may end up in a position where you cannot delete your posts and really embarrass yourself. For example if you drunkenly post really negative opinions about your boss, there's no way to take that back.◊sn{fired-social-media}

And what if someone posts something about you? I sometimes feel lucky I didn't grow up in the modern age, with the horrible cyber-bullying you hear about, but imagine if someone posts a degrading video of you? Today we might be able to get Facebook or someone to remove it, but if you base your social network on a cryptocurrency... No such luck.

But everything isn't lost! As you still need websites or apps to display the information, it's still possible to sort-of hide the information for many people---assuming you get all of them to agree. But you cannot erase the data completely.◊sn{erase-data} That said I still don't think Facebook on a blockchain is a good idea.

◊ndef["erase-data"]{
    If the data is embedded in OP_RETURN (as is the case for ◊link[memo-cash]{memo.cash}) it's actually easier to get it removed, because nodes can remove it and still be able to validate the blockchain. It's extra data that isn't actually needed anywhere.
}

◊ndef["fired-social-media"]{
    People have gotten fired for things they post on social media---and they're not always drunk. Turns out employers, both current and potential future ones, do routinely check out social media and use it to decide if they will fire or hire you.
}

◊(define right-to-be-forgotten "https://en.wikipedia.org/wiki/Right_to_be_forgotten")


◊subhead{An uncensorable forum}

At the same time there's something compelling about the idea of having a forum where your messages cannot be censored.◊sn{intellectual-ddos}

◊ndef["intellectual-ddos"]{
    Another big issue, which I foresee as one of the biggest unsolved challenges of the internet age, is "intellectual DDOS". It basically tries to throw so much disinformation at you so cannot tell what's right and what's wrong. It's a denial-of-service attack which works by the fact that it's much easier to produce ◊link[pen-teller-bullshit]{bullshit} than to counter it.
}

◊(define pen-teller-bullshit "https://www.imdb.com/title/tt0346369/")

We've seen examples of censorship in the chapter ◊link[censorship-is-real]{uncensorable donations}, so let's not repeat ourselves too much. One example is that Twitter is completely censored in China, and you might get arrested if you bypass their internet wide block of it.

A Twitter-like service based on a cryptocurrency does not have these problems. ◊link[uncensorable-donations]{◊nbsp{As we saw before}}, this kind of service is uncensorable, and there is no company or service China could put pressure on to get inconvenient content removed. Therefore we're free to discuss China's human rights abuses (like their ◊link[forced-organ-harvesting]{forced organ harvesting}) and the information can never truly be removed.

◊(define forced-organ-harvesting "https://chinatribunal.com/final-judgement-report/")
◊(define censorship-is-real "/uncensorable_donations.html#censorship-is-real")
◊(define uncensorable-donations "/uncensorable_donations.html")


◊subhead{Uncorrupted history}

◊qt[#:src "1984"
    #:quote-src #t
    #:author "George Orwell"
    #:url 1984-book]{
    Who controls the past controls the future. Who controls the present controls the past.
}

Have you heard about the ◊link[barbarians]{barbarians}? They're primitive and uncivilized humans who were more beast than man. Some say they're too stupid to farm and they live to fight. There's nobody more savage and if they catch you they will bathe in your blood...

Except those are exaggerated rumors, twisted by the passage of time. The Romans for example often liked to spread these kinds of rumors for propaganda purposes. If a Roman general came back from a successful campaign he might want to play up his opponent to make his feat bigger. As the saying goes "history is written by the victors".◊sn{ceasar-celts}

You can also actively rewrite the history, which is one of the main themes of the book ◊link[1984-book #:quote #t]{1984} (which I quote often, because I love it so much). The idea is that you can get away with anything, because you erase it in hindsight. Other times you might deny events because they don't fit your world-view or your bias, which can happen subconsciously. There are ◊link[rewriting-history]{many historic examples}---some crazier than others. Maybe we know about the holocaust denials or the moon landing skeptics? Even closer in time is how ◊link[bush-victory-iraq]{Bush declares victory in Iraq}, despite there's no real victory there.

I wonder what history would look like if we had an uncorrupted version of it? If we had access to several different unaltered versions of a story? What if we had access to an easily searchable Twitter-style feed---permanent and uncensorable---available to all?

With cryptocurrencies we just might have that, for better or worse...

◊ndef["ceasar-celts"]{
    A nice example of the one-sided history is the Roman war against the Celts. We have a great recounting from the Roman general Julius Caesar---but nothing else.

    Julius Caesar's "The Gallic Wars" is supposedly very good, but I'm content with Hardcore History's ◊strong{fantastic} 6 hour episode ◊link[hc-celtic-holocaust]{The Celtic Holocaust}.
}

◊(define bush-victory-iraq "http://news.bbc.co.uk/2/hi/middle_east/2989459.stm")
◊(define rewriting-history "https://listverse.com/2016/01/05/10-insane-attempts-at-rewriting-history/")
◊(define barbarians "https://en.wikipedia.org/wiki/Barbarian")
◊(define hc-celtic-holocaust "https://www.dancarlin.com/hardcore-history-60-the-celtic-holocaust/")

