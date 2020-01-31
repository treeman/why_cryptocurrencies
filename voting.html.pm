#lang pollen

◊(define-meta title "Verifiable voting")
◊(define-meta subtitle "An improved voting system")
◊(define-meta published "2020-01-31T07:22:26+01:00")
◊(define-meta updated "2020-01-31T07:22:31+01:00")
◊(define-meta uuid "5aaf6384-d377-485b-bfc2-2c4caaaa0fe0")

◊; Votebook - a blockchain-based electronic voting system
◊;https://news.ycombinator.com/item?id=13142418

◊; In Georgia, a legal battle over electronic vs. paper voting
◊;https://news.ycombinator.com/item?id=18006211

◊; An electronic voting firm exposes 1.8M Chicagoans
◊;https://news.ycombinator.com/item?id=15045650

◊; America's electronic voting system is corrupt to the Core
◊;https://news.ycombinator.com/item?id=20919748

◊; Bruce Schneier on how insecure electronic voting could break the United States 
◊;https://news.ycombinator.com/item?id=21358238

In this chapter I'm going to speculate even more than I have in other chapters. Here I'll try to describe some problems with the current voting system and some possible improvements. The questionable part is that this system doesn't exist, it contains a number of unsolved problems and it's not even clear it should be based on a cryptocurrency or not.

I still want to bring this up because even if voting on a cryptocurrency is fundamentally unsound, the innovation in consensus mechanisms that cryptocurrencies have made might spur more research into this topic, which might in the end result in a better voting system.

And frankly, I just find the topic interesting.


◊subhead{Bush v. Gore}

◊(define bush-v-gore "https://en.wikipedia.org/wiki/Bush_v._Gore")


◊subhead{The problems with electronic voting}

Voting electronically is becoming more popular. The benefits are easy to see; they're more efficient, convenient and they can instantly count votes, avoiding the problem we saw in the 2000 U.S. presidential election. But there are significant drawbacks that might make them a very bad idea:

◊ol{
    ◊li{Hacking}
    ◊li{Corruption}
    ◊li{Lack of auditing/Transparency}
    ◊li{Privacy concerns}
    ◊li{Understandability}
}

◊;https://en.wikipedia.org/wiki/Electronic_voting


◊subhead{An auditable voting scheme}


◊subhead3{Beneficial properties}

◊ul{
    ◊li-plus{Instant vote counting

            No more waiting for results
    }
    ◊li-plus{Verifiably fair

            Did my vote get counted?

            Did it get counted correctly?
    }
    ◊li-plus{Vote anywhere at any time}
}


◊subhead3{Unsolved problems}

◊ul{
    ◊li-neg{Privacy}
    ◊li-neg{Key delivery}
    ◊li-neg{Vote buying}
}


◊;subhead{An alternative approach}
◊(define shuffling-public-keys "http://vixra.org/pdf/1905.0239v1.pdf")

