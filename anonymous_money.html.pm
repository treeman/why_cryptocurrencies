#lang pollen

◊(define-meta title "Anonymous money")
◊(define-meta subtitle "Reclaim your financial privacy with cryptocurrencies")
◊(define-meta updated "2019-09-17T07:19:33+02:00")
◊(define-meta uuid "9f90581c-24f1-4653-9b4a-d86a9ec9e365")


◊epigraph{
  ◊qt[#:author "Edward Snowden" #:date "May 21, 2015"
      #:url "https://www.reddit.com/r/IAmA/comments/36ru89/just_days_left_to_kill_mass_surveillance_under/crglgh2/"]{
    Arguing that you don't care about the right to privacy because you have nothing to hide is no different than saying you don't care about free speech because you have nothing to say.
  }
}

The erosion of personal privacy is one of the many important issues in today's society. Everything we do digitally is tracked---what sites we visit, how long and what we do there. This data is then packaged and stored, waiting to be used to convince us to buy stuff or used to attack us. Even what we do with our own money is tracked and used to figure out how to separate it from us.

One of the very good things about cash---regular coins or bills---is that there's very little tracking on them. You can buy things with them, or give them to someone, and nobody else needs to know about it. Unfortunately people aren't using cash as much anymore, some have even stopped accepting cash, and all the regular alternatives come with the privacy trade-off.

Cryptocurrencies can help us with this---they're both digital ◊link[anon]{and anonymous}. Just like cash they're a tool to keep your privacy.◊sn{vpn}

◊ndef["vpn"]{
    For instance if you want to purchase a VPN, a domain or a VPS anonymously it's probably a good idea to use cryptocurrencies.

    But remember that most cryptocurrencies, Bitcoin included, are ◊link[anon]{only pseudo-anonymous} and can be traced.
}


◊subhead{What is privacy and anonymity?}

It's easy to mix-up the terms "privacy" and "anonymity". They're related, but different:

◊dl{
  ◊dt{Privacy}
  ◊dd{Concerns content, for example text messages you send to your friends.}

  ◊dt{Anonymity}
  ◊dd{Refers to your identity, for example that I, Jonas, received the text messages.}
}

In practice they often overlap. For example if the contents of all of my email were known, it would be a breach of my privacy. But it would also affect my anonymity, since my name is included everywhere.

◊;https://invisibler.com/privacy-and-anonymity/


◊subhead{Why privacy matters}

Privacy and anonymity is an important issue in the modern world and there are countless examples of privacy violations everywhere. Before we get to some of them we first need to address why privacy matter, because today government officials, company owners, the news and regular people all ask the same questions:

Why would you want to stay anonymous? What are you hiding? Are you criminal?◊sn{summary-discussion}

◊ndef["summary-discussion"]{
    Privacy discussions can often be summarized as:

    ◊span[#:class "talking"]{
      ◊trow{Why do I need privacy? I have nothing to hide.}
      ◊trow{Then pull your pants down, give me a dickpick, your email password and your credit card number.}
    }

    I can't promise I'll do better, but I'll try.
}

