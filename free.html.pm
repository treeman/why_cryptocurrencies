#lang pollen

◊(define-meta title "Free & reader-supported")
◊(define-meta subtitle "Read it online for free without cost of any kind")

This book is completely free for you to read online and will be so forever. There will be no ads, no tracking and no crypto mining in the browser.◊sn{browser-mining} There won't even be any javascript on the site.

If I some day finish the book and decide to release it in other formats I may charge for them, but the web version will always be free.

◊subhead{Then why donate?}

Because without revenue the book dies.

If you think the book was worth your time please consider donating. I'm relying on your generosity to fund writing it. And if you don't think the book was worth your time, sorry for wasting it.

◊subhead{Donations is a perfect use for cryptocurrencies}

You can send any amount of money, big or small, from anywhere in the world nearly instantly to me without any middleman. That's not possible with anything else.

◊div[#:class "donations"]{
    ◊crypto{Bitcoin (BTC)}
    ◊crypto{Bitcoin Cash (BCH)}
    ◊crypto{Dogecoin (DGC)}
    ◊crypto{Ethereum (ETH)}
    ◊crypto{Litecoin (LTC)}
    ◊crypto{Monero (XMR)}
}

If you're missing a coin you ◊em{really} want to use please contact me. If it's not too much hassle I will consider it but please no ◊link[snake-oil]{snake oil}.

◊ndef["browser-mining"]{
    Some sites have replaced ads on their sites and instead use visitors' computers to mine for them. A novel way to use cryptocurrencies but with questionable efficiency. Some do this without asking or notifying you which is definitely scammy.
}

◊(define snake-oil "/look_out_for_snake_oil.html")

◊(define (crypto name)
   ;; TODO better id
   ;; TODO should add a QR code image
   ;; TODO should add real donation addreses
   (define id name)
   `(div ((class "donation"))
      (label ((class "donation-label") (for ,id)) ,name)
      (input ((id ,id) (class "donation-toggle") (type "checkbox")))
      (span ((class "donation-content"))
            (span ((class "qr")) "QR code")
            (span ((class "address")) "bitcoincash:qz4m05qjhd66ggqvugxqm9jprk348nyalgg462vszc"))))

