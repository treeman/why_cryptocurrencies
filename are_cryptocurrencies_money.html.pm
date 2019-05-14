#lang pollen

◊(define-meta title "Are cryptocurrencies money?")
◊(define-meta subtitle "Are cryptocurrencies a good form of money?")
◊(define-meta updated "2019-05-05T14:43:50+0200Z")
◊(define-meta uuid "f04af7c8-5fee-45c4-a5a4-80a3f6fbd31b")

As we saw in the ◊link[prev-chapter]{previous chapter}, practically anything can be used as money. Therefore it's more useful to ask:

◊ol{
    ◊li{Are cryptocurrencies a good form of money?}
    ◊li{How well do they function as money, today?}
}


◊subhead{Evaluating the properties of money}

To decide if cryptocurrencies are good forms of money or not, we'll take a look at the properties good money should have and cryptocurrencies hold up. See the ◊link[prev-chapter]{previous chapter} for discussion about the properties.

◊ol{
    ◊li{◊strong{Acceptable}

        Nobody is excluded from using cryptocurrencies---they're open to everyone by design.◊sn{acceptable}
    }
    ◊li{◊strong{Divisible}

        There is no real technical limit to how much a cryptocurrency unit can be divided, and it's all automatic.
    }
    ◊li{◊strong{Durable}

        Coins can be used an infinite amount of times. The only drawback is keeping your private key secure, so you don't lose your coins.◊sn{backups}
    }
    ◊li{◊strong{Fungible & Uniform}

        One coin is like any other.◊sn{fungibility}
    }
    ◊li{◊strong{Limited in supply}

        Cryptocurrencies follow predetermined emission rates, ensuring a limited supply.
    }
    ◊li{◊strong{Portable}

        You can carry any amount you want in your wallet. One billion worth of cryptocurrency is as easy to carry as one cent. There's no difference in transacting large amounts or small amounts.
    }
}

All in all cryptocurrencies fulfil the properties excellently.

Cryptocurrencies can also be considered to be sound money---the value is entirely market driven and there is no manipulation of the supply.◊sn{backed}

◊ndef["backed"]{
    Traditionally sound money refers to money backed by precious material. Cryptocurrencies are instead backed by cryptography, and in Bitcoin's case the supply mimics the gold supply.
}

◊ndef["acceptable"]{
    The only requirement is a mobile phone and an internet connection. A fairly small requirement given the stated purpose being ◊em{digital} cash.
}

◊ndef["fungibility"]{
    Transaction history can be traced in Bitcoin. It could be used to ◊link[us-blacklist]{blacklist certain addresses} and it might in the long run break fungibility, where coins having touched a blacklisted address becomes less valuable.

    Cryptocurrencies like Monero counteract this.
}

◊(define us-blacklist "https://home.treasury.gov/news/press-releases/sm556")


◊subhead{Comparing properties with other forms of money}

This is a table of how I think cryptocurrencies compares to other good forms of money. I differentiate between the two forms of fiat---digital and physical---because they have different properties. Gold can be either gold coins or gold bars---basically some suitable physical form of gold.

◊table[#:class "centered crypto-eval"]{◊tbody{
    ◊tr{◊td{}               ◊ths{Fiat (digital)} ◊ths{Fiat (physical)} ◊ths{Gold} ◊ths{Cryptocurrencies}}
    ◊tr{◊tds{1. Acceptable}            ◊en{poor}      ◊en{excellent} ◊en{excellent} ◊en{excellent}}
    ◊tr{◊tds{2. Divisible}             ◊en{excellent} ◊en{good}      ◊en{good}      ◊en{excellent}}
    ◊tr{◊tds{3. Durable}               ◊en{excellent} ◊en{good}      ◊en{excellent} ◊en{good}}
    ◊tr{◊tds{4. Fungible & Uniform}    ◊en{excellent} ◊en{excellent} ◊en{excellent} ◊en{excellent}}
    ◊tr{◊tds{5. Limited supply}        ◊en{poor}      ◊en{poor}      ◊en{excellent} ◊en{excellent}}
    ◊tr{◊tds{6. Portable}              ◊en{good}      ◊en{good}      ◊en{good}      ◊en{excellent}}
}}

I know this might be controversial, so let me motivate some of the entries.