◊(define (trow . args)
  `(span ((class "row")) ,@args))


◊subhead3{It's natural to seek privacy}

When people are alone and relaxed they do things they otherwise wouldn't. Maybe you like to dance when you're alone, sing in the shower or scratch yourself somewhere... nice. If you're caught in the act you immediately stop what we're doing and feel embarrassed.

If you don't recognize the situation please watch the scene where Hugh Grant plays the ◊link[love-actually-dance]{dancing prime minister in Love Actually}. Even if you do know what I'm talking about the scene's so good you should watch it anyway.

◊img[#:src "/images/dancing.png"]{
    What's better than dancing naked, singing your favorite song, without a care in the world?
}

◊(define love-actually-dance "https://www.youtube.com/watch?v=zcgxBHBsl-4")

I have a child who's two years old, and even he wants privacy sometimes. He likes to build and hide in a cabin made of pillows, and if I disturb him he pushes me and shouts “Go away!”. After we recently renovated his room he was ◊em{so happy} that he had a room of his own again, which he likes to hide out in when he's pooping.◊sn{children-privacy}

◊ndef["children-privacy"]{
    It's really quite fascinating. Sometimes I can hug him while he's playing, but sometimes I'm not even allowed to be in the same room. I guess he just wants to be alone from time to time.
}

People may say privacy don't matter yet their actions tell a different story. For example Facebook's founder Mark Zuckerberg has said that privacy is ◊link[zuckerberg-privacy-not-norm]{no longer a social norm}, but then he buys up four homes surrounding his home ◊link[zuckerberg-buy-privacy]{because he wants privacy}.

After all we don't have curtains or blinders on our windows because we do something illegal, it's because we want control over our privacy.

◊(define identity-theft "https://www.forbes.com/sites/laurashin/2014/11/18/someone-had-taken-over-my-life-an-identity-theft-victims-story/")
◊(define zuckerberg-buy-privacy "https://www.inquisitr.com/989057/facebooks-zuckerberg-buys-his-neighborhood-because-get-this-he-wants-privacy/")
◊(define zuckerberg-privacy-not-norm "https://www.theguardian.com/technology/2010/jan/11/facebook-privacy")


◊subhead3{Personal security}

Caring about privacy is a natural instinct---for good reason. It's not just about avoiding embarrassment, it's also for your own personal safety. In fact privacy is closely related to security. Your passwords and credit card numbers are obvious examples, but there are more:

◊ol{
  ◊li{Identity theft can ruin your life

      When someone assumes your identity, and use it to issue credit cards or promote scams, it can ruin your credit score, cost you millions, and force you to abandon your job and your house. Using only your private information people can literally ◊link[identity-theft-story]{take over your life}.◊sn{how-to-destroy-someones-life}
  }
  ◊li{Criminals target rich people

      The most important advice if you win the lottery is to ◊link[windfall]{not tell anyone}---people will ◊link[windfall-happy]{target you like vultures}. The same advice is given to people who want to invest in physical gold, for similar reasons.

      The best way to get targeted by criminals is to let them know how rich you are.
  }
  ◊li{Crime of opportunity

      Many crimes aren't carried out by super-criminals with a master plan. Often they're done in the heat of the moment, when an opportunity arose. For example if everyone knows you're away for a week, the risk for a burglary rises. Or if you tell everyone that you're carrying $10,000 in your wallet, the risk of getting mugged increases.
  }
}

◊ndef["how-to-destroy-someones-life"]{
    I'm a problem solver, and I do wonder how everyday problems are solved. For example how milk ends up in the milk packages or how you paint a heart in the sky with an airplane. Not because I need to solve them---and I don't even want to know the right answer---I just need to let my mind work on something.

    Sometimes the questions are darker, like what's the most effective way to destroy someones life (if we rule out physical harm). And identity theft is the tool I would use.
}

◊(define identity-theft-story "https://www.forbes.com/sites/laurashin/2014/11/18/someone-had-taken-over-my-life-an-identity-theft-victims-story/")
◊(define windfall "https://www.reddit.com/r/personalfinance/wiki/windfall")
◊(define windfall-happy "https://www.reddit.com/r/AskReddit/comments/24vo34/whats_the_happiest_5word_sentence_you_could_hear/chb4v05/?context=1")


◊subhead3{Others have important things to hide}

Even if you don't think you have anything to hide, others do. Here are some examples where lack of economic privacy is harmful for some individuals:◊sn{focus-economic}

◊ndef["focus-economic"]{
    I focus on the economic side of privacy here, because that's related to cryptocurrencies, but it should be easy to find examples in other areas.
}

◊ol{
  ◊li{Unwanted pregnancies

      There was a story that went viral years ago on how Target ◊link[teenage-pregnancy]{predicted a teenage pregnancy and exposed it to her father}. In a normal western household it might not be that big of a deal, but ◊link[murder-family-honor]{thousands of women are killed each year} for family "honor". Often for much less than a teenage pregnancy, such as ◊link[dowry-murder]{not getting paid enough for marrying the bride}.
  }
  ◊li{Sexual preferences

    While homosexuality is becoming more accepted it's still ◊link[gay-illegal]{illegal in some countries} where you might face execution. Similar to the story of the girl's pregnancy above, having a history of your purchases might expose you. (Why did you visit this gay bar?)

    There's also nothing wrong with having a fetish and engaging in strange sexual fantasies in your own home, but maybe you don't want your neighbourhood to know you bought a vibrating horse dildo.◊sn{porn-story}

    ◊ndef["porn-story"]{
        I read a story long ago, but I can't remember if it was real or made up.

        It was about a couple and their son who liked to play with their neighbours. They were happy to let him, the neighbours were really friendly, and they liked to spend time with them too. But one day they found an amateur porn DVD---the neighbours apparently liked to create porn.

        The DVD never harmed them, and their son didn't know about it, but they never allowed their son to visit the neighbours anymore, and the couple stopped spending time with them because it "felt weird".

        I guess the point of the story is that some things are best left unknown.
    }
  }
  ◊li{A cause for oppression

    In China if you're end up on the ◊link[china-social-credit]{wrong side of their social credit system}, you're banned from spending on "luxuries". If prospective business partners or customers discovers your status as a "deadbeat" you might get shunned and your hope of climbing out of your situation disappear.

    ◊;Keeping your economy private to outsiders would be a great help.
  }
}

As Snowden's quote in the beginning of the chapter says: just because you choose not to exercise your right, why should you remove the right for others? Privacy should be a ◊em{choice}---not something that's chosen for you.

◊(define teenage-pregnancy "https://www.nytimes.com/2012/02/19/magazine/shopping-habits.html?pagewanted=all&_r=0")
◊(define murder-family-honor "https://www.nationalgeographic.com/culture/2002/02/thousands-of-women-killed-for-family-honor/")
◊(define dowry-murder "https://en.wikipedia.org/wiki/Dowry_system_in_India#Dowry_murder")
◊(define gay-illegal "https://www.theguardian.com/world/2016/jun/21/gay-lgbt-muslim-countries-middle-east")
◊(define china-social-credit "https://www.inkstonenews.com/china/chinas-13-million-discredited-individuals-face-discrimination-thanks-social-credit-system/article/3003319")


◊subhead3{Privacy is a human right}

That privacy is important is widely acknowledged. It is for example recognized as a human right by the United Nations, along with the right to food, clothing and medical care:

◊qt[#:src "Universal Declaration of Human Rights"
    #:url "https://www.un.org/en/universal-declaration-human-rights/"]{
  No one shall be subjected to arbitrary interference with his privacy, family, home or correspondence, nor to attacks upon his honour and reputation. Everyone has the right to the protection of the law against such interference or attacks.
}

Children's right to privacy is also acknowledged by UNICEF:◊sn{adult-version}

◊ndef["adult-version"]{
    I was going to quote the ◊link[child-rights-adult]{grown-up version} of the children's rights, but they use a muddy language that's difficult to read.
}

◊(define child-rights-adult "https://www.unicef.org/child-rights-convention/convention-text")

◊qt[#:src "Convention on the Rights of the Child: The children's version"
    #:url "https://www.unicef.org/child-rights-convention/convention-text-childrens-version"]{
  Every child has the right to privacy. The law must protect children’s privacy, family, home, communications and reputation (or good name) from any attack.
}


◊subhead{We're living in Stasi's wet dream}

◊ol{
  ◊li{Snowden showed...}
  ◊li{Google, Facebook, everyone are selling our data}
  ◊li{Credit card companies know everything about us and are selling our data}
}

◊qt[#:author "Edward Snowden"
    #:src "Permanent Record"
    #:quote-src #t
    #:url permanent-record-book]{
    Once the ubiquity of collection was combined with the permanency of storage, all any government had to do was select a person or a group to scapegoat and go searching---as I'd gone searching through the agency's files---for evidence of a suitable crime.
}

Credit cards have a privacy problem
◊link{https://news.ycombinator.com/item?id=20800115}

Administration Using the Full Power of the Surveillance State on Whistleblowers
◊link{https://news.ycombinator.com/item?id=20615084}

◊link{https://www.cbc.ca/news/business/banking-information-shared-with-third-parties-1.5102931}

◊link{https://news.bitcoin.com/snowden-us-seizing-my-book-revenue-is-good-for-bitcoin/}



Here people perceive a trade-off: they reason that they can sacrifice their own privacy, if that means we'll increase the national security, for the greater good. Because if nobody has any privacy, surely it's easier to catch more terrorists?

This reasoning, while admirable, is flawed. Removing everyones privacy will jeopardize their personal security, yet the bad guys will still have access to privacy through strong encryption.◊sn{strong-encryption}

◊ndef["strong-encryption"]{
    With strong encryption it's impossible to read what you write or access your data.
}

◊qt[#:author "Philip R. Zimmermann"]{
  If privacy is outlawed, only outlaws will have privacy.
}

◊;Where has this slippery slope lead us?

Supporting finanical privacy makes me an extremist
◊link{https://www.coingecko.com/buzz/erik-voorhees-supporting-financial-privacy-extremist}

◊subhead{Fear is the mind-killer}

◊qt{
    The road to hell is paved with good intentions.
}

I think people often give up their privacy because of ◊strong{fear}. Since the ◊link[9-11]{September 11 attacks} we've been showered with fear-inducing news and propaganda, making our minds numb. This fear of terrorism (and murderers, pedophiles and other Bogeymen) has made us go to war, consent to torture and made us give up our human rights.◊sn{retaliation}

◊ndef["retaliation"]{
    Just to put the overreaction in perspective: 2,977 people died in the 9/11 terrorist attacks, but one million died because of the American retaliation.  
    (Edward Snowden, “◊link[permanent-record-book]{Permanent Record}”)

    That's like sentencing a shoplifter to death---a completely disproportionate response.
}

Terrorism is real and scary, there's no denying that. But our level of fear is irrational and would be better placed worrying about cars or unhealthy food---both of which kill many more people than terrorism do. Above all we should not throw out all our rights in a desperate attempt to calm our fears.

Fear also forces people to be as unassuming as possible---to avoid trouble. When ◊em{everything} you do is recorded, you must assume that you're always being watched.

◊qt[#:author "George Orwell"
    #:src "1984"
    #:quote-src #t
    #:url 1984-book]{
  There was of course no way of knowing whether you were being watched at any given moment. How often, or on what system, the Thought Police plugged in on any individual wire was guesswork. It was even conceivable that they watched everybody all the time.
}

◊(define 9-11 "https://en.wikipedia.org/wiki/September_11_attacks")


◊subhead{Reclaiming our financial privacy}

◊; I don't have anything to hide
◊; https://www.privacytools.io/

◊; TED talk, very good
◊; https://www.ted.com/talks/glenn_greenwald_why_privacy_matters


The ◊link[great-man]{◊em{great man theory}} of history is the idea that most of history can be explained by the impact of great men. Julius Caesar, Genghis Khan and Hitler are examples of "great men". (They don't have to be good, just cause large changes.) If Edward Snowden will be considered a great man depends on the effects of his leaks---they might mark a turning point for government surveillance, and change the course of history, or they might be forgotten as a sidenote in the history books.◊sn{nothing-changed}

◊ndef["nothing-changed"]{
    Unfortunately it doesn't seem like anything has really changed.
}

While the great man theory is interesting, wouldn't it be better to describe modern history using a ◊em{great technology theory}? For example the printing press, the internal combustion engine, the atomic bomb, the transistor and the internet have had great impact on history---greater than any single person I can think of.◊sn{invention}

◊ndef["invention"]{
    Proponents of the great man theory might say that these are inventions of a great man (or woman). To which I'd say that they weren't the result of a single person, but of many small improvements over existing tech, made by countless of people.
}

So instead of looking for someone to solve our privacy problems, maybe technology is our solution? With strong encryption we can keep our messages private and our data safe, and with the great innovation called tape we can prevent our webcams from spying on us.

But so far we've had to surrender our privacy to gain access to digital payments and even to our own money. Because ◊link[anon]{cryptocurrencies are anonymous}---nobody can see the transactions◊sn{bitcoin-worse} we do or know how much money we have---with cryptocurrencies we might claw back some of that privacy, and isn't that pretty great?

◊ndef["bitcoin-worse"]{
    Note that Bitcoin is sometimes even worse for privacy than regular payments. In Bitcoin anyone you send money to will see where your money came from, and might be able to trace all your money that way. Mixing services or cryptocurrencies like Monero tries to fix this problem.
}

◊(define great-man "https://en.wikipedia.org/wiki/Great_man_theory")
◊(define shoulders-of-giants "https://en.wikipedia.org/wiki/Standing_on_the_shoulders_of_giants")
◊(define signal "https://www.signal.org/")
◊(define anon "/properties_of_a_cryptocurrency.html#anonymous")
◊(define properties "/what_is_money.html#what-properties-does-good-money-have?")

