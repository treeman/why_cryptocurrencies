#lang pollen

◊(define-meta title "Why cryptocurrencies in five minutes")
◊(define-meta subtitle "ELI5 - what is the inherent values of cryptocurrencies?")
◊(define-meta published "2019-07-17T00:00:00+01:00")
◊(define-meta updated "2020-01-15T20:09:07+01:00")
◊(define-meta uuid "cef34868-0317-4c6f-8b9f-cfb66464f2a8")

While cryptocurrencies are mostly seen as speculative assets---get rich quick schemes---they have valuable properties and valuable use cases. For example:

◊ul{
    ◊li{◊strong{Cheaper payments}

        Merchants have to pay a 1--4% fee for every credit card transaction, cryptocurrency transactions only come with a ◊link[cheaper-fees]{small fixed fee.}◊sn{bitcoin-fees}}

        ◊note-pos[#:top -2]{bitcoin-fees}

    ◊li{◊strong{Settles faster}

        You receive money ◊link[settlement-time]{under an hour}, while it takes days to receive other digital payments---which can also be reversed weeks or months later. (Of course payment notification is instant, like other payment systems.)

        This means merchants don't have to worry about having a purchase reversed, which usually means they have to swallow the loss.◊sn{chargeback-fraud}

        ◊note-pos[#:top -2]{chargeback-fraud}
        }

    ◊li{◊strong{No risk of having your account frozen}

        There's no third party who can freeze your account---and your funds. Merchants don't have to fear having their funds ◊link[freeze]{arbitrarily frozen} (possibly destroying their business) and there's no bank that can confiscate your money.
    }

    ◊li{◊strong{For anyone}

        Cryptocurrencies can be used by anyone. It's for businesses ◊link[undesirable]{who cannot accept credit cards}, for people ◊link[unbanked]{without a bank account} and people in dysfunctional countries. Nobody can prevent you from sending or receiving cryptocurrencies.
    }

    ◊li{◊strong{Global money}

        As long as there's internet you can ◊link[borderless]{send money anywhere}, basically instantly and for free. They aren't tied to a government, country or region and can be used everywhere.
    }

    ◊li{◊strong{Reduced currency manipulation}

        There's no central authority that can increase the supply as they like or invalidate the coins you have. It takes away the power over money from the state and gives it to the people.
    }

    ◊li{◊strong{Financial privacy}

        Banks, credit card companies and payment processors have all your financial transactions on record. Cryptocurrencies allows you to reclaim some of your privacy.◊sn{bitcoin-privacy}

        ◊note-pos[#:top -2]{bitcoin-privacy}
    }
}


Of course cryptocurrencies don't solve everything perfectly, they're held back by adoption and price volatility in particular. And as with all new technology they will be associated with positive and negative change.

If you want to learn more and see more examples just continue reading, or go to ◊link[what-chapter]{What is a cryptocurrency?} and continue from there. You can also ◊link[home]{jump} to whatever chapter interests you---they're supposed to be self-contained.

◊ndef["bitcoin-fees"]{
    If you've heard about the ridiculously high Bitcoin fees then don't worry---it's the exception not the rule. Please read the chapter ◊link[cheaper-chapter]{Cheaper & faster} for more info.
}

◊ndef["bitcoin-privacy"]{
    Please note that Bitcoin (and most other cryptocurrencies) are only ◊em{pseudo-anonymous}. There are others---like Monero---that improves the situation. Read the section of ◊link[privacy-challenge]{the privacy and fungibility challenge}.
}

◊ndef["chargeback-fraud"]{
    This is known as ◊em{◊link[chargeback]{charge back fraud}} or ◊em{friendly fraud}.
}

◊(define home "/")
◊(define book-chapter "/about_the_book.html")
◊(define what-chapter "/what_is_a_cryptocurrency.html")

◊(define cheaper-chapter "/cheaper_faster.html")
◊(define chargeback "/cheaper_faster.html#charge-back-fraud")
◊(define cheaper-fees "/cheaper_faster.html#fee-comparisons")
◊(define settlement-time "/cheaper_faster.html#speed-comparisons")

◊(define freeze "/freezing_of_merchant_accounts.html")

◊(define properties-chapter "/properties_of_a_cryptocurrency.html")
◊(define privacy-challenge "/challenges.html#privacy-and-fungibility")
◊(define undesirable "/undesirable_businesses.html")
◊(define unbanked "/for_the_unbanked.html")
◊(define borderless "/global_currency.html")

