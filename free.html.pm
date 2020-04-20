#lang pollen

◊(define-meta title "Completely free")
◊(define-meta subtitle "Read it online for free without cost of any kind")
◊(define-meta published "2019-04-12T00:00:00+01:00")
◊(define-meta updated "2020-02-18T07:31:14+01:00")
◊(define-meta uuid "4ede8ca8-fd2e-4112-9d00-e383f94e1a01")

This book is completely free for you to read online and will be so forever. There will be no ads, no tracking and no crypto mining in the browser.◊sn{browser-mining}

For all you ◊link[noscript]{noscript} users the site will work perfectly well without javascript---in fact I aim to avoid it altogether. I do use ◊link[mbtype]{custom fonts} hosted on this site which noscript blocks by default.

When I some day finish the book and decide to release it in other formats I may charge for them, but the web version will always be free.  If you find the book interesting and want to show appreciation the best way is to share it with others.

◊subhead{Donations is a perfect use for cryptocurrencies}

You can also send donations from anywhere in the world ◊link[cheaper_faster]{nearly instantly with small fees} and ◊link[uncensorable_donations]{no possibility of censorship}. This isn't possible with anything else.

If you want you can try it out:

◊section[#:class "donations"]{
    ◊crypto["/images/donations/btc.svg"
            "1KDBPbyVhiqotSgnUJzFbdfjn3hUsSgq6W"]{
        Bitcoin (BTC)
    }
    ◊crypto["/images/donations/bch.svg"
            "bitcoincash:qqpunsxkhpkuqw4wgpy3tfkqd3ur2ens0gtzf3lzdy"]{
        Bitcoin Cash (BCH)
    }
    ◊crypto["/images/donations/xmr.svg"
            "45T1KEsECksHE2ngx7m8FRFb8rEBcDz2w37vP7Jt7sNXZfQBZWmKn2pRKBuiefGGYvjQ7amk4gvFCamzisvdh9qhUZpjbeg"]{
        Monero (XMR)
    }
}

If you're missing a coin you ◊em{really} want to use please ◊link[mailto]{contact me}. If it's not too much hassle I'll consider it, but please no ◊link[snake_oil]{snake oil}.

◊ndef["browser-mining"]{
    Some sites have replaced ads on their sites and instead use visitors' computers to mine for them. A novel way to use cryptocurrencies but with questionable efficiency. Some do this without asking or notifying you which is definitely scammy. Therefore many adblockers block them outright.
}


◊(define (crypto qr address name)
   (define id (string-append "donate-"
                             (string-downcase (second (regexp-match #px"\\((\\w+)\\)" name)))))
   `(div ((class "donation"))
      (label ((class "donation-label") (for ,id)) ,name)
      (input ((id ,id) (class "donation-toggle") (type "checkbox")))
      (span ((class "donation-content"))
            (div ((class "address")) ,address)
            (img ((class "qr") (src ,qr))))))

