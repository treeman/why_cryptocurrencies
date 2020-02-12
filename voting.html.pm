#lang pollen

◊(define-meta title "Verifiable voting")
◊(define-meta subtitle "An improved voting system")
◊(define-meta published "2020-01-31T07:22:26+01:00")
◊(define-meta updated "2020-01-31T07:22:31+01:00")
◊(define-meta uuid "5aaf6384-d377-485b-bfc2-2c4caaaa0fe0")

◊epigraph{
  ◊qt[#:author "Bruce Schneier"
      #:src "80,000 Hours podcast"
      #:url "https://80000hours.org/podcast/episodes/bruce-schneier-security-secrets-and-surveillance/"]{
    Nobody is in favor of the power going down. Nobody is in favor of all cell phones not working. But an election? There are sides. Half of the country will want the result to stand and half the country will want the result overturned; they’ll decide on their course of action based on the result, not based on what’s right.
  }
}


◊; Votebook - a blockchain-based electronic voting system
◊;https://news.ycombinator.com/item?id=13142418

◊; In Georgia, a legal battle over electronic vs. paper voting
◊;https://news.ycombinator.com/item?id=18006211

◊; America's electronic voting system is corrupt to the Core
◊;https://news.ycombinator.com/item?id=20919748

◊; It's a podcast I should listen to
◊; Bruce Schneier on how insecure electronic voting could break the United States 
◊;https://news.ycombinator.com/item?id=21358238

◊; Ref
◊; App Used to Tabulate Votes Is Said to Have Been Inadequately Tested 
◊;https://news.ycombinator.com/item?id=22234593

In this chapter I'm going to speculate even more than I have in other chapters. Here I'll try to describe some problems with the current voting system and some possible improvements. The questionable part is that this system doesn't exist, it contains a number of unsolved problems and it's not even clear it should be based on a cryptocurrency or not.

I still want to bring this up because even if voting on a cryptocurrency is fundamentally unsound, the innovation in consensus mechanisms that cryptocurrencies have made might spur more research into this topic, which might in the end result in a better voting system.

And frankly, I just find the topic interesting.


◊subhead{Bush v. Gore}

◊(define bush-v-gore "https://en.wikipedia.org/wiki/Bush_v._Gore")


◊subhead{The problems with electronic voting}

Voting electronically is becoming more popular. The benefits are easy to see; they're more efficient, convenient and they can instantly count votes, avoiding the problem we saw in the 2000 U.S. presidential election. But there are significant drawbacks that might make them ◊link[georgia-legal-battle]{a very bad idea}:

