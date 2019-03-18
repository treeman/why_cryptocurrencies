#lang pollen

◊(define-meta title "The Bitcoin Whitepaper")
◊(define-meta subtitle "What started it all")
◊(define-meta no-side-space #t)

◊div[#:class "whitepaper"]{
    ◊link[bitcoin-pdf]{Bitcoin: A Peer-to-Peer Electronic Cash System}
}

The whitepaper is surprisingly easy to read and I highly recommend you read it. If you prefer a simplified explanation with annotations I can recommend ◊link[ann-wp]{this guide}. If you would rather have it in podcast form ◊link[pod-wp]{here's one}.

Note that the whitepaper was created in 2008 and some terminology and implementation details have changed, for example ◊em{nodes} in the paper refers to mining nodes while today most people run nodes but don't mine. But the high level description is just as true today more than 10 years later.


◊subhead{Alterations}

I'm sad I have to include this but there have been suggestions to ◊link[alter-wp]{alter the whitepaper hosted on bitcoin.org}. Rewriting an academic paper and rewriting Bitcoin's history for personal business interests is of course completely unacceptable, but here we are.

Therefore you might want to make sure you're reading the original unaltered whitepaper. There are those who ◊link[track-alterations]{try to keep track} of the different versions found online but it's always best to do it yourself. You can compare the pdf's sha256 hash with this:

◊code{b1674191a88ec5cdd733e4240a81803105dc412d6c6708d53ab94fc248f4f553}

If you want to go even further the whitepaper is also embedded in the blockchain which guarantees nobody can change it. Instructions available ◊link[wp-blockchain]{on stackexchange}.


◊(define bitcoin-pdf
  `("/files/bitcoin.pdf"
    "Bitcoin: A Peer-to-Peer Electronic Cash System"))

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
◊(define track-alterations
    `("https://blockchair.com/bitcoin/whitepaper/"
      "Blockchair tracks whitepaper versions found online"))
