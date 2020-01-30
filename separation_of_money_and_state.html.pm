#lang pollen

◊(define-meta title "Separation of money and state")
◊(define-meta subtitle "When countries don't manage their own money")
◊(define-meta updated "2019-12-29T05:27:16+01:00")
◊(define-meta uuid "a5636cbf-bec1-4795-8c66-5725b0eec7bf")

◊img[#:src "/images/bitcoin-priest.png" #:class "slim"]{}

When I first started thinking about cryptocurrencies I thought they were just useful for some people who couldn't use regular transactions, like buying weed or things on a darknet market. Or that it was a better payment system as there was no middleman to skim off large fees from all transactions. That's useful, but it didn't strike me as revolutionary.◊sn{fees}

◊ndef["fees"]{
    I do think ◊link[cheaper-faster]{avoiding 1--3%} fees on practically all digital payments is an under-appreciated benefit of cryptocurrencies. It might be overshadowed by the volatility, but the potential benefit to the economy is absolutely huge.
}

But the idea of separating money from state made me go "Wow, that could actually be huge." We're talking about money with ◊link[are-cryptos-money]{excellent monetary properties} that's not controlled by any state, and if adopted on a large scale it would change the global economy forever.

◊note-pos[#:top -11]{fees}


◊(define cheaper-faster "/cheaper_faster.html")


◊subhead{Religion and state}

◊qt[#:author "Sabaton"
    #:src "Carolus Rex"
    #:quote-src #t
    #:url "https://www.youtube.com/watch?v=-yIZBUgKfuw"
    #:center #t]{
  I was chosen by heaven
  Say my name when you pray
  To the skies
  See Carolus rise
}

I know it might be difficult to entertain the notion that a country shouldn't control their own money, and that the mere suggestion is outrageous.  If this is the case for you, consider the historically similar relationship between religion and state:

For many centuries, millennia even, religion and the state were inseparable. I'm not even sure it was a conscious decision, rather the mere idea that it could be any other way was simply unthinkable. For many that's just how it was, like how the sun rose every morning or that you got hungry without food.

Countless rulers have based their legitimacy on religious grounds, that they should rule because God says so. This is useful since you have to question God to question them, and who are you to question God? For example both the Roman emperors and the Japanese emperors used this to legitimise themselves. Even today it's very common that the church should be the one to crown the kings and queens, as if to say "we give you the right to rule".◊sn{carolus-rex}

◊ndef["carolus-rex"]{
    Charles XII of Sweden, also called "Carolus Rex", acknowledged the power of God but rejected the church when he placed the crown upon his own head instead of letting someone from the church do it.
}

This is why it was a big deal when the Swedish king ◊link[gustav-vasa]{Gustav Vasa} took steps towards the ◊link[reformation]{Protestant Reformation}. It wasn't motivated by religious reasons---he simply wanted control over the Catholic Church's property, which was the dominating religion at the time. In a sense the Diet at Västerås in 1527 was the first step in separating the church from the Swedish state, a process that was ◊link[separation]{completed in 2000} when they were formally separated.◊sn{after-reformation}

◊ndef["after-reformation"]{
    After the reformation Sweden largely became Protestantic and is now one of the ◊link[least-religious]{least religious} countries in the world.
}

Separating church from the state was once unthinkable, yet it's now a given that religion shouldn't dictate what the state should do. In a similar way the notion that money could be separated from the state is today largely considered unthinkable, but this might change too.

◊note-pos[#:top -22]{carolus-rex}
◊note-pos[#:top -11]{after-reformation}


◊(define gustav-vasa "https://www.britannica.com/biography/Gustav-I-Vasa")
◊(define reformation "https://www.britannica.com/event/Reformation")
◊(define separation "https://popularhistoria.se/sveriges-historia/kyrkan-och-staten-en-historisk-separation")
◊(define least-religious "https://www.worldatlas.com/articles/least-religious-countries-in-the-world.html")

◊;Sweden 1 Jan 2000 formally separated the church from the state.
◊;https://www.dagen.se/dokument/sa-fri-ar-svenska-kyrkan-fran-staten-egentligen-1.1632522
◊;https://popularhistoria.se/sveriges-historia/kyrkan-och-staten-en-historisk-separation
◊;https://en.wikipedia.org/wiki/Gustav_I_of_Sweden
◊;https://www.britannica.com/biography/Gustav-I-Vasa


◊subhead{Not that unusual}

In practice some countries have already separated money from their state, as they use money someone else control. For example the ◊link[euro]{Euro} is managed by the ◊link[ecb]{European Central Bank (ECB)}, and the countries that use the Euro have very little influence in the ECB's decision-making (well, most of them anyway). There are also countries that ◊link[countries-use-us]{use the U.S. dollar as their official currency}, while having no say in what the U.S. does with it.

Gold might also be an example of money outside of state control---there's nobody with exclusive access to gold after all. But in practice someone has to cast the gold to coins for it to be usable as money, including a "government approved" stamp on them, which gives some sort of control over the money. After all, it's difficult to determine what a coin is made of so we just trust the stamp on it.◊sn{debasement}

◊ndef["debasement"]{
    Because people don't actually verify the amount of gold in the coins, they could for example slowly decrease the amount of gold in the coins. This would enable them to make more coins and effectively increase the money supply. This is called ◊link[debasement]{◊em{debasement}} and has been very common historically.
}

◊(define debasement "https://www.investopedia.com/terms/d/debasement.asp")

Maybe a better example is shell money, or other money found in nature, where you just pick them up and start using them. Although they're lacking compared to coins or modern money, there's no one in charge of minting or stamping shells.

So the idea that a state doesn't require control over their own money isn't really that strange, as there are many examples of the contrary.

◊note-pos[#:top -14]{debasement}


◊subhead{The difference with cryptocurrencies}

With the various historical examples of how money can exist without state backing we might wonder what cryptocurrencies bring to the table. Why would they be different?

For starters all modern examples where a state doesn't control their own money simply mean they're using someone else's money. There's always someone in control of the money, in this case it's just some other country or institution. With cryptocurrencies there's no single entity in control, meaning it's money truly separate from state.◊sn{indirect-control}

◊ndef["indirect-control"]{
    States can apply indirect control. For example if the U.S. passes anti-cryptocurrency laws, it would have a negative effect on the usefulness of cryptocurrencies. Similarly if they would pass beneficial laws, cryptocurrencies would become more useful, simply because the U.S. have such a large influence throughout the world.
}

Cryptocurrencies are also different from the "natural" forms of money, such as shells or stones, because they have better ◊link[what-is-money]{monetary properties}. For instance the supply in a cryptocurrency is provably limited, while you always run the risk of someone discovering a mountain of shells on some remote island somewhere. Cryptocurrencies being digital also means they're easier to transport and to send over larger distances, making global interaction much easier.

While historical examples of states without direct control over their money exists, the unique properties make cryptocurrencies well suited to separate money from state for real.◊sn{challenges}

◊ndef["challenges"]{
    Assuming cryptocurrencies can solve their difficult ◊link[challenges]{challenges}, such as scaling and privacy concerns.
}

◊note-pos[#:top -21]{indirect-control}
◊note-pos{challenges}


◊subhead{What will the future hold?}

It's impossible to predict the future. For example the iPhone was released in 2007 and today almost everyone carry a smartphone in their pocket. This is particularly crazy because each is ◊link[apollo-smartphone]{◊em{millions} of times more powerful} than all of the combined computing power of NASA that put man on the moon 50 years ago.

Nobody could've predicted this explosive technological development, so how can we predict where cryptocurrencies will take us? I don't think they'll completely revolutionize the world in a decade, but it's impossible to say what will happen 50 or 100 years from now.

Will countries drop fiat and instead adopt cryptocurrencies? Would this force them to make more responsible decisions and to steer clear of ◊link[financial-crisis]{moral hazard}? Or would they fail spectacularly, issuing a new ◊link[great-depression]{Great Depression}? Maybe cryptocurrencies will fail, but instead we adopt digital currencies issued and controlled by multinational corporations, truly fulfilling the cyberpunk dystopian nightmare?

Maybe cryptocurrencies will co-exist as an alternative to fiat, and help limit the ◊link[defective-system]{soaring debt and money printing machines}? Or will they instead hamstring countries who need to act, but now cannot?◊sn{ww1}

◊ndef["ww1"]{
    The Gold Standard was largely abandoned during the outbreak of World War I, so the countries could print money to pay for the war.
}

Of course cryptocurrencies might just be a fad that will be forgotten when people realize they don't provide any real value. (This would be quite unfortunate for me, since I've just written an entire book on how I think they do provide value.)

Which scenario is more likely? And what would the ideal scenario look like? That's something I'll leave up to you, the reader, to decide.

◊note-pos[#:top -14]{ww1}

◊(define great-depression "https://en.wikipedia.org/wiki/Great_Depression")
◊(define ecb "https://en.wikipedia.org/wiki/European_Central_Bank")
◊(define euro "https://en.wikipedia.org/wiki/Euro")
◊(define countries-use-us "https://www.investopedia.com/articles/forex/040915/countries-use-us-dollar.asp")
◊(define apollo-smartphone "https://www.zmescience.com/research/technology/smartphone-power-compared-to-apollo-432/")
◊(define e-krona "https://www.riksbank.se/en-gb/payments--cash/e-krona/")
◊(define better-currency "/better_currency.html")
◊(define financial-crisis "/financial_crisis.html")
◊(define defective-system "/a_defective_system.html")
◊(define what-is-money "/what_is_money.html")
◊(define challenges "/challenges.html")
◊(define are-cryptos-money "/are_cryptocurrencies_money.html")
