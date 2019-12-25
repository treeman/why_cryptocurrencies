#lang pollen

◊(define-meta title "A Swiss bank account in your pocket")
◊(define-meta subtitle "Unlimited and untraceable money on your smartphone")
◊(define-meta updated "2019-09-17T06:59:16+02:00")
◊(define-meta uuid "d1144eb3-b2ac-4c89-b2e0-4a03f377172c")

◊; To read:
◊; https://news.ycombinator.com/item?id=21872987

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

The ◊link[panama-papers]{Panama Papers} was a gigantic leak that detailed the shady businesses of shell companies and how they're used to hide ownership of assets. It detailed how politicians, celebrities, drug dealers and the global elite obscured their wealth and in large part engaged in tax fraud and money laundering.◊sn{panama-links}

◊ndef["panama-links"]{
    There's an excellent ◊link[panama-papers-doc]{documentary about the Panama Papers} I can recommend.
}

◊;There's also a movie, “◊link[the-laundromat]{The Laundromat}”, related to the Panama Papers. It's not as good, but there were some good points made.

There are other reports, such as the ◊link[offshore-leaks]{Offshore Leaks}, the ◊link[bahamas-leaks]{Bahamas Leaks} and the ◊link[paradise-papers]{Paradise Papers}, which all say that the use of shell companies and offshore bank accounts are used on a massive scale for tax fraud and money laundering.

But they're not just for avoiding taxes. Look at celebrities for instance, they have tabloids dedicated to blow up any minor detail of their life into this huge scandal. It makes sense for them to try to keep their finances hidden, which is exactly what a spokesman for Emma Watson, who got named in the Panama Papers, claimed:

◊qt[#:url "https://www.telegraph.co.uk/news/2016/05/10/panama-papers-emma-watson-named-in-latest-data-release/"
    #:src "Spokesman for Emma Watson"]{
  Emma receives absolutely no tax or monetary advantages from this offshore company whatsoever, only privacy.
}

Do you believe them? As the cynic that I am, I remain skeptical, but at the same time I sympathize with the privacy concern---I did after all dedicate ◊link[private-money]{an earlier chapter} to the topic. If you haven't read the chapter I suggest you do so now, as it tries to explain why financial privacy is important for everyone.

◊;To be clear: I think tax evasion is ◊strong{bad}---do your taxes people.

◊(define private-money "/private_money.html")
◊(define panama-papers "https://www.icij.org/investigations/panama-papers/")
◊(define paradise-papers "https://www.icij.org/investigations/paradise-papers/")
◊(define offshore-leaks "https://www.icij.org/investigations/offshore/")
◊(define bahamas-leaks "https://www.icij.org/investigations/offshore/former-eu-official-among-politicians-named-new-leak-offshore-files-bahamas/")
◊(define panama-papers-doc "https://www.panamapapersdoc.com/")
◊(define the-laundromat "https://www.imdb.com/title/tt5865326/?ref_=nv_sr_srsg_0")


◊subhead{Absurd inequality}

◊qt[#:src "Animal Farm"
    #:quote-src #t
    #:author "George Orwell"
    #:url animal-farm-book]{
  All animals are equal, but some animals are more equal than others
}

While tax evasion through offshore banking is problematic, it pales to the problem that there's another set of tax rules only for the ultra rich. Let's see what the president of the United States has to say about tax evasion:

◊qt[#:url "https://www.youtube.com/watch?v=uBZR1-onmAo"
    #:src "Trump debates with Clinton"]{
    Clinton: He didn't pay any federal income tax.
    Trump: That makes me smart.
}

No Mr. President, that makes you rich. You see, this kind of tax evasion is only available for the ultra rich.◊sn{crap-smart-rich} And it's not the top 1% we're talking about, more like the top 0.001%. We're talking about people who can afford private chefs and travel the world in private jets and yachts. (Alright, maybe it's not ◊em{only} for the ultra rich, you might be able to do it even if you're only very rich.)

