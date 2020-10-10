#lang pollen

◊(define-meta title "Why cryptocurrencies in five minutes")
◊(define-meta subtitle "ELI5 - what is the inherent values of cryptocurrencies?")
◊(define-meta published "2019-07-17T00:00:00+01:00")
◊(define-meta updated "2020-10-09T19:51:01+02:00")
◊(define-meta uuid "cef34868-0317-4c6f-8b9f-cfb66464f2a8")

◊(clear-sidenotes)

While cryptocurrencies are mostly seen as speculative assets or get rich quick schemes they have valuable properties and other valuable use cases. For example:

◊ul{
    ◊li{◊strong{Excellent monetary properties}

        Cryptocurrencies ◊link[are_cryptocurrencies_money]{have better monetary properties} than anything else in history. In contrast to the fiat money we use today, cryptocurrencies have a limited supply and compared to gold cryptocurrencies are much more portable and it's easy to divide coins into very small parts.

        At first glance this may seem insignificant, but money affects everything and even small improvements can have a massive effect.
    }
    ◊li{◊strong{Cheaper payments}

        Merchants have to pay a 1--4% fee for every credit card transaction, while cryptocurrency transactions only come with a ◊link[fee-comparisons]{small fixed fee.}◊mn{bitcoin-fees}

        ◊note-pos[#:top -2]{bitcoin-fees}
    }
    ◊li{◊strong{Irreversible digital transactions}

        You receive money in ◊link[speed-comparisons]{under an hour} and after that the money is yours, while it may take days to receive other digital payments which can also be reversed weeks or months later.

        This means merchants don't have to worry about having a purchase reversed, which usually means they have to swallow the loss.◊mn{chargeback-fraud}

        ◊note-pos[#:top -2]{chargeback-fraud}
    }
    ◊li{◊strong{For anyone and anything}

        Cryptocurrencies can be used by anyone. It's for businesses ◊link[undesirable_businesses]{who cannot accept credit cards}, for people ◊link[for_the_unbanked]{without a bank account} and people in dysfunctional countries. You can use it for truly ◊link[uncensorable_donations]{uncensorable donations} and you don't have to worry that your payment processor or bank will ◊link[freezing_of_merchant_accounts]{freeze your account}.

        Nobody can prevent you from sending or receiving cryptocurrencies.
    }
    ◊li{◊strong{Financial privacy}

        Banks, credit card companies and payment processors have all your financial transactions on record. Cryptocurrencies allows you to ◊link[private_money]{reclaim some of your privacy} as they work like a ◊link[swiss_bank_account_in_your_pocket]{swiss bank account in your pocket}.◊mn{bitcoin-privacy}

        ◊note-pos[#:top -2]{bitcoin-privacy}
    }
    ◊li{◊strong{An alternative financial system}

        The traditional financial system rewards behavior that caused the ◊link[financial_crisis]{2008 financial crisis} and relies on being able to ◊link[the_blind_leading_the_blind]{predict the unpredictable}. Cryptocurrencies represent an alternative without a central authority that can manipulate the money supply, and they can be used to truly ◊link[separation_of_money_and_state]{separate money from state}.
    }
    ◊li{◊strong{Extensions}

        You can build applications on top of cryptocurrencies, such as  ◊link[provably_fair_gambling]{provably fair gambling} or a ◊link[timestamping_service]{timestamping service} based on mathematics instead of social proof.
    }
}

Of course cryptocurrencies don't solve everything perfectly and there are many difficulties---both technical and social---that need to be overcome. And as with all new technology they will be associated with positive and negative change.

If you want to learn more and see more examples just continue reading. You can also jump to whatever chapter interests you---they're supposed to be self-contained.

◊ndef["bitcoin-fees"]{
    If you've heard about the ridiculously high Bitcoin fees then don't worry---it's the exception not the rule. Please read the chapter ◊link[cheaper_faster]{Cheaper & faster} for more info.
}

◊ndef["bitcoin-privacy"]{
    Please note that Bitcoin (and most other cryptocurrencies) are only ◊def{pseudo-anonymous}. Please see ◊link[privacy-challenge]{the privacy and fungibility challenge} for more information.
}

◊ndef["chargeback-fraud"]{
    This is known as ◊def[charge-back-fraud]{charge back fraud} or ◊def{friendly fraud} and is a big problem for merchants.
}


