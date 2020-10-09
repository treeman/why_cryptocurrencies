#lang pollen

◊(define-meta title "A Swiss bank account in your pocket")
◊(define-meta subtitle "Unlimited and untraceable money on your smartphone")
◊(define-meta published "2020-01-02T00:00:00+01:00")
◊(define-meta updated "2020-10-09T19:49:09+02:00")
◊(define-meta uuid "d1144eb3-b2ac-4c89-b2e0-4a03f377172c")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Gabriel Santiago" #:src "Android Netrunner" #:quote-src #t #:url "https://netrunnerdb.com/en/card/01017"]{
    Of course I steal from the rich. They’re the ones with all the money.
  }
}

◊; To read:
◊; https://news.ycombinator.com/item?id=21872987

If you've seen spy movies, or maybe read the Da Vinci Code, you might be familiar with a private bank account. It's one where you don't need any identification other than the bank account number and a password to access, and you have access to all your money safely, securely and most importantly privately.◊mn{gringotts}

This is actually a great description of how cryptocurrencies work. You just need the account number (◊link[bitcoin-addresses]{an address}) and the password (◊link[public-key-cryptography]{a private key}) to access your money, which you can do from anywhere in the world using the smartphone in your pocket.

◊ndef["gringotts"]{
    Even the ◊link[gringotts]{Gringotts Wizarding Bank} in Harry Potter operates in a similar manner. But except for a password they use a physical key.
}