◊ndef["crap-smart-rich"]{
    And please don't gimme that crap about how all rich people are smart. It's just what rich people tell themselves, to make them feel smart. Most were ◊link[self-made-myth]{born with a golden spoon} in their mouth, and even the self-made ultra rich had a ton of luck and help.
}

◊(define self-made-myth "https://edition.cnn.com/2018/10/04/opinions/trump-nyt-kavanaugh-yale-self-made-man-myth-collins/index.html")
◊(define tax-evasion-and-inequality "http://gabriel-zucman.eu/files/AJZ2019.pdf")

This is why you don't see the names of normal people in the Panama Papers---no matter how smart they may be---but instead we find names like Lionel Messi, Donald Trump and Vladimir Putin.◊sn{names}

◊ndef["names"]{
    It's funny that you can find Trump's name in the Panama Papers 3,450 times, while ◊link[putin-proxies]{Putin uses proxies} to try and hide his involvement. I wonder, does that make Putin smarter than Trump?
}

Here I use the term ◊em{tax evasion} instead ◊em{tax fraud} because, believe it or not, it's often legal! If you're rich enough you can hire tax experts who'll find the loopholes in the tax laws so you can ◊link[tax-evasion-and-inequality]{avoid the taxes normal people have to pay}.  And if you do happen step on the wrong side of the law, you can hire the very best (and very expensive) lawyers to keep you out of prison. But you shouldn't worry about that too much, since the rich and powerful also lobbies the law makers to make the laws beneficial for them and to keep the ◊link[irs-gutted]{IRS starved for funds}.◊sn{companies-too}

◊ndef["companies-too"]{
    It's not just rich individuals that avoid taxes, it's big companies too. In 2018, 60 of the largest companies in the USA ◊link[no-corp-taxes]{paid no taxes} on pre-tax income of 79 billion dollars.
}

◊(define no-corp-taxes "https://www.cbsnews.com/news/2018-taxes-some-of-americas-biggest-companies-paid-little-to-no-federal-income-tax-last-year/")

◊qt[#:src "Report: Billionaire Bonanza 2017"
    #:url "https://ips-dc.org/report-billionaire-bonanza-2017/"]{
  The three wealthiest people in the United States — Bill Gates, Jeff Bezos, and Warren Buffett — now own more wealth than the entire bottom half of the American population combined
}

The world is just extremely unfair, and if anything it should be the other way around. The poor should pay less taxes, while the rich should pay more. At least this would have a semblance of fairness.

◊(define db "https://offshoreleaks.icij.org/")
◊(define putin-proxies "https://www.icij.org/investigations/panama-papers/20160403-putin-russia-offshore-network/")

◊(define irs-gutted "https://www.propublica.org/article/how-the-irs-was-gutted")


◊subhead{The great leveller}

Today financial privacy is only available for the ultra rich, which they abuse for tax evasion, while in an ideal world everyone would pay their taxes and everyone would have financial privacy. But this is just a dream of the naive.  The ◊link[inequality]{inequality is only increasing} as the rich gets richer, while paying less taxes and enjoying privileges normal people cannot have.

But what if ◊em{everyone} would have access to similar tools that the ultra rich have? Would the world collapse as nobody would pay taxes anymore? Or would the world change to the better as the tax rules would have to be reworked to be more fair? At the very least the world would be more equal.

For better or worse, cryptocurrencies brings us closer to that world. Cryptocurrencies give everyone the ability to store their wealth privately, regardless of how rich you are.  They make it possible for anyone to store their wealth "offshore" and off the grid---they act as a financial equalizer by giving everyone access to similar tools that the ultra rich already have.◊sn{not-quite}

◊ndef["not-quite"]{
    While cryptocurrencies might make it easier to hide your money, it does not give you the ability to find the tax loopholes the ultra rich are exploiting.

    And I'm absolutely ◊strong{not} trying to encourage tax evasion---do your taxes people.
}

Perfectly balanced, as all things should be.


◊(define inequality "https://inequality.org/facts/income-inequality/")