◊ol{
    ◊li{Digital fiat gets a poor score on ◊strong{acceptable} because it requires a bank account to use. This isn't something everyone can get---banks are in the right to reject you if they want. We'll revisit this topic in a future chapter.◊sn{acceptable}
    }

    ◊li{Digital money is inherently easier to ◊strong{divide} than physical variants. You can always send an exact amount without having to mix and match change.}

    ◊li{Paper notes can easily wear out or burn up. While cryptocurrencies cannot themselves burn up, the security backups and your phone can. Therefore they score lower than gold on ◊strong{durability}, which is near indestructible.◊sn{durability}}

    ◊li{I see no major problems with ◊strong{fungibility} or ◊strong{uniformity}.◊sn{again-monero}}

    ◊li{Both digital and physical fiat gets a poor score on ◊strong{limited supply}. Per the discussion in ◊link[prev-chapter]{the previous chapter} fiat money is unsound.}

    ◊li{Cryptocurrencies are simply much more ◊strong{portable} than the other options. Carrying large amounts in cash or gold is cumbersome and digital fiat isn't easy to move across borders.◊sn{borders}}
}

◊ndef["acceptable"]{
    You could argue that because you need a device with internet access, cryptocurrencies should get a lower score on ◊em{acceptable}. But you could also argue that having to transact in person is another drawback. To me they cancel out.
}

◊ndef["durability"]{
    The definition of ◊em{durability} is only concerned with reuse, where cryptocurrencies score excellently. But I wanted to include the storage drawback which didn't fit anywhere else.
}

Even if you disagree about certain choices, it's hard to disagree that cryptocurrencies come out of the comparison pretty well.

But of course this doesn't give the whole picture. For example a big difference between cryptocurrencies and gold is that cryptocurrencies are digital. This isn't only positive---cryptocurrency implementations can have bugs that might have severe negative consequences.◊sn{bugs}

Another difference is that gold has stood the test of time. It's been used as money for thousands of years, while cryptocurrencies are just more than 10 years old.◊sn{age-of-fiat}

◊ndef["age-of-fiat"]{
    A fun fact: ◊link[avg-life-fiat]{The average life expectancy for a fiat currency is 27 years}.
}

◊(define avg-life-fiat "https://web.archive.org/web/20150801064652/http://dollardaze.org/blog/?page_id=00017")

A third major difference is that digital fiat can get frozen any time by your bank, while physical payments and cryptocurrencies are uncensorable.

◊ndef["backups"]{
    Because phones can break or be stolen, you should write down your private key as backup. It's a good idea to secure it from fire, theft and simply losing it.
}

◊ndef["again-monero"]{
    I note again that there exists fungible cryptocurrencies.
}

◊ndef["borders"]{
    Moving money across borders will be the topic of a future chapter. I'll just note that it's extremely difficult, or impossible, to send fiat digitally to countries like North Korea or Venezuela.
}

◊ndef["bugs"]{
    A bug is a programming fault in the software. As a developer I can assure you, bugs will happen. The question is, how can you avoid the most severe ones and what do you do when they appear?

    Both ◊link[monero-bug]{Monero} and ◊link[bitcoin-bug]{Bitcoin} has for example had major bugs that could've allowed an attacker to create coins for free. Neither were exploited, this time.
}

◊(define (ths txt)
   `(td ((class "ths")) ,txt))
◊(define (tds txt)
   `(td ((class "tds")) ,txt))
◊(define (en type)
   ; Errors on unsupported type
   (define txt
     (match type
       ["poor" "Poor"]
       ["good" "Good"]
       ["excellent" "Excellent"]))
   `(td ((class ,type)) ,txt))

◊(define monero-bug "https://www.getmonero.org/2017/05/17/disclosure-of-a-major-bug-in-cryptonote-based-currencies.html")
◊(define bitcoin-bug "https://bitcoincore.org/en/2018/09/20/notice/")


◊subhead{Do cryptocurrencies function as money?}

We've looked at the properties, but how well does it function as money, today?

◊ol{
    ◊li{◊strong{Medium of exchange}

        Cryptocurrencies work well as a medium of exchange, but it's not commonly used.
    }
    ◊li{◊strong{Unit of account}

        Most who use cryptocurrencies still convert the amounts to fiat.
    }
    ◊li{◊strong{Store of value}

        The valuation is highly speculation driven and has been notoriously volatile.◊sn{sov}

        ◊img[#:src "images/btc-valuation.svg"]{
            ◊link[btc-valuation]{Bitcoin closing price per month}.  It doesn't do the peak in late 2017 justice, as it peaked at an all time high of $19,870 (some exchanges had it even higher).
        }
    }
}

◊(define btc-valuation "https://finance.yahoo.com/quote/BTC-USD/history?period1=1279317600&period2=1557439200&interval=1mo&filter=history&frequency=1mo")

◊ndef["sov"]{
    There is a clique of Bitcoin supporters who claim the primary, and sometimes even the only, function of Bitcoin is as a store of value. Unfortunately it's based on wishful thinking and not reality.
}

While cryptocurrencies are used as money in certain communities and for certain goods◊sn{goods}, it is not in widespread use. It does not function very well as money globally, today.

◊ndef["goods"]{
    Cryptocurrencies are quite popular for privacy-concerned users. For example most serious sellers of VPNs, domain names and VPS hosting provide payments via cryptocurrencies.

    Please remember that ◊link[rel-anonymous]{Bitcoin isn't really anonymous}.
}

◊(define rel-anonymous "/properties_of_a_cryptocurrency.html#anonymous")

There are mainly two things holding it back today:

◊ol{
    ◊li{◊strong{Large volatility}

        It's hard for merchants to accept cryptocurrencies if they might lose a large percent of this months profit due to market movements.}

    ◊li{◊strong{The network effect}

        Money is better the more people who accept it. Getting to start accepting a new form of money is difficult---even if it's better than the alternatives.◊sn{shock-of-the-old}
    }
}

Both of these are functions of how new cryptocurrencies are. When the market matures, the volatility will naturally decrease. Barring any large weaknesses the network effect will only grow larger---cryptocurrencies do provide some good benefits.

Perhaps it's to be expected that cryptocurrencies aren't global money yet---it's only a little more than 10 years old after all.

◊ndef["shock-of-the-old"]{
    For a different perspective of how technology gets adopted I recommend "The Shock of the Old" by David Edgerton. He argues that technology must be significantly better than the previous to see use---and he makes a very compelling argument.
}


◊subhead{How well do other forms of money function?}

Again let's try to compare cryptocurrencies with the other forms of money. This time I combine digital and physical fiat, since they function the same in practice.

◊table[#:class "centered crypto-eval"]{◊tbody{
    ◊tr{◊td{}                       ◊ths{Fiat}      ◊ths{Gold}     ◊ths{Cryptocurrencies}}
    ◊tr{◊tds{1. Medium of exchange}    ◊en{excellent}  ◊en{good} ◊en{good}}
    ◊tr{◊tds{2. Unit of account}       ◊en{excellent}  ◊en{poor}      ◊en{poor}}
    ◊tr{◊tds{3. Store of value}        ◊en{poor}       ◊en{excellent} ◊en{poor}}
}}

With the motivations:

◊ol{
    ◊li{Both gold and cryptocurrencies can work well as a ◊strong{medium of exchange}. But they're not commonly used as such, which makes them perform worse.

        There's a feedback loop here: the more they're used---the better they are, and the reverse holds true as well.}

    ◊li{Nobody prices goods as "0.2 ounce of gold" or "0.13 BTC", neither gold nor cryptocurrencies are currently used as a ◊strong{unit of account}.}

    ◊li{Fiat is not a good ◊strong{store of value}. If you store money in your bank account or beneath your mattress inflation will eat away the value. Cryptocurrencies, despite the increase in price, are far too volatile.}
}

While cryptocurrencies match up poorly, there is no perfect alternative.

Note that unlike the fundamental properties---which don't change that much---how well money functions change with the times. For example a few hundred years ago gold coins would be used everywhere.◊sn{bad-example?}

◊ndef["bad-example?"]{
    Maybe a bad example---cryptocurrencies and modern fiat didn't exist so far back. But hopefully you get my point: gold was once an excellent medium of exchange and unit of account. It changes.
}


◊subhead{What do law makers say?}

Several countries---◊link[skatt-bitcoin]{like Sweden}---have ruled that Bitcoin isn't a currency. The reason is there's no responsible issuer and it's not legal tender◊sn{legal-tender} in any country.

◊ndef["legal-tender"]{
    Remember that legal tender declares that you have to accept it as money by law.
}

Cryptocurrencies just doesn't fit into existing rules of fiat currencies. This often happens with new innovations that break the mold---the laws cannot keep up.◊sn{patents} For instance cryptocurrencies removes the third party requirement, something previously thought impossible.

◊ndef["patents"]{
    Another beautiful example of laws not keeping up with technology is patents. ◊link[software-patents]{Software patents works absolutely horribly}, yet software is continuously pushed into the existing framework that doesn't really fit.

    One example is ◊link[one-click]{Amazon's one-click checkout patent}.
}

There are others who've ruled in favor of Bitcoin as a currency. For example ◊link[eu-ruled]{EU ruled} that VAT is not applicable to the conversion between fiat currency and Bitcoin, however VAT still applies when used for goods and services.

◊(define software-patents "https://www.eff.org/deeplinks/2013/02/deep-dive-software-patents-and-rise-patent-trolls")
◊(define one-click "https://patents.google.com/patent/US5960411")
◊(define skatt-bitcoin
    `("https://www4.skatteverket.se/rattsligvagledning/373946.html?date=2018-12-17" "Swedish link: Skatteverket divestment of Bitcoin (2018-12-17)"))
◊(define eu-ruled "http://curia.europa.eu/juris/document/document.jsf?text=&docid=170305&pageIndex=0&doclang=en&mode=req&dir=&occ=first&part=1&cid=604646")
◊(define prev-chapter "/what_is_money.html")


◊subhead{Conclusion}

Cryptocurrencies fulfil the properties of money very well. In fact they fulfil them better than any alternative. Unlike fiat they can be considered sound money---the valuation is entirely market driven.

However they do not function well as global money today. They're too volatile and adoption isn't there yet.