◊ol{
    ◊li{Lack of transparency

        How do you know that your vote has been counted correctly? And that the machine didn't switch it out for some other vote? An electronic voting machine is largely a black box, one we're not sure how it works so we just hope it does the right thing.
    }
    ◊li{Hacking

        It's much easier to hack electronic voting machines---to ◊link[vote-flipping]{change votes from Clinton to Trump} for example---than to hack paper voting. With paper voting you'd have to have people on site to exchange paper votes for new paper votes, but hacking a computer can be done from the other side of the world.◊sn{no-testing}

        ◊note-pos{no-testing}

        ◊ndef["no-testing"]{
            There's a lot of focus on "hackers" being a problem, but there are less nefarious problems too. For instance the app used to tabulate votes during the Iowa caucuses in 2020 was ◊link[#:quote #t inadequately-tested]{inadequately tested}. It simply didn't work properly, which is always a risk with software.
        }
    }
    ◊li{Corruption

        In the same way hacking is a worry, so is corruption. If you want to influence votes all you'd have to do is switch out the voting machine, and after that nobody would notice. With paper voting it's harder since there are many more constantly watching what happens to the votes, so you'd have to bribe more people to get away with it.
    }
    ◊li{Privacy concerns

        Paper voting preserves your privacy very well. You walk behind a screen, select a paper and put it a box with hundreds of other papers, making it basically impossible to trace that one vote back to you. Simple and very effective.

        ◊link[chicago-privacy]{Not so with electronic voting}. The voting machine needs to verify your identity some way and computers can, and therefore we must assume they will, record everything that happens on it. This is information that a hacker could gain access to, and would be able to see exactly who you voted for.◊sn{191-mil}

        ◊note-pos{191-mil}

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

◊(define georgia-legal-battle "https://www.washingtonpost.com/world/national-security/in-georgia-a-legal-battle-over-electronic-vs-paper-voting/2018/09/16/d655c070-b76f-11e8-94eb-3bd52dfe917b_story.html")
◊(define inadequately-tested "https://www.nytimes.com/2020/02/03/us/politics/iowa-caucus-app.html")
◊(define chicago-privacy "https://www.upguard.com/breaches/cloud-leak-chicago-voters")
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

             The system is public so anyone can verify that it works like it's supposed to. This is different from other electronic voting schemes where there's always a certain amount of trust involved. There are audits there too, but then you have to trust the competence and integrity of the auditors, but here anyone can audit the system.◊sn{dont-trust-verify}

             ◊note-pos{dont-trust-verify}

             ◊ndef["dont-trust-verify"]{
                "Don't trust, verify." is a popular saying in the cryptocurrency sphere. But first you need to have a transparent system you can verify, otherwise you have to trust.
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

These transactions work like cryptocurrency transactions, so you cannot counterfeit them and manufacture votes from thin air. Well, the state could do it, but everyone can see exactly how many votes they give out, so if they give out more votes than there's eligible voters in the country... You know something is shady.◊sn{how-do-you-know?}

◊ndef["how-do-you-know?"]{
    Then how do you know that the votes are given out correctly and that the state distributes them fairly? The same we it works today---the voters are holding the state accountable.
}

It's easy to count the votes---just check how much each address holds. It's also easy for you to see that your vote has arrived to the correct voting address, and if it did you know your vote will count.

◊(define tokens "/tokens.html")

◊note-pos[#:top -47]{blank}
◊note-pos[#:top -9]{how-do-you-know?}


◊subhead{Unsolved problems}

The scheme I've presented is simple---too simple. There are many problems with it, some that might be solvable but others are, to my knowledge, unsolved.

◊ul{
    ◊li-neg{Privacy

            The big flaw is the poor privacy.  If you can connect token issuance with your identification---which the government will be able to---then they can see who you voted for. It has the same privacy problem that Bitcoin has, except it's even worse as there's always a direct link between you and your address.

            The solution would be to obscure the coin history between issuance of the token and when you cast your vote.  We could use the obfuscation techniques, described in the ◊link[priv-fung]{privacy and fungibility} part of the appendix, to accomplish this.◊sn{mixing?}

            ◊ndef["mixing?"]{
                Imagine for example if all voters had to go through a mixing state, where people trade a vote for another vote. If done correctly the state can't connect the final votes to the identities, while still be sure the right people had the ability to vote.
            }

            It's important to note that the privacy scheme has very high requirements. It's not enough that it seems to be good today, it has to hold up in 10, 20 or maybe even 100 years from now.

            ◊note-pos[#:top -7]{mixing?}
    }
    ◊li-neg{Key delivery

            This whole scheme rests on the ability and the trust that the state can somehow distribute votes fairly and correctly. I don't think the trust issue is different from how it works today, but there many details on how votes are distributed that needs to be ironed out.

            I do think it's a problem that can be solved. For example in Sweden we have ◊link[bank-id]{BankID}, an electronic citizen identification solution, that we use to file our taxes, login to banks and many other things. It's really like an electronic identification card that could in theory be used to authenticate electronic votes as well.◊sn{bankid-banks}

            ◊note-pos{bankid-banks}

            ◊ndef["bankid-banks"]{
                BankID is distributed by banks and not by the state, but in principle there's no reason why a simlar system couldn't.
            }
    }
    ◊li-neg{Stealing votes

            While the system itself could of course be hacked (anything could theoretically be broken), I see stealing individual votes as a bigger problem. For example if voting should be carried out on mobile phones, what if some ◊link[malware]{malware} has infected your phone and decides to change your vote? Or if a hacker can hack the voting app you use?

            One possible solution might be for people to change their votes before the voting is over, so they could verify their vote on another phone or computer, and do something about it if something has gone wrong. But this is problematic in other ways. For example it allows you to change your vote if you see the vote isn't going your way and it's not clear how this should be implemented in the first place.
    }
    ◊li-neg{Vote buying

            Another concern is that it might make buying and selling votes easier. With paper voting there's no easy way to prove you voted one way (other than bringing a camera with you and record your actions).

            But with this scheme you can with 100% certainty prove who you voted for. If you wanted to you could also give your vote to someone else, or they might even try to coerce you to do so.
    }
    ◊li-neg{Understandability

            If electronic voting was hard for people to understand and accept, this wouldn't be any easier. If anything "blockchain voting" might be even harder to understand, especially as many technologically proficient people still regard the blockchain as a panacea that can solve any problem.
    }
}


◊(define bank-id "https://www.bankid.com/en/")
◊(define malware "https://en.wikipedia.org/wiki/Malware")


◊subhead{Why a blockchain?}

The big question to ask is why would we want voting on a blockchain anyway? Why would we want to record our votes on a permanent database, when we might even want to allow people to reverse/change their votes? Why build a voting a scheme on an extremely inefficient system, that all cryptocurrencies and blockchain applications are?

I'm not sure you do. The big invention of cryptocurrencies is the consensus mechanism that makes it possible for people who don't trust each other to come to an agreement. This is what allows us to reduce the amount of trust in our proposed voting system, but you might not need to record your votes permanently in a blockchain to use it.◊sn{efficiency}

◊ndef["efficiency"]{
    Then again if we use a publicly verifiable voting scheme, we must assume all data will exist permanently. The only thing we might gain by skipping the blockchain is efficiency, which certainly shouldn't be discounted.
}

◊link[shuffling-public-keys]{Shuffling Public Keys} is for example a proposal for a peer-to-peer voting algorithm that doesn't use the blockchain, but it does use a consensus algorithm that's similar to ones you can find in the cryptocurrency space.◊sn{avalanche} I'm not qualified to comment on if it works or not, but I can say it doesn't solve all the problems that our proposed blockchain voting scheme have.

◊ndef["avalanche"]{
    It seems to me the ideas are similar to ideas presented in the ◊link[avalanche]{Avalanche consensus mechanism}.
}

We don't know what's the best way to improve our voting process is, and each proposal have their own pros and cons. It's likely recording votes on a blockchain is a bad idea, but there are some valuable ideas we might be able to use. In the end if cryptocurrencies' only contribution is to give the research a push forward, I think that's valuable.

◊;In the end if cryptocurrencies only contribution is to give a little push for research into voting improvements, I consider it a win.

◊note-pos[#:top -23]{efficiency}
◊note-pos[#:top -14]{avalanche}

◊(define avalanche "https://avalanchelabs.org/QmT1ry38PAmnhparPUmsUNHDEGHQusBLD6T5XJh4mUUn3v.pdf")
◊(define shuffling-public-keys "http://vixra.org/pdf/1905.0239v1.pdf")
◊(define priv-fung "/challenges.html#privacy-and-fungibility")

