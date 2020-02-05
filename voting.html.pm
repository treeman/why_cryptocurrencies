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

◊; App Used to Tabulate Votes Is Said to Have Been Inadequately Tested 
◊;https://news.ycombinator.com/item?id=22234593

In this chapter I'm going to speculate even more than I have in other chapters. Here I'll try to describe some problems with the current voting system and some possible improvements. The questionable part is that this system doesn't exist, it contains a number of unsolved problems and it's not even clear it should be based on a cryptocurrency or not.

I still want to bring this up because even if voting on a cryptocurrency is fundamentally unsound, the innovation in consensus mechanisms that cryptocurrencies have made might spur more research into this topic, which might in the end result in a better voting system.

And frankly, I just find the topic interesting.


◊subhead{Bush v. Gore}

◊(define bush-v-gore "https://en.wikipedia.org/wiki/Bush_v._Gore")


◊subhead{The problems with electronic voting}

Voting electronically is becoming more popular. The benefits are easy to see; they're more efficient, convenient and they can instantly count votes, avoiding the problem we saw in the 2000 U.S. presidential election. But there are significant drawbacks that might make them a very bad idea:

◊ol{
    ◊li{Lack of transparency

        How do you know that your vote has been counted correctly? And that the machine didn't switch it out for some other vote? An electronic voting machine is largely a black box, one we're not sure how it works so we just hope it does the right thing.
    }
    ◊li{Hacking

        It's much easier to hack electronic voting machines---to ◊link[vote-flipping]{change votes from Clinton to Trump} for example---than to hack paper voting. With paper voting you'd have to have people on site to exchange paper votes for new paper votes, but hacking a computer can be done from the other side of the world.
    }
    ◊li{Corruption

        In the same way hacking is a worry, so is corruption. If you want to influence votes all you'd have to do is switch out the voting machine, and after that nobody would notice. With paper voting it's harder since there are many more constantly watching what happens to the votes, so you'd have to bribe more people to get away with it.
    }
    ◊li{Privacy concerns

        Paper voting preserves your privacy very well. You walk behind a screen, select a paper and put it a box with hundreds of other papers, making it basically impossible to trace that one vote back to you. Simple and very effective.

        Not so with electronic voting. The voting machine needs to verify your identity some way and computers can, and therefore we must assume they will, record everything that happens on it. This is information that a hacker could gain access to, and would be able to see exactly who you voted for.◊sn{191-mil}

        ◊ndef["191-mil"]{
            In 2015 ◊link[191-mil-us-voters]{a database on the web had personal information} on registered U.S. voters, 191 million in total. It contained your full name, home address, mailing address, phone number, date of borth and whether or not you voted in any election back to 2000.

            ◊link[191-reddit]{And it wasn't even a hack}. The database was just lying there, open for anyone to read. It's like if someone had left a paper in the middle of the library, available to anyone who happened to walk by.

            With electronic voting this database might've also contained who you voted for.
        }
    }
    ◊li{Understandability

        It's easy to explain how paper voting works; you just count the pieces of paper and tally up which name occurs the most. It's much more difficult to explain how electronic voting works and what makes it trustworthy.

        How does it for example prevent someone from voting twice? With paper voting there are people who checks that you're only placing a single vote in the box, but how does the computer do that? And how do you know the computer counted your vote correctly?

        Understandability is important because people have to trust their election to be fair. If they don't trust their votes being counted correctly, then they can't trust the outcome of the election either.
    }
}

◊(define vote-flipping "https://heavy.com/news/2016/10/vote-flipping-georgia-texas-north-carolina-nevada-hillary-clinton-machines-donald-trump-rigged-fraud/")
◊(define 191-mil-us-voters "https://www.forbes.com/sites/thomasbrewster/2015/12/28/us-voter-database-leak/")
◊(define 191-reddit "https://www.reddit.com/r/privacy/comments/3yinij/entire_us_voter_registration_record_leaks_191/")

◊;https://en.wikipedia.org/wiki/Electronic_voting


◊subhead{An auditable voting scheme}

I'm going to present a high level description of a voting scheme that have some very good and beneficial properties:


◊;subhead3{Beneficial properties}

◊ul{
    ◊li-plus{Instant vote counting

             Because it's a form of electronic voting, votes can be counted instantly.
    }
    ◊li-plus{Vote anywhere

             It's possible to set it up so you can vote with your mobile phone, from the other side of the world. This would allow for ◊link[direct-democracy]{direct democracy} where people can vote on policy directly, with very minor overhead.
    }
    ◊li-plus{Verifiable

             The real difference with this voting scheme compared to others is that anyone can verify the integrity of the voting result. It can with certainty answer questions like:

             ◊ul{
                ◊li{Did my vote get counted?}
                ◊li{Did it get counted correctly?}
                ◊li{How many votes were given out in total?}
                ◊li{How many votes were cast?}
             }

             If you happened used a corrupt voting machine that changed your vote from Hillary to Trump, you could see that's what happened. You can also be sure that your vote was counted correctly, or if you didn't vote that it wasn't included. In this scheme vote counting is alway verifiably correct.
    }
    ◊li-plus{Transparent

             The system is public so anyone can verify that it works like it's supposed to. This is different from other electronic voting schemes where there's always a certain amount of trust involved. There are audits there too, but then you have to trust the competence and integrity of the auditors, but here anyone can audit the system.

             ◊qt{
                Don't trust, verify.
            }
    }
}

◊(define direct-democracy "https://en.m.wikipedia.org/wiki/Direct_democracy")

The scheme is similar to tokens that we discussed in the ◊link[tokens]{previous chapter}. Here the issuer is the government, who still needs a way to verify voters and to give them a token (a single vote). The process would be similar to how it works today, where people get verified when they go to vote.

With the tokens distributed you could cast a vote by sending them to predetermined addresses to cast your vote. For example if you want to vote for Trump, you send it to the Trump address. If you want to vote for Hillary, you send it to the Hillary address. And if you don't want to vote you don't do anything.◊sn{blank}

◊ndef["blank"]{
    It's easy to give multiple options. For example if you want to be able to differentiate between those who don't care, and those who want to vote but not any candidate, just have an additional "blank" address voters can send to.
}

◊img[#:src "/images/voting.png"]{
    Each arrow corresponds to a token transaction and the "Hillary" and "Trump" boxes are addresses. The state is responsible for issuing the voting tokens to the voters and the voters in turn send them to the address they want to vote for. In this example Hillary got 1 vote and Trump got 2, and everyone voted.
}

These transactions work like cryptocurrency transactions, so you cannot counterfeit them and manufacture votes from thin air. Well, the state could do it, but everyone can see exactly how many votes they give out, so if they give out more votes than there's eligible voters in the country... You know something is shady.

It's easy to count the votes---just check how much each address holds. It's also easy for you to see that your vote has arrived to the correct voting address, and if it did you know your vote will count.

◊(define tokens "/tokens.html")


◊subhead3{Unsolved problems}

◊ul{
    ◊li-neg{Privacy

            The big flaw of this simple scheme is the poor privacy.  If you can connect token issuance with your identification---which the government will be able to---then they can see who you voted for. It has the same privacy problem that Bitcoin has, except it's even worse.

            The solution would be to obscure the coin history between issuance of the token and when you cast your vote.  We could use the obfuscation techniques, described in the ◊link[priv-fung]{privacy and fungibility} part of the appendix, to accomplish this.
    }
    ◊li-neg{Key delivery}
    ◊li-neg{Vote buying}
    ◊li-neg{Stealing votes}
    ◊li-neg{Understandability}
}


◊;subhead{An alternative approach}
◊(define shuffling-public-keys "http://vixra.org/pdf/1905.0239v1.pdf")
◊(define priv-fung "/challenges.html#privacy-and-fungibility")

