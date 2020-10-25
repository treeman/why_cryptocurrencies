#lang pollen

◊(define-meta title "Uncensorable Twitter")
◊(define-meta subtitle "Permanent and uncensorable messages")
◊(define-meta published "2019-09-25T00:00:00+01:00")
◊(define-meta updated "2020-10-24T11:40:14+02:00")
◊(define-meta uuid "281185fa-996c-44fa-8ae1-f2323e080f6e")

◊(clear-sidenotes)

◊epigraph{
    ◊qt[#:author "Tyrion Lannister"
        #:src "A Clash of Kings"
        #:quote-src #t]{
        When you tear out a man's tongue, you are not proving him a liar, you're only telling the world that you fear what he might say.
    }
}

Another use for ◊link[embedding-data]{embeddable data} in a cryptocurrency is a Twitter clone where messages are included into transactions, and are therefore uncensorable. One example is ◊link[memo-cash]{memo.cash} that embeds data into the Bitcoin Cash blockchain.◊sn{why-bch} Like Twitter it only supports fairly short messages, for example:◊sn{memo-length}

◊qt[#:src "(transaction on the blockchain)"
    #:author "homopit"
    #:author-url homopit
    #:url tx1]{
    memo hitting over 1k regularly last days - ◊(link memo-charts)
}
◊(define homopit
   (x-ref
     "2019-09-25"
     "https://memo.cash/post/9649592301c43b168db94b66a110f8b5aa4a8fad2ff5752aec9d963a8c4a2849"
     "homopit"))
◊(define tx1
   (x-ref
     "2019-09-25"
     "https://blockchair.com/bitcoin-cash/transaction/9649592301c43b168db94b66a110f8b5aa4a8fad2ff5752aec9d963a8c4a2849"
     "Bitcoin Cash transaction 9649592301c43b168db94b66a110f8b5aa4a8fad2ff5752aec9d963a8c4a2849"))
◊(define memo-charts
   (x-ref
     "2019-09-25"
     "https://memo.cash/charts"
     "memo.cash charts"))
◊qt[#:src "(transaction on the blockchain)"
    #:author "CashBack"
    #:author-url cashback
    #:url tx2]{
    ◊(link cashback-yt)
}
◊(define cashback-yt
   (x-ref
     "2019-09-25"
     "https://youtu.be/5q3kDx1USPM"
     "Roger Ver's Business Story - EP04 - The Value Of Trade (9 min)"))
◊(define cashback
   (x-ref
     "2019-09-25"
     "https://memo.cash/post/c2503a1aecb55e2584b41ea183c3c355c527790a1ef9cb0dc3f90d8d7ae654bd"
     "CashBack"))
◊(define tx2
   (x-ref
     "2019-09-25"
     "https://blockchair.com/bitcoin-cash/transaction/c2503a1aecb55e2584b41ea183c3c355c527790a1ef9cb0dc3f90d8d7ae654bd"
     "Bitcoin Cash transaction c2503a1aecb55e2584b41ea183c3c355c527790a1ef9cb0dc3f90d8d7ae654bd"))
◊qt[#:src "(transaction on the blockchain)"
    #:author "Vidteks"
    #:author-url vidteks
    #:url tx3]{
    I can feel the anticipation rising...
}
◊(define vidteks
   (x-ref
     "2019-09-25"
     "https://memo.cash/post/5e614e32e679df162cc04582769b09fd88e7f0ea32f537dcc72cae38efcb7fe9"
     "Vidteks"))
◊(define tx3
   (x-ref
     "2019-09-25"
     "https://blockchair.com/bitcoin-cash/transaction/5e614e32e679df162cc04582769b09fd88e7f0ea32f537dcc72cae38efcb7fe9"
     "Bitcoin Cash transaction 5e614e32e679df162cc04582769b09fd88e7f0ea32f537dcc72cae38efcb7fe9"))

Images or videos aren't actually embedded but reference outside services. ◊link[memo-cash-protocol]{See their protocol} if you want more details.

◊ndef["memo-length"]{
    Memo could potentially extend their message length from the current 217 character limit by ◊link[embedding-data]{chaining transactions} as described before.
}


◊(define memo-cash-protocol
  (x-ref
    "2019-09-25"
    "https://memo.cash/protocol"
    "memo.cash Protocol"))
◊(define memo-cash
  (x-ref
    "2019-09-25"
    "https://memo.cash/"
    "memo.cash"))

◊ndef["why-bch"]{
    Bitcoin Cash is a good option because it has ◊link[bch-low-fees]{low fees} and a larger OP_RETURN limit, making it a cheap and easy base for a messaging platform.
}

