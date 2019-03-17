#lang pollen

◊(define-meta title "Free & reader-supported")
◊(define-meta subtitle "Read it online for free without cost of any kind")

This book is completely free for you to read online and will be so forever. There will be no ads, no tracking and no crypto mining in the browser.◊sn{browser-mining} There won't even be any javascript on the site.

When I some day finish the book and decide to release it in other formats I may charge for them, but the web version will always be free.

If you want to show appreciation for the book the best way is to share it with others.

◊subhead{Donations is a perfect use for cryptocurrencies}

You can also send donations, big or small, from anywhere in the world nearly instantly with small fees and no possibility of censorship. This is not possible with anything else.

◊div[#:class "donations"]{
    ◊crypto["#" "bitcoincash:qz4m05qjhd66ggqvugxqm9jprk348nyalgg462vszc"]{Bitcoin (BTC)}
    ◊crypto["#" "bitcoincash:qz4m05qjhd66ggqvugxqm9jprk348nyalgg462vszc"]{Bitcoin Cash (BCH)}
    ◊crypto["#" "bitcoincash:qz4m05qjhd66ggqvugxqm9jprk348nyalgg462vszc"]{Dogecoin (DGC)}
    ◊crypto["#" "bitcoincash:qz4m05qjhd66ggqvugxqm9jprk348nyalgg462vszc"]{Ethereum (ETH)}
    ◊crypto["#" "bitcoincash:qz4m05qjhd66ggqvugxqm9jprk348nyalgg462vszc"]{Litecoin (LTC)}
    ◊crypto["#" "bitcoincash:qz4m05qjhd66ggqvugxqm9jprk348nyalgg462vszc"]{Monero (XMR)}
}

If you're missing a coin you ◊em{really} want to use please contact me. If it's not too much hassle I will consider it but please no ◊link[snake-oil]{snake oil}.

◊ndef["browser-mining"]{
    Some sites have replaced ads on their sites and instead use visitors' computers to mine for them. A novel way to use cryptocurrencies but with questionable efficiency. Some do this without asking or notifying you which is definitely scammy.
}

◊(define snake-oil "/look_out_for_snake_oil.html")

◊(define (crypto qr address name)
   (define id (string-append "donate-"
                             (string-downcase (second (regexp-match #px"\\((\\w+)\\)" name)))))
   `(div ((class "donation"))
      (label ((class "donation-label") (for ,id)) ,name)
      (input ((id ,id) (class "donation-toggle") (type "checkbox")))
      (span ((class "donation-content"))
            (img ((class "qr") (src ,qr)))
            (div ((class "address")) ,address))))

