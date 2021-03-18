#lang pollen

◊(define-meta title "Looking for a cover page")
◊(define-meta no-side-space #t)
◊(define-meta no-section-chapters-header #t)
◊(define-meta skip-feed #t)
◊(define-meta template "chapter.html")

I'm looking for a cover page for my book. There is ◊link[toc-url]{an online version} that's free for all to read, but I want to convert it to a physical book and an eBook (PDF and epub) and I'd like to commission a cover page for it.


◊subhead{The big idea}

While it should be clear that it's a book about Bitcoin you should also be able to look at the cover and identify some of the topics I bring up in the book. Something that reveals more details and references the more you look at it.

My idea is to have a picture of a city street, with shops and signs on both sides. Something like this:

◊img[#:src "/images/cover-help/cyberpunk-futuristic-city-science-fiction-concept-art-4k-nn-1920x1080.jpg" #:alt ""]{}

And in the middle should be a person with a mobile phone that shows an image with a Bitcoin logo. The person is confused and doesn't know where to go and what the different things on the street are.

I like the cyberpunk aesthetic, but the cover should of course be less messy.

The different things you see should be connected to different topics in the book. For example people in a Guy Fawkes mask or a homeless person showing a QR code. See below for a list of other ideas.


◊subhead{Target audience}

I want to target people who may have heard about "Bitcoin" but don't know what it is. People who might want/need a simple explanation.

◊subhead{The feeling}

I want the cover to be eye-catching and to make people ◊strong{curious}. I want it to suggest what topics might be covered and I also want it to be ◊strong{◊em{fun}}.


◊subhead{The style I'm looking for}

I'm looking for an original illustration, with a sort-of a cartoony feel that complements my own images inside the book.

Perhaps a style similar to these?

◊figure[#:class "flex-50"]{
    ◊raw-img[#:src "/images/cover-help/truck.jpg" #:alt ""]{}
    ◊raw-img[#:src "/images/cover-help/future-shock-cyberpunk-car-4k-2b-1920x1080.jpg" #:alt ""]{}
}


◊subhead{Ideas for things to find on the street}

I don't think we can fit everything on the cover, to avoid clutter. I've split up my examples into the major sections found in the book, and I hope we can find a representative example for each section. I've made the examples I particularly like bold.

◊subhead3{General concepts}

◊ul{
    ◊li{◊strong{Icons/symbols of cryptocurrencies}

        Ones I've mentioned in the book are Bitcoin, Bitcoin Cash, Monero, Ethereum and Dogecoin:

        ◊figure[#:class "flex-20"]{
            ◊raw-img[#:src "/images/cover-help/btc.png" #:alt "Bitcoin"]{}
            ◊raw-img[#:src "/images/cover-help/bch.png" #:alt "Bitcoin Cash"]{}
            ◊raw-img[#:src "/images/cover-help/monero.png" #:alt "Monero"]{}
            ◊raw-img[#:src "/images/cover-help/ethereum.png" #:alt "Ethereum"]{}
            ◊raw-img[#:src "/images/cover-help/doge.png" #:alt "Dogecoin"]{}
        }

        Maybe hidden away as graffiti, or as a small sign hidden in a store window. The Bitcoin symbol should be easily identified somewhere on the cover, and preferably Monero as well. Monero is more associated to privacy/anonymity.

        They don't necessarily have to keep their colors, as long as they're identifiable. The Bitcoin unicode symbol "₿" could for example be used.
    }
    ◊li{A Lamborghini (common reference in the cryptocurrency sphere)}
}

◊subhead3{What is a cryptocurrency?}

◊ul{
    ◊li{A farmer trading a pig for a chair (◊(link what_is_money))

        ◊img[#:src "/images/pig_chair_exchange.png" #:alt "Barter"]{
            An image I've used in the book.
        }
    }
    ◊li{A snake oil salesman trying to sell poison (a skull on the bottle or something?) (◊(link snake_oil))}
    ◊li{◊strong{Someone walking around with a bag of gold, or a gold bar} (◊(link what_is_money))}
    ◊li{Other historical examples of money I've used, see ◊link[historical-examples-of-money]{this list of historical examples}.}
    ◊li{◊strong{A pyramid of bills} (◊(link what_is_money))

        ◊img[#:src "/images/german_notes.png" #:alt "bills"]{
            An image I've used in the book. ◊link[stacks]{Inspired by this picture}.
        }
    }
}


◊subhead3{Better digital payments}

◊ul{
    ◊li{A "no cash accepted" sign (◊(link undesirable_businesses))}
    ◊li{◊strong{A marijuana store} (◊(link undesirable_businesses))}
    ◊li{Schrödinger's cat, with a marijuana symbol, stuck in a box (◊(link undesirable_businesses))

        The cat in the box is simultaneously dead and alive, you don't know until you open it. The reference is that a business can be both legal and illegal at the same time.
    }
    ◊li{A military helicopter firing at people (◊(link uncensorable_donations))}
    ◊li{◊strong{Assange is stuck in the Ecuadorean embassy, with angry US officials outside.}

    Maybe Trump, Obama and Bush? (◊(link uncensorable_donations))}
    ◊li{A stripper with a QR code tattoo (◊(link undesirable_businesses))}
}

◊subhead3{A better currency}

◊ul{
    ◊li{◊link[fawkes]{◊strong{A person with a Guy Fawkes mask}} (◊(link private_money))}
    ◊li{An S&M pair exiting an adult shop (◊(link private_money))}
    ◊li{A kid holding a bowl of soup (◊(link global_currency))}
    ◊li{◊strong{A banker running a printing press, spraying bills everywhere} (◊(link financial_crisis))}
    ◊li{A rich pig (◊link[animal-farm]{like in Animal Farm})}
    ◊li{A blind man leading a pack of other blind people to their doom (◊(link the_blind_leading_the_blind))}
}

◊subhead3{Brave new world}

◊ul{
    ◊li{◊strong{People buying medicine in an alley} (◊(link darknet_markets))}
    ◊li{◊strong{An homeless person holding a sign with a QR code} (◊(link cashless_dystopia))}
    ◊li{A police officer threatening someone to give them their stuff (◊(link protection_against_government_confiscation))

        ◊img[#:src "/images/gangster_cop.png" #:alt "Cop"]{
            An image I've used for this scenario.
        }
    }
    ◊li{A toilet door with a lock you have to use a credit card for, possibly next to the homeless person (◊(link cashless_dystopia))}
}

◊subhead3{Extensions}

◊ul{
    ◊li{Gambling, poker chips or blackjack? (◊(link provably_fair_gambling))}
    ◊li{◊link[delorean]{A DeLorean} (car that's a time machine in Back to The Future) (◊(link timestamping_service))}
}

Many of these can probably be combined with each other or reworked to fit the cover while keeping the reference intact.


◊subhead{Images used in the book}

There are a few images in the book, and it would be awesome if the cover could match the cartoony style of them, but obviously massively improved:

◊figure[#:class "flex-50"]{
    ◊raw-img[#:src "/images/send_crypto.png" #:alt ""]{}
    ◊raw-img[#:src "/images/sending_network.png" #:alt ""]{}
}

◊figure[#:class "flex-50"]{
    ◊raw-img[#:src "/images/generals_decisions.png" #:alt ""]{}
    ◊raw-img[#:src "/images/global.png" #:alt ""]{}
}

◊figure[#:class "flex-25"]{
    ◊raw-img[#:src "/images/20kg_copper.png" #:alt ""]{}
    ◊raw-img[#:src "/images/doge.png" #:alt ""]{}
    ◊raw-img[#:src "/images/dancing.png" #:alt ""]{}
    ◊raw-img[#:src "/images/bitcoin-priest.png" #:alt ""]{}
}

◊img[#:src "/images/pig_chair_exchange_long.png" #:alt ""]{}
◊img[#:src "/images/xxx-payments2.png" #:alt ""]{}
◊img[#:src "/images/counterfeiting2.png" #:alt ""]{}

◊img[#:src "/images/unbanked-map.png" #:alt "" #:link #t]{}

◊figure[#:class "flex-50"]{
    ◊raw-img[#:src "/images/income-inequality-world.svg" #:alt ""]{}
    ◊raw-img[#:src "/images/encrypted_mailbox.png" #:alt ""]{}
}

◊figure[#:class "flex-50"]{
}

◊figure[#:class "flex-50"]{
    ◊raw-img[#:src "/images/coinjoin.png" #:alt ""]{}
    ◊raw-img[#:src "/images/monero-transactions2.png" #:alt ""]{}
}


◊subhead{Book covers in similar genres}

I don't think we have to mimic the covers of others, but I'd like our cover to stand out.

◊figure[#:class "flex-33"]{
    ◊raw-img[#:src "/images/other-covers/2.jpg" #:alt ""]{}
    ◊raw-img[#:src "/images/other-covers/3.jpg" #:alt ""]{}
    ◊raw-img[#:src "/images/other-covers/4.jpg" #:alt ""]{}
    ◊raw-img[#:src "/images/other-covers/5.jpg" #:alt ""]{}
    ◊raw-img[#:src "/images/other-covers/6.jpg" #:alt ""]{}
    ◊raw-img[#:src "/images/other-covers/8.jpg" #:alt ""]{}
    ◊raw-img[#:src "/images/other-covers/9.jpg" #:alt ""]{}
    ◊raw-img[#:src "/images/other-covers/7.jpg" #:alt ""]{}
    ◊raw-img[#:src "/images/other-covers/1.jpg" #:alt ""]{}
}


◊subhead{Other details}

◊ol{
    ◊li{I'm looking for someone experienced, to help me avoid common pitfalls.}
    ◊li{I'll self-publish using ingram spark.

        They might have some specific rules that the cover art must follow.
    }
    ◊li{I'd like the raw image files.}
    ◊li{The physical book should have a complete cover, for the front, back and side.

        I haven't decided what I want to do with the back, but there should be a bunch of text there.
    }
    ◊li{The cover should work for PDF and epub/mobi as well.}
    ◊li{If you'd like I can pay you with a cryptocurrency of your choice.}
}

◊(define fawkes "https://duckduckgo.com/?t=ffab&q=guy+fawkes+mask&ia=images&iax=images")
◊(define stacks "https://mashable.com/2016/07/27/german-hyperinflation/")
◊(define delorean "https://duckduckgo.com/?q=delorean+back+to+the+future&t=ffab&iar=images&iax=images&ia=images")
◊(define animal-farm "https://duckduckgo.com/?t=ffab&q=animal+farm+cover&iax=images&ia=images")