◊note-pos[#:top -9.5]{gringotts}

◊(define gringotts
   (x-ref
     "2020-01-02"
     "https://harrypotter.fandom.com/wiki/Gringotts_Wizarding_Bank"
     "Gringotts Wizarding Bank"))


◊subhead{The myth of a Swiss bank account}

This is how ◊link[swiss-bank-account]{Swiss bank accounts} are usually portrayed. While they can offer more privacy than other banks, it's just a myth that they offer truly private banking. Due to the additional privacy compared to the other banks, they also have tough anti-money-laundering laws that require more identification than other banks and they also require proof of where the money comes from.

Recently Switzerland has ◊link[swiss-exchange]{begun sharing bank details} of foreign account holders automatically with other countries. At the time of writing they share data with ◊link[swiss-more-countries]{more than 60 countries}, and more will join. I think it's fair to say that Swiss bank accounts don't live up to the private bank account dream.

Cryptocurrencies on the other hand can fulfill the dream.◊mn{private?}

◊ndef["private?"]{
    How private are cryptocurrencies really? Some are more private than others, see the ◊link[privacy-challenge]{discussion of the privacy challenge} for more information.
}

◊(define swiss-bank-account
   (x-ref
     "2020-01-02"
     "https://www.investopedia.com/ask/answers/08/swiss-bank-account.asp"
     "Swiss Bank Account"))
◊(define swiss-exchange
   (x-ref
     "2020-01-02"
     "https://www.swissinfo.ch/eng/financial-transparency_switzerland-in-the-age-of-automatic-exchange-of-banking-information/45234706"
     "Switzerland in the age of automatic exchange of banking information"))
◊(define swiss-more-countries
   (x-ref
     "2020-01-02"
     "https://www.swissinfo.ch/eng/automatic-exchange-_switzerland-grants-18-more-countries-access-to-bank-details/45424544"
     "Switzerland grants 18 more countries access to bank details"))


◊subhead{Shell companies and offshore bank accounts}

A common argument against truly private bank accounts is that they enable tax fraud and money laundering. And it's a valid point, but there's just one issue: it's already possible, and it's happening at a global scale.

The ◊link[panama-papers]{Panama Papers} was a gigantic leak that detailed the shady businesses of shell companies and how they're used to hide ownership of assets. It detailed how politicians, celebrities, drug dealers and the global elite obscured their wealth and in large part engaged in tax fraud and money laundering.◊mn{panama-links}

◊ndef["panama-links"]{
    There's an excellent ◊link[panama-papers-doc]{documentary about the Panama Papers} I can recommend.
}

◊;There's also a movie, “◊link[the-laundromat]{The Laundromat}”, related to the Panama Papers. It's not as good, but there were some good points made.

There are other reports, such as the ◊link[offshore-leaks]{Offshore Leaks}, the ◊link[bahamas-leaks]{Bahamas Leaks} and the ◊link[paradise-papers]{Paradise Papers}, which all say that the use of shell companies and offshore bank accounts are used on a massive scale for tax fraud and money laundering. (In practice they're pretty close to the mythical Swiss bank account.)

But they're not just for avoiding taxes. Look at celebrities for instance, they have tabloids dedicated to blow up any minor detail of their life into this huge scandal. It makes sense for them to try to keep their finances hidden, which is exactly what a spokesman for Emma Watson, who got named in the Panama Papers, claimed:

◊qt[#:url emma-watson
    #:src "Spokesman for Emma Watson"]{
  Emma receives absolutely no tax or monetary advantages from this offshore company whatsoever, only privacy.
}

◊(define emma-watson
  (x-ref
    "2020-01-02"
    "https://www.telegraph.co.uk/news/2016/05/10/panama-papers-emma-watson-named-in-latest-data-release/"
    "Panama Papers: Emma Watson named in latest offshore data release"))

It's up to you if you believe them or not. As the cynic that I am, I remain skeptical, but at the same time I sympathize with the privacy concern---I did after all dedicate ◊link[private_money]{an earlier chapter} to the topic. If you haven't read the chapter I suggest you do so now, as it tries to explain why it's important that financial privacy is available for everyone.◊mn{small-community}

◊ndef["small-community"]{
    I'm personally worried about the potential problems that the lack of financial privacy may cause. In Sweden your tax records are public, and every year in the small community I live in there's discussion about the last years "rich list"---a list of the people who earned to most taxable income in a year.

    What would happen ◊strong{if} cryptocurrencies skyrocketed to the moon, and I suddenly became very rich? Everyone would probably know about it, and people wouldn't look at me the same way. Maybe I wouldn't even feel safe here anymore, as a target would be painted on my back?
}

◊(define panama-papers
   (x-ref
     "2020-01-02"
     "https://www.icij.org/investigations/panama-papers/"
     "The Panama Papers: Exposing the Rogue Offshore Finance Industry"))
◊(define paradise-papers
   (x-ref
     "2020-01-02"
     "https://www.icij.org/investigations/paradise-papers/"
     "Paradise Papers: Secrets of the Global Elite "))
◊(define offshore-leaks
   (x-ref
     "2020-01-02"
     "https://www.icij.org/investigations/offshore/"
     "Secrecy for Sale: Inside the Global Offshore Money Maze"))
◊(define bahamas-leaks
   (x-ref
     "2020-01-02"
     "https://www.icij.org/investigations/offshore/former-eu-official-among-politicians-named-new-leak-offshore-files-bahamas/"
     "Former EU Official Among Politicians Named in New Leak of Offshore Files from The Bahamas"))
◊(define panama-papers-doc
   (x-ref
     "2020-01-02"
     "https://www.panamapapersdoc.com/"
     "The Panama Papers"))
◊(define the-laundromat
   (x-ref
     "2020-01-02"
     "https://www.imdb.com/title/tt5865326/"
     "The Laundromat (2019)"))


◊subhead{Absurd inequality}

◊book-qt[animal-farm-book]{
  All animals are equal, but some animals are more equal than others
}

While tax evasion through offshore banking is problematic, it pales to the problem that in practice there's another set of tax rules only for the super rich. Let's see what the president of the United States has to say about tax evasion:

◊qt[#:url trump-clinton
    #:src "Trump debates with Clinton"]{
    Clinton: He didn't pay any federal income tax.
    Trump: That makes me smart.
}

◊(define trump-clinton
   (x-ref
     "2020-01-02"
     "https://www.youtube.com/watch?v=uBZR1-onmAo"
     "Trump Brags About Not Paying Taxes: \"That Makes Me Smart\" (30 sec)"))

No Mr. President, that makes you rich. You see, this kind of tax evasion is only available for the super rich.◊sn{crap-smart-rich} And it's not the top 1% we're talking about, more like the top 0.001%. We're talking about people who can afford private chefs and travel the world in private jets and yachts. (Alright, maybe it's not ◊em{only} for the super rich, you might be able to do it even if you're only very rich, but you have to have a very large amount of money to make tax evasion in this way feasible.)

◊ndef["crap-smart-rich"]{
    And please don't gimme that crap about how all rich people are smart. It's just what rich people tell themselves, to make them feel smart. Most were ◊link[self-made-myth]{born with a golden spoon} in their mouth, and even the self-made super rich had a ton of luck and help.
}

◊(define self-made-myth
   (x-ref
     "2020-01-02"
     "https://edition.cnn.com/2018/10/04/opinions/trump-nyt-kavanaugh-yale-self-made-man-myth-collins/index.html"
     "Trump, Kavanaugh and the myth of self-made success"))
◊(define tax-evasion-and-inequality
   (x-ref
     "2020-01-02"
     "http://gabriel-zucman.eu/files/AJZ2019.pdf"
     "Tax Evasion and Inequality (PDF)"))

This is why you don't see the names of normal people in the Panama Papers---no matter how smart they may be---but instead we find names like Lionel Messi, Donald Trump and Vladimir Putin.◊sn{names}

◊ndef["names"]{
    It's funny that you can find Trump's name in the Panama Papers 3,450 times, while ◊link[putin-proxies]{Putin uses proxies} to try and hide his involvement. I wonder, does that make Putin smarter than Trump?
}

Here I use the term ◊em{tax evasion} instead ◊em{tax fraud} because, believe it or not, it's often legal! If you're rich enough you can hire tax experts who'll find the loopholes in the tax laws so you can ◊link[tax-evasion-and-inequality]{avoid the taxes normal people have to pay}.  And if you do happen to step on the wrong side of the law, you can hire the very best (and very expensive) lawyers to keep you out of prison. But you shouldn't worry about that too much, since the rich and powerful also lobbies the law makers to make the laws beneficial for them and to keep the ◊link[irs-gutted]{IRS starved for funds}.◊sn{companies-too}

◊ndef["companies-too"]{
    It's not just rich individuals that avoid taxes, it's big companies too. In 2018, 60 of the largest companies in the USA ◊link[no-corp-taxes]{paid no taxes} on pre-tax income of 79 billion dollars.
}

◊(define no-corp-taxes
   (x-ref
     "2020-01-02"
     "https://www.cbsnews.com/news/2018-taxes-some-of-americas-biggest-companies-paid-little-to-no-federal-income-tax-last-year/"
     "60 of America's biggest companies paid no federal income tax in 2018"))

◊qt[#:src "Report: Billionaire Bonanza 2017"
    #:url "https://ips-dc.org/report-billionaire-bonanza-2017/"]{
  The three wealthiest people in the United States — Bill Gates, Jeff Bezos, and Warren Buffett — now own more wealth than the entire bottom half of the American population combined
}

The world is just extremely unfair, and if anything it should be the other way around. The poor should pay less taxes, while the rich should pay more. At least this would have a semblance of fairness.

◊note-pos[#:top -48]{crap-smart-rich}
◊note-pos[#:top -34]{names}
◊note-pos[#:top -20]{companies-too}

◊(define db
   (x-ref
     "2020-01-02"
     "https://offshoreleaks.icij.org/"
     "Offshore Leaks Database"))
◊(define putin-proxies
   (x-ref
     "2020-01-02"
     "https://www.icij.org/investigations/panama-papers/20160403-putin-russia-offshore-network/"
     "All Putin’s Men: Secret Records Reveal Money Network Tied to Russian Leader"))
◊(define irs-gutted
   (x-ref
     "2020-01-02"
     "https://www.propublica.org/article/how-the-irs-was-gutted"
     "How the IRS Was Gutted"))


◊subhead{The great leveller}

In an ideal world everyone would pay their taxes as they should, while preserving their financial privacy. But this is sadly just a dream, and it's not possible in reality. So let's look at some hypothetical worlds, to find out what we'd like to move towards.

◊ul{
    ◊li{It's fine the way it is

        I doubt anyone except the Trumps of the world, who are the ones who benefit the most, would say the ideal world is what we have today. The ◊link[inequality]{inequality is increasing} as the rich gets richer while paying less taxes, it's seems clear to me we have a serious problem that needs to be fixed.
    }
    ◊li{Everyone must use traceable money

        What if we forced everyone to use traceable money, where we can see where the money's coming from? And completely removed the possibility to hide money via shell companies and offshore bank accounts?◊mn{bitcoin-traceable}

        ◊ndef["bitcoin-traceable"]{
            Curiously enough, if everyone started to use a cryptocurrency like Bitcoin we would be pretty close to this world because all coins in Bitcoin can be traced. The only thing missing is tying addresses to identities, in which case we should use something like Facebook's Libra, which completely abandons all privacy.
        }

        At first glance this fixes our problem, but remember that this kind of tax evasion is already legal, and we'd first have to fix our laws for this to have any effect. And besides, completely removing our financial privacy comes with serious drawbacks, some which we'll explore in the next chapter about the ◊link[cashless_dystopia]{cashless society}.

        ◊note-pos[#:top -9]{bitcoin-traceable}
    }
    ◊li{Everyone can use untraceable money

        It's only recently, during the last decades, we've used truly traceable money. The rest of the time money has always been largely untraceable, where you don't know where the money comes from.

        If everyone would start using untraceable money, we would simply go back to how it used to be. With the upside that now everyone would have financial privacy, and not just the super rich as it is today.
    }
}

If you view tax evasion as a problem, then making better laws is a necessary beginning. But we won't ever be able to get rid of tax fraud completely. This is especially true if there's a privileged elite that has access to tools to obfuscate their money, essentially making their finances private, which is out of reach for the rest of us.◊mn{how?}

◊ndef["how?"]{
    One way the super rich can lander their money is to buy apartments, sit on them and then sell them making their money "clean". It's one reason why the apartment next door ◊link[empty-apartments]{might be completely empty}.
}


We might try to force everyone to use traceable money, and thereby making tax collection equally fair for everyone. This is largely what society is moving towards, with the ever-more strict ◊link[kyc]{Know Your Customer} and ◊link[aml]{Anti Money Laundering} laws. Besides the serious privacy and permission problems this creates, the problem is that if we outlaw privacy, only outlaws will have privacy, defeating the fairness we we're trying to create.

The only truly fair world would be if everyone had access to the same tools, and if financial privacy would be available for all, not just the privileged few. Everyone could enjoy the security and peace of mind ◊link[private_money]{that privacy gives you}, making it the preferable choice for me.

For better or worse, cryptocurrencies bring us closer to that world. Cryptocurrencies give everyone the ability to store their wealth privately, regardless of how rich you are.  They make it possible for anyone to store their wealth "offshore" and off the grid; they act as a financial equalizer by giving everyone access to similar tools that the super rich already have.◊mn{not-quite}

◊ndef["not-quite"]{
    While cryptocurrencies might make it easier to hide your money, it does not give you the ability to find the tax loopholes the super rich are exploiting.
}

Perfectly balanced, as all things should be.

◊note-pos[#:top -6]{not-quite}

◊(define empty-apartments
   (x-ref
     "2020-01-02"
     "https://www.nytimes.com/2017/07/21/upshot/when-the-empty-apartment-next-door-is-owned-by-an-oligarch.html"
     "When the (Empty) Apartment Next Door Is Owned by an Oligarch"))
◊(define inequality
   (x-ref
     "2020-01-02"
     "https://inequality.org/facts/income-inequality/"
     "Income Inequality"))
