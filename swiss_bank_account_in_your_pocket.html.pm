#lang pollen

◊(define-meta title "A Swiss bank account in your pocket")
◊(define-meta subtitle "Unlimited and untraceable money on your smartphone")
◊(define-meta updated "2019-09-17T06:59:16+02:00")
◊(define-meta uuid "d1144eb3-b2ac-4c89-b2e0-4a03f377172c")

If you've seen spy movies, or maybe read the Da Vinci Code, you might be familiar with a private bank account. It's one where you don't need any identification other than the bank account number and a password to access, and you have access to all your money safely, securely and most importantly privately.◊sn{gringotts}

This is actually a great description of how cryptocurrencies work. You just need the account number (an address) and the password (a private key) to access your money, which you can do from anywhere in the world using the smartphone in your pocket.

◊ndef["gringotts"]{
    Even the ◊link[gringotts]{Gringotts Wizarding Bank} in Harry Potter operates in a similar manner. But except for a password they use a physical key.
}

◊(define gringotts "https://harrypotter.fandom.com/wiki/Gringotts_Wizarding_Bank")


◊subhead{The myth of a Swiss bank account}

Maybe you think that this is how a ◊link[swiss-bank-account]{Swiss bank account} operates. That they would offer highly private banking, but that's just a myth. Because they offer more privacy than other banks they also have tough anti-money-laundering laws that requires more identification than other banks and they require proof of where the money comes from.

Recently Switzerland has ◊link[swiss-exchange]{begun sharing bank details} of foreign account holders automatically with other countries. When I write this they share data with ◊link[swiss-more-countries]{more than 60 countries}, and more will join. I think it's fair to say that Swiss bank accounts don't live up to the private bank account dream.

Cryptocurrencies on the other hand can fulfill the dream.◊sn{private?}

◊ndef["private?"]{
    How private are cryptocurrencies really? Read the ◊link[privacy-challenge]{discussion of the privacy challenge} in the appendix.
}

◊(define privacy-challenge "/challenges.html#privacy-and-fungibility")
◊(define swiss-bank-account "https://www.investopedia.com/ask/answers/08/swiss-bank-account.asp")
◊(define swiss-exchange "https://www.swissinfo.ch/eng/financial-transparency_switzerland-in-the-age-of-automatic-exchange-of-banking-information/45234706")
◊(define swiss-more-countries "https://www.swissinfo.ch/eng/automatic-exchange-_switzerland-grants-18-more-countries-access-to-bank-details/45424544")


◊subhead{Shell companies and offshore bank accounts}

Maybe you'll say truly private bank accounts are really bad as they enable tax fraud and money laundering. And you'd have a point, but there's just one issue: it's already possible. And it's happening at a global scale.

The ◊link[panama-papers]{Panama Papers} was a gigantic leak that detailed the shady businesses of shell companies and how they're used to hide ownership of assets. It detailed how politicians, celebrities, drug dealers and the global elite obscured their wealth and in large part engaged in tax fraud and money laundering.

There are other reports, such as the ◊link[offshore-leaks]{Offshore Leaks}, the ◊link[bahamas-leaks]{Bahamas Leaks} and the ◊link[paradise-papers]{Paradise Papers}, which all say that the use of shell companies and offshore bank accounts are used on a massive scale for tax fraud and money laundering.

Offshore bank accounts aren't just for tax evasion though. For example celebrities have tabloids dedicated to blow up any minor detail of their life into this huge scandal. It just makes sense for them to try to keep their finances hidden, which is exactly what a spokesman for Emma Watson, who got named in the Panama Papers, claimed:

◊qt[#:url "https://www.telegraph.co.uk/news/2016/05/10/panama-papers-emma-watson-named-in-latest-data-release/"
    #:src "Spokesman for Emma Watson"]{
  Emma receives absolutely no tax or monetary advantages from this offshore company whatsoever, only privacy.
}

Do you believe them? I'm skeptical, but at the same time I sympathize with the privacy concern---I did after all dedicate ◊link[private-money]{an earlier chapter} to this very topic.

◊(define private-money "/private_money.html")
◊(define panama-papers "https://www.icij.org/investigations/panama-papers/")
◊(define paradise-papers "https://www.icij.org/investigations/paradise-papers/")
◊(define offshore-leaks "https://www.icij.org/investigations/offshore/")
◊(define bahamas-leaks "https://www.icij.org/investigations/offshore/former-eu-official-among-politicians-named-new-leak-offshore-files-bahamas/")
◊(define panama-papers-doc "https://www.panamapapersdoc.com/")


◊subhead{Absurd inequality}

Let's see what the president of the United States has to say about tax evasion:

◊qt[#:url "https://www.youtube.com/watch?v=uBZR1-onmAo"
    #:src "Trump debates with Clinton"]{
    Clinton: He didn't pay any federal income tax.
    Trump: That makes me smart.
}

No Mr. President, that makes you rich. You see, this kind of tax evasion is only available for the very rich.◊sn{crap-smart-rich} And it's not the 1%, more like the 1% of the 1%. We're talking about people who can afford private chefs and travel the world in private jets and yachts.

◊ndef["crap-smart-rich"]{
    And please don't gimme that crap about how all rich people are smart. It's just what rich people tell themselves, to make them feel smart. Most were born with a golden spoon in their mouth, and even the self-made ultra rich had a ton of luck helping them.
}

This is why you don't see the names of normal people in the Panama Papers, no matter how smart they may be, but instead we find names like Lionel Messi, Donald Trump and Vladimir Putin.◊sn{names}

◊ndef["names"]{
    It's funny that you can find Trump's name in the Panama Papers 3,450 times, while ◊link[putin-proxies]{Putin uses proxies} to try and hide his involvement. I wonder, does that make Putin smarter than Trump?
}

Here I use the term ◊em{tax evasion} instead ◊em{tax fraud} because, believe it or not, it's often legal! If you're rich enough you can hire tax experts who'll find the loopholes in the tax laws so you can avoid the taxes normal people have to pay.

If you do happen step on the wrong side of the law, you can hire the very best lawyers to keep you out of prison. But you shouldn't worry about that too much, since the rich and powerful also lobbies the law makers to make the laws beneficial for them.

While offshore banking might be problematic, it pales to the problem that there's another set of tax rules only for the very rich. It's especially egregious since they have so much money they can't even spend it all, but normal people have to struggle to make ends meet.

◊todo{IMG of the ultra rich lopsidedness}

The world is just extremely unfair, and if anything it should be the other way around. The poor should avoid taxes, while the ultra rich should pay up. At least this would have a semblance of fairness.

◊;In 2018, 60 of the largest companies in the USA paid no taxes on pre-tax income of 79 billion dollars. (The Laundromat)


◊(define db "https://offshoreleaks.icij.org/")
◊(define putin-proxies "https://www.icij.org/investigations/panama-papers/20160403-putin-russia-offshore-network/")


◊subhead{The great leveller}

With cryptocurrencies everyone can

◊; See db:
◊; https://offshoreleaks.icij.org/

◊; More papers:
◊; https://www.icij.org/investigations/paradise-papers/
◊; https://www.icij.org/investigations/offshore/
◊; https://www.icij.org/investigations/offshore/former-eu-official-among-politicians-named-new-leak-offshore-files-bahamas/