◊note-pos[#:top -33]{why-bch}
◊note-pos[#:top -26]{memo-length}

◊(define bch-low-fees
  (x-ref
    "2019-09-25"
    "https://bitcoinfees.cash/"
    "Bitcoin and Bitcoin Cash fees"))


◊subhead{Not a purely good thing}

For someone who's a big privacy supporter and who thinks the ◊link[right-to-be-forgotten]{Right to be forgotten} (the ability to remove yourself from the internet) is really important I'm quite conflicted. On the one hand this tech can be used for good---as we'll get into later---but it might also be a bad idea for other reasons.

If this kind of social network becomes popular you may end up in a position where you cannot delete your posts and really embarrass yourself. For example if you drunkenly post really negative opinions about your boss, there's no way to take that back.◊mn{fired-social-media}

And what if someone posts something about you? I sometimes feel lucky I didn't grow up in the modern age, with the horrible cyber-bullying you hear about, but imagine if someone posts a degrading video of you? Today we might be able to get Facebook or someone to remove it, but if you base your social network on a cryptocurrency... No such luck.

◊note-pos[#:top -13]{fired-social-media}

◊ndef["erase-data"]{
    If the data is embedded in OP_RETURN (as is the case for ◊link[memo-cash]{memo.cash}) it's actually easier to get it removed, because nodes can remove it and still be able to validate the blockchain. It's extra data that isn't actually needed anywhere.
}

◊ndef["fired-social-media"]{
    People have gotten fired for things they post on social media---and they're not always drunk. Turns out employers, both current and potential future ones, do routinely check out social media and use it to decide if they will fire or hire you.
}

◊(define right-to-be-forgotten
  (x-ref
    "2019-09-25"
    "https://en.wikipedia.org/wiki/Right_to_be_forgotten"
    "Wikipedia: Right to be forgotten"))


◊subhead{An uncensorable forum}

At the same time there's something compelling about the idea of having a forum where your messages cannot be censored.◊mn{intellectual-ddos}

◊ndef["intellectual-ddos"]{
    Another big issue, which I foresee as one of the biggest unsolved challenges of the internet age, is "intellectual DDOS". It basically tries to throw so much disinformation at you so cannot tell what's right and what's wrong. It's a denial-of-service attack which works by the fact that it's much easier to produce bullshit than to counter it.

    In other words, "fake news". (Both actual fake news and the dismissal of real news is a form of DDOS on our minds.)
}

◊(define pen-teller-bullshit
  (x-ref
    "2019-09-25"
    "https://www.imdb.com/title/tt0346369/"
    "Penn & Teller: Bullshit! (TV Series 2003–2010)"))

We've seen examples of censorship in the chapter ◊link[censorship-is-real]{uncensorable donations}, so let's not repeat ourselves too much. One example is that Twitter is completely censored in China, and you might get arrested if you bypass their internet wide block of it.

A Twitter-like service based on a cryptocurrency does not have these problems. ◊link[uncensorable_donations]{◊nbsp{As we saw before}}, this kind of service is uncensorable, and there's no company or service China could put pressure on to get inconvenient content removed. Therefore we're free to discuss China's human rights abuses (like their ◊link[forced-organ-harvesting]{forced organ harvesting}) and the information can never be truly removed.

◊note-pos[#:top -19]{intellectual-ddos}

◊(define forced-organ-harvesting
   (x-ref
     "2019-08-28"
     "https://chinatribunal.com/final-judgement-report/"
     "China Tribunal: Independent Tribunal into Forced Organ Harvesting from Prisoners of Conscience in China, Final Judgement Report"))


◊subhead{Uncorrupted history}

◊book-qt[1984-book]{
    Who controls the past controls the future. Who controls the present controls the past.
}

Have you heard about the ◊link[barbarians]{barbarians}? They're primitive and uncivilized humans who were more beast than man. Some say they're too stupid to farm and they live to fight. There's nobody more savage and if they catch you they will bathe in your blood...

Except those are exaggerated rumors, twisted by the passage of time. The Romans for example often liked to spread these kinds of rumors for propaganda purposes. If a Roman general came back from a successful campaign he might want to play up his opponent to make his feat bigger. As the saying goes: "history is written by the victors".◊mn{ceasar-celts}

You can also actively rewrite the history, which is one of the main themes of the book ◊(book-link 1984-book) (which I quote often, because I love it so much). The idea is that you can get away with anything, because you erase it in hindsight. Other times you might deny events because they don't fit your world-view or your bias, which can happen subconsciously. There are ◊link[rewriting-history]{many historic examples}---some crazier than others. Maybe we know about the holocaust denials or the moon landing skeptics? Even closer in time is how ◊link[bush-victory-iraq]{Bush declares victory in Iraq}, despite there's no real victory there.

I wonder what history would look like if we had an uncorrupted version of it? If we had access to several different unaltered versions of a story? What if we had access to an easily searchable Twitter-style feed---permanent and uncensorable---available to all?

With cryptocurrencies we just might have that, for better or worse...

◊ndef["ceasar-celts"]{
    A nice example of the one-sided history is the Roman war against the Celts. We have a great recounting from the Roman general Julius Caesar---but nothing else.

    Julius Caesar's "The Gallic Wars" is supposedly very good, but I'm content with Hardcore History's ◊strong{fantastic} 6 hour episode ◊link[hc-celtic-holocaust]{The Celtic Holocaust}.
}

◊(define bush-victory-iraq
   (x-ref
     "2019-08-28"
     "http://news.bbc.co.uk/2/hi/middle_east/2989459.stm"
     "BBC: Bush declares victory in Iraq"))
◊(define rewriting-history
   (x-ref
     "2019-08-28"
     "https://listverse.com/2016/01/05/10-insane-attempts-at-rewriting-history/"
     "10 Insane Attempts At Rewriting History"))
◊(define barbarians
   (x-ref
     "2019-08-28"
     "https://en.wikipedia.org/wiki/Barbarian"
     "Wikipedia: Barbarian"))
◊(define hc-celtic-holocaust
   (x-ref
     "2019-08-28"
     "https://www.dancarlin.com/hardcore-history-60-the-celtic-holocaust/"
     "Dan Carlin's The Celtic Holocaust"))

◊(list-xrefs)
