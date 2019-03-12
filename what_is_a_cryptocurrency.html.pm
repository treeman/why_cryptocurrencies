#lang pollen

◊(define-meta title "What is a cryptocurrency?")
◊(define-meta subtitle "Peer-to-peer electronic cash")

If we're going to talk about cryptocurrencies and whether they're useful or not we need to know what they are. If we don't know what they do and what properties they have how can we tell what value---if any--- they have?

Technical understanding of how they work is beneficial but not required to discuss their usefulness. It's enough to know what they do differently compared to alternatives and what properties they have. If you find it too hard to accept they can live up to their claims I encourage you to do further research.◊mn{wp}

"Peer-to-peer electronic cash" is the title of the Bitcoin whitepaper and I think it's a perfect explanation of what a cryptocurrency is: it's like cash but in digital form.

◊ndef["wp"]{
    The whitepaper is surprisingly easy to read and I highly recommend you ◊link[wp]{read it}. If you prefer there's a simplified explanation with annotations ◊link[ann-wp]{available here}. And in ◊link[pod-wp]{podcast form}.

    Note that the whitepaper was created in 2008 and some terminology and implementation details have changed, but the high level description is just as true today more than 10 years later.

    There have been suggestions to ◊link[alter-wp]{alter the whitepaper hosted on bitcoin.org}. Yes it's completely unacceptable but here we are. If you want to make sure you're reading the original one you can compare the pdf's sha256 hash with this:

    ◊icode{b1674191a88ec5cdd733e4240a81803105dc412d6c6708d53ab94fc248f4f553}

    If you want to go even further the whitepaper is also embedded in the blockchain which guarantees nobody can change it, as long as you know how to retrieve it.  Instructions available ◊link[wp-blockchain]{here}.
}


◊(define ann-wp
   "https://www.bitcoin.com/guides/bitcoin-white-paper-beginner-guide")
◊(define pod-wp
   "https://bitcoinnews.com/bitcoinnews-com-daily-podcast-5th-november-2018-the-bitcoin-white-paper/")
◊(define alter-wp
   `("https://github.com/bitcoin-dot-org/bitcoin.org/issues/1325"
     "Amendments to the Bitcoin paper"))
◊(define wp-blockchain
   `("https://bitcoin.stackexchange.com/questions/35959/how-is-the-whitepaper-decoded-from-the-blockchain-tx-with-1000x-m-of-n-multisi/35970"
     "Stackexchange: How is the whitepaper decoded from the blockchain"))
