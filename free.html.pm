#lang pollen

◊(define-meta title "Completely free")
◊(define-meta subtitle "Read it online for free without cost of any kind")
◊(define-meta updated "2019-04-03T19:59:17+0200")
◊(define-meta uuid "4ede8ca8-fd2e-4112-9d00-e383f94e1a01")

This book is completely free for you to read online and will be so forever. There will be no ads, no tracking and no crypto mining in the browser.◊sn{browser-mining}

For all you noscript users the site will work perfectly well without javascript---in fact I aim to avoid it altogether. Note that I use custom fonts which noscript blocks by default.

When I some day finish the book and decide to release it in other formats I may charge for them, but the web version will always be free.

If you find the book interesting and want to show appreciation the best way is to share it with others.

◊subhead{Donations is a perfect use for cryptocurrencies}

You can also send donations, big or small, from anywhere in the world nearly instantly with small fees and no possibility of censorship. This is not possible with anything else.

◊div[#:class "donations"]{
    ◊crypto["#" "xxx"]{Bitcoin (BTC)}
    ◊crypto["#" "xxx"]{Bitcoin Cash (BCH)}
    ◊crypto["#" "xxx"]{Dogecoin (DGC)}
    ◊crypto["#" "xxx"]{Ethereum (ETH)}
    ◊crypto["#" "xxx"]{Litecoin (LTC)}
    ◊crypto["#" "xxx"]{Monero (XMR)}
}

If you're missing a coin you ◊em{really} want to use please ◊link[mailto]{contact me}. If it's not too much hassle I will consider it but please no ◊link[snake-oil]{snake oil}.

◊ndef["browser-mining"]{
    Some sites have replaced ads on their sites and instead use visitors' computers to mine for them. A novel way to use cryptocurrencies but with questionable efficiency. Some do this without asking or notifying you which is definitely scammy. Therefore many adblockers block them outright.
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

