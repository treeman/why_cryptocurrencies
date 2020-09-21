#lang pollen

◊(define-meta title "Are cryptocurrencies money?")
◊(define-meta subtitle "How well do they work as money?")
◊(define-meta published "2019-05-23T00:00:00+01:00")
◊(define-meta updated "2020-03-09T21:07:36+01:00")
◊(define-meta uuid "f04af7c8-5fee-45c4-a5a4-80a3f6fbd31b")

◊(clear-sidenotes)

◊epigraph{
  ◊qt[#:author "Proverb"]{
    One man's trash is another man's treasure.
  }
}

As we saw in the ◊link[prev-chapter]{previous chapter}, practically anything can be used as money. Therefore it's more useful to ask if cryptocurrencies have the properties of good money, and how well do they function as money today.

In this chapter we'll see that cryptocurrencies have excellent monetary properties, but their function as money is held back by volatility and adoption.


◊subhead{Evaluating the properties of money}

To decide how well cryptocurrencies can function as money, we'll take a look at the properties good money should have and see how cryptocurrencies hold up. See the ◊link[prev-chapter]{previous chapter} for historical context and a discussion about the properties of money.

◊ol{
    ◊li{◊strong{Acceptable}

        Nobody's excluded from using cryptocurrencies---they're open to everyone by design. The drawback is that you need a device with internet connection.◊sn{crypto-acceptable}
    }
    ◊li{◊strong{Divisible}

        There's no real technical limit to how much a cryptocurrency unit can be divided, and it's all automatic.
    }
    ◊li{◊strong{Durable}

        Coins can be used an infinite amount of times. The only drawback is keeping your private key secure, so you don't lose your coins.◊sn{backups}
    }
    ◊li{◊strong{Fungible & Uniform}

        For most cryptocurrencies fungibility is problematic. If all transaction history is public, like it is in Bitcoin, it could be used to ◊link[us-blacklist]{blacklist certain addresses} and in the long run break fungibility, if coins having touched a blacklisted address becomes less valuable.

        Cryptocurrencies like Monero tries to ◊link[privacy-challenge]{solve this problem}, so I'll say that cryptocurrencies are fungible.
    }
    ◊li{◊strong{Limited in supply}

        Cryptocurrencies follow predetermined emission rates, ensuring a limited supply.
    }
    ◊li{◊strong{Portable}

        You can carry any amount you want in your wallet. One billion worth of cryptocurrency is as easy to carry as one cent. There's no difference in transacting large amounts or small amounts.
    }
    ◊li{◊strong{Recognizable}

        Cryptocurrencies are impossible to counterfeit and if implemented correctly they're easy to separate from each other.

        While at a low level it may be difficult to tell which cryptocurrency a hash or a number belongs to, all necessary data is public so you can differentiate them. Wallet apps does this automatically, making them easy to identify.
    }
}

All in all cryptocurrencies fulfil the properties excellently.

Cryptocurrencies can also be considered to be ◊def[sound-money]{sound money}---the value is entirely market driven and there's no manipulation of the supply.◊sn{backed}

◊note-pos[#:top -60]{crypto-acceptable}
◊note-pos[#:top -47]{backups}
◊note-pos{backed}

◊ndef["backed"]{
    Traditionally sound money refers to money backed by precious material. Cryptocurrencies are instead backed by cryptography, and in Bitcoin's case the supply mimics the gold supply.
}

◊ndef["crypto-acceptable"]{
    A fairly small requirement given the stated purpose being ◊em{digital} cash, but it's undoubtedly a drawback.
}

◊(define us-blacklist 
  (x-ref
    "2019-05-23"
    "https://home.treasury.gov/news/press-releases/sm556"
    "Treasury Designates Iran-Based Financial Facilitators of Malicious Cyber Activity and for the First Time Identifies Associated Digital Currency Addresses"))


◊subhead{Comparing properties with other forms of money}

This is a table of how I think cryptocurrencies compares to other forms of money. I differentiate between the two forms of fiat---digital and physical---because they have different properties. Gold can be either gold coins or gold bars---basically some suitable physical form of gold.

◊table-body[#:class "crypto-eval"]{
    ◊tr{◊td{}                       ◊ths{Fiat (digital)} ◊ths{Fiat (physical)} ◊ths{Gold}     ◊ths{Cryptocurrencies}}
    ◊tr{◊tds{1. Acceptable}         ◊en{poor}            ◊en{excellent}        ◊en{excellent} ◊en{excellent}}
    ◊tr{◊tds{2. Divisible}          ◊en{excellent}       ◊en{good}             ◊en{good}      ◊en{excellent}}
    ◊tr{◊tds{3. Durable}            ◊en{excellent}       ◊en{good}             ◊en{excellent} ◊en{good}}
    ◊tr{◊tds{4. Fungible & Uniform} ◊en{excellent}       ◊en{excellent}        ◊en{excellent} ◊en{excellent}}
    ◊tr{◊tds{5. Limited supply}     ◊en{poor}            ◊en{poor}             ◊en{excellent} ◊en{excellent}}
    ◊tr{◊tds{6. Portable}           ◊en{good}            ◊en{good}             ◊en{good}      ◊en{excellent}}
    ◊tr{◊tds{7. Recognizable}       ◊en{excellent}       ◊en{good}             ◊en{good}      ◊en{excellent}}
}

I know this might be controversial, so let me motivate some of the entries:

◊ol{
    ◊li{Digital fiat gets a poor score on ◊strong{acceptable} because it requires a bank account to use. This ◊link[for_the_unbanked]{isn't something everyone can get}---banks are in the right to ◊link[undesirable_businesses]{reject you if they want}.◊sn{acceptable}
    }

    ◊li{Digital money is inherently easier to ◊strong{divide} than physical variants. You can always send an exact amount without having to mix and match change.}

    ◊li{Paper notes can easily wear out or burn up. While cryptocurrencies cannot themselves burn up or deteriorate, the security backups and your phone can. Therefore they score lower than gold on ◊strong{durability}, which is near indestructible.◊sn{durability}}

    ◊li{I see no major problems with ◊strong{fungibility} or ◊strong{uniformity}.◊sn{again-monero}}

    ◊li{Both digital and physical fiat gets a poor score on ◊strong{limited supply}. Per the discussion in ◊link[prev-chapter]{the previous chapter}---fiat money is unsound.
    }

    ◊li{Cryptocurrencies are simply much more ◊strong{portable} than the other options. Carrying large amounts in cash or gold is cumbersome and digital fiat isn't easy to move across borders.◊sn{borders}}

    ◊li{While it's possible to check for fake cash and gold coins, it requires expertise and certain tools. Therefore they get a lower ◊strong{recognizable} score.
    }
}

◊note-pos[#:top -26]{acceptable}
◊note-pos[#:top -17]{durability}
◊note-pos[#:top -9]{again-monero}
◊note-pos[#:top -3.5]{borders}

◊ndef["acceptable"]{
    You could argue that because you need a device with internet access, cryptocurrencies should get a lower score on ◊em{acceptable}. But you could also argue that having to transact in person is another drawback. To me they cancel out.
}

◊ndef["durability"]{
    The definition of ◊em{durability} is only concerned with reuse, where cryptocurrencies score excellently. But I wanted to include the storage drawback which didn't fit anywhere else.
}

Even if you disagree about certain choices, it's hard to oppose that cryptocurrencies come out of the comparison pretty well. But of course this doesn't give the whole picture. There are other significant differences, for example:

◊ul{
    ◊li{A big difference between cryptocurrencies and gold is that cryptocurrencies are digital. This isn't only positive---cryptocurrency implementations can have bugs that might have severe negative consequences.◊sn{bugs}}
    ◊li{Digital fiat can get ◊link[freezing_of_merchant_accounts]{frozen any time by your bank}, while physical payments and cryptocurrencies are uncensorable.}
    ◊li{Gold has stood the test of time. It's been used as money for thousands of years, while cryptocurrencies are just more than 10 years old.◊sn{age-of-fiat}}
}

◊note-pos[#:top -9.5]{bugs}
◊note-pos{age-of-fiat}

◊ndef["age-of-fiat"]{
    I find it interesting that ◊link[avg-life-fiat]{the average life expectancy for a fiat currency is 27 years}.
}

◊ndef["backups"]{
    Because phones can break or be stolen, you should write down your private key as backup. It's a good idea to secure it from fire, theft and simply losing it.
}

◊ndef["again-monero"]{
    I note again that ◊link[privacy-challenge]{there exists fungible cryptocurrencies}.
}

◊ndef["borders"]{
    Moving money across borders will be handled in the chapter ◊link[global_currency]{A global currency}. I'll just note that it's extremely difficult, or impossible, to send fiat digitally to countries like North Korea or Venezuela.
}

◊ndef["bugs"]{
    A bug is a programming fault in the software. As a developer I can assure you, bugs will happen. The question is, how can you avoid the most severe ones and what do you do when they appear?

    Both ◊link[monero-bug]{Monero} and ◊link[bitcoin-bug]{Bitcoin} has for example had major bugs that could have allowed an attacker to create coins for free. Neither were exploited---this time.
}

◊(define avg-life-fiat 
  (x-ref
    "2019-05-23"
    "https://web.archive.org/web/20150801064652/http://dollardaze.org/blog/?page_id=00017"
    "Demonetized Currencies"))

◊(define (ths txt)
   `(td ((class "ths")) ,txt))
◊(define (tds txt)
   `(td ((class "tds")) ,txt))
◊(define (en type)
   (define txt
     (cond
       ((equal? type "poor") "Poor")
       ((equal? type "good") "Good")
       ((equal? type "excellent") "Excellent")
       (#t (error "unknown en argument" type))))
   `(td ((class ,type)) ,txt))

◊(define monero-bug 
  (x-ref
    "2019-05-23"
    "https://www.getmonero.org/2017/05/17/disclosure-of-a-major-bug-in-cryptonote-based-currencies.html"
    "Disclosure of a Major Bug in CryptoNote Based Currencies"))
◊(define bitcoin-bug 
  (x-ref
    "2019-05-23"
    "https://bitcoincore.org/en/2018/09/20/notice/"
    "CVE-2018-17144 Full Disclosure"))


◊subhead{Do cryptocurrencies function as money?}

We've looked at the properties---but how well do they function as money, today?

◊ol{
    ◊li{◊strong{Medium of exchange}

        Cryptocurrencies work well as a medium of exchange, but it's not commonly used.
    }
    ◊li{◊strong{Unit of account}

        Most who use cryptocurrencies still convert the amounts to fiat.
    }
    ◊li{◊strong{Store of value}

        The valuation is highly speculation driven and has been notoriously volatile.◊sn{sov}

        ◊img[#:src "images/btc-valuation.svg" #:link #t #:alt "Bitcoin closing price per month, between 2010 and 2019."]{
            ◊link[btc-valuation]{Bitcoin closing price per month}.  It doesn't do the peak in December 2017 justice, as it peaked at an all time high of $19,870 (some exchanges had it even higher).
        }
    }
}

◊(define btc-valuation 
  (x-ref
    "2019-05-23"
    "https://finance.yahoo.com/quote/BTC-USD/history?period1=1279317600&period2=1557439200&interval=1mo&filter=history&frequency=1mo"
    "Yahoo! finance: Bitcoin USD (BTC-USD)"))

◊ndef["sov"]{
    There's a clique of Bitcoin supporters who claim the primary, and sometimes even the only, function of Bitcoin is as a store of value. Unfortunately it's based on wishful thinking (from a short-term investment view) and not reality.
}

While cryptocurrencies are used as money in certain communities and for certain goods,◊sn{goods} it's not in widespread use. It doesn't function very well as money globally, today.

◊ndef["goods"]{
    Cryptocurrencies are quite popular for privacy-concerned users. For example most serious sellers of VPNs, domain names and VPS hosting accept payments via cryptocurrencies.

    Please keep in mind that ◊link[private_property]{Bitcoin isn't really anonymous}.
}

There are mainly two things holding it back today:

◊ol{
    ◊li{◊strong{Large volatility}

        It's hard for merchants to accept cryptocurrencies if they might lose a large percent of this months profit due to market movements.}

    ◊li{◊strong{The network effect}

        Money is better the more people who accept it. Getting people to start accepting a new form of money is difficult---even if it's better than the alternatives.◊sn{shock-of-the-old}
    }
}

Both of these are functions of how new cryptocurrencies are. When the market matures, the volatility will naturally decrease. Barring any large weaknesses the network effect will only grow larger---cryptocurrencies do provide some very good benefits, as we shall see.

Perhaps it's to be expected that cryptocurrencies aren't global money yet---they're only a decade old after all.◊sn{lightbulb}

◊note-pos[#:top -67]{sov}
◊note-pos[#:top -33]{goods}
◊note-pos[#:top -15]{shock-of-the-old}
◊note-pos{lightbulb}

◊ndef["lightbulb"]{
    Marc Levinson writes in ◊(book-link the-box-book) that 20 years after the invention of the light bulb, arguably one of the most important inventions of all time, only 3% in the U.S. were using it. Cryptocurrencies are still in their infancy.
}

◊ndef["shock-of-the-old"]{
    For a different perspective of how technology gets adopted I recommend ◊(book-link shock-of-the-old-book) by David Edgerton. He argues that technology must be significantly better than the previous to see use, and even then the adoption is not as swift as one might think.

    Another perspective on network effects is given by Kevin Simler in his blog post ◊link[going-critical]{Going Critical}.
}

◊(define going-critical 
  (x-ref
    "2019-05-23"
    "https://www.meltingasphalt.com/interactive/going-critical/"
    "Going Critical"))


◊subhead{How well do other forms of money function?}

Again let's try to compare cryptocurrencies with the other forms of money. This time I combine digital and physical fiat, since they function the same in practice.

◊table-body[#:class "crypto-eval"]{
    ◊tr{◊td{}                       ◊ths{Fiat}      ◊ths{Gold}     ◊ths{Cryptocurrencies}}
    ◊tr{◊tds{1. Medium of exchange}    ◊en{excellent}  ◊en{good} ◊en{good}}
    ◊tr{◊tds{2. Unit of account}       ◊en{excellent}  ◊en{poor}      ◊en{poor}}
    ◊tr{◊tds{3. Store of value}        ◊en{poor}       ◊en{excellent} ◊en{poor}}
}

With the motivations:

◊ol{
    ◊li{Both gold and cryptocurrencies can work well as a ◊strong{medium of exchange}. But they're not commonly used as such, which makes them perform worse.

        There's a feedback loop here: the more they're used---the better they are, and the reverse holds true as well.}

    ◊li{Nobody prices goods as "0.2 ounces of gold" or "0.13 BTC". Neither gold nor cryptocurrencies are currently used as a ◊strong{unit of account}.}

    ◊li{Fiat isn't a good ◊strong{store of value}. If you store money in your bank account or beneath your mattress inflation will eat away the value. Cryptocurrencies, despite the increase in price, are far too volatile.}
}

While cryptocurrencies match up poorly, there's no perfect alternative.

Note that unlike the fundamental properties---which don't change that much---how well money function change with time. For example a few hundred years ago gold coins would be used everywhere.◊sn{bad-example?}

◊ndef["bad-example?"]{
    Maybe a bad example---cryptocurrencies and modern fiat didn't exist so far back. But hopefully you get my point; gold was once an excellent medium of exchange and unit of account, but not anymore. It changes.
}


◊subhead{What do lawmakers say?}

Several countries---◊link[skatt-bitcoin]{like Sweden}---have ruled that Bitcoin isn't a currency. The reason is there's no responsible issuer and it's not ◊em{legal tender}◊sn{legal-tender} in any country.

◊ndef["legal-tender"]{
    Legal tender declares that you have to accept it as money by law.
}

Cryptocurrencies just doesn't fit into existing rules of fiat currencies. This often happens with new innovations that break the mold---laws cannot keep up.◊sn{patents} For instance cryptocurrencies removes the third party requirement, something previously thought impossible.

◊ndef["patents"]{
    Another beautiful example of laws not keeping up with technology is patents. ◊link[software-patents]{Software patents work horribly}, yet software is continuously pushed into the existing framework that doesn't really fit.

    One example is ◊link[one-click]{Amazon's one-click checkout patent}.
}

There are others who've ruled in favor of Bitcoin as a currency. For example ◊link[eu-ruled]{EU ruled} that VAT is not applicable to the conversion between fiat currency and Bitcoin, however VAT still applies when used for goods and services.

◊note-pos[#:top -16]{legal-tender}
◊note-pos[#:top -10]{patents}

◊(define software-patents 
  (x-ref
    "2019-05-23"
    "https://www.eff.org/deeplinks/2013/02/deep-dive-software-patents-and-rise-patent-trolls"
    "Deep Dive: Software Patents and the Rise of Patent Trolls"))
◊(define one-click 
  (x-ref
    "2019-05-23"
    "https://patents.google.com/patent/US5960411"
    "Method and system for placing a purchase order via a communications network "))
◊(define skatt-bitcoin
  (x-ref
    "2018-12-17"
    "https://www4.skatteverket.se/rattsligvagledning/373946.html?date=2018-12-17"
    "Swedish link: Skatteverket divestment of Bitcoin"))
◊(define eu-ruled 
  (x-ref
    "2019-05-23"
    "http://curia.europa.eu/juris/document/document.jsf?text=&docid=170305&pageIndex=0&doclang=en&mode=req&dir=&occ=first&part=1&cid=604646"
    "Judgement of the court (Fifth Chamber): Case C‑264/14"))
◊(define prev-chapter what_is_money)


◊subhead{So, are cryptocurrencies money?}

Cryptocurrencies fulfil the properties of money very well---in fact they fulfil them better than any alternative in history. Unlike fiat they can also be considered sound money as the valuation is entirely market driven.

While they are used as money in certain communities, they do not function well as global money today. They're very volatile and adoption isn't there yet.
