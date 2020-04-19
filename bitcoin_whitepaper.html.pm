#lang pollen

◊(define-meta title "The Bitcoin white paper")
◊(define-meta subtitle "What started it all")
◊(define-meta published "2019-04-12T00:00:00+01:00")
◊(define-meta updated "2020-04-19T10:06:55+02:00")
◊(define-meta uuid "581c4917-d862-49cb-9d01-495a9106081b")

◊div[#:class "whitepaper"]{
    ◊link[bitcoin-pdf]{Bitcoin: A Peer-to-Peer Electronic Cash System}
}

The white paper is surprisingly easy to read and I highly recommend you read it. If you prefer a simplified explanation with annotations I can recommend ◊link[ann-wp]{this guide}. If you would rather have it in podcast form ◊link[pod-wp]{here's one}.

Note that the white paper was created in 2008 and some terminology and implementation details have changed. For example ◊em{nodes} in the paper refers to mining nodes, while today most people run nodes but don't mine. But the high level description is just as true today more than 10 years later.


◊subhead{Alterations}

I'm sad I have to include this but there have been suggestions to ◊link[alter-wp]{alter the white paper hosted on bitcoin.org}. Rewriting an academic paper and rewriting Bitcoin's history for personal business interests is of course completely unacceptable, but here we are.

Therefore you might want to make sure you're reading the original unaltered white paper. There are those who ◊link[track-alterations]{try to keep track} of the different versions found online but it's always best to do it yourself. You can compare the pdf's SHA-256 hash with this:

◊code{b1674191a88ec5cdd733e4240a81803105dc412d6c6708d53ab94fc248f4f553}

If you want to go even further the white paper is also embedded in the blockchain which guarantees nobody can change it. Instructions available ◊link[wp-blockchain]{on stackexchange}.


◊(define ann-wp
   (x-ref
     "2020-04-19"
     "https://www.bitcoin.com/get-started/bitcoin-white-paper-beginner-guide/"
     "Bitcoin Whitepaper: A Beginner's Guide"))
◊(define pod-wp
   (x-ref
     "2020-04-19"
     "https://bitcoinnews.com/news/bitcoinnews-com-daily-podcast-5th-november-2018-the-bitcoin-white-paper/"
     "BitcoinNews.com Daily Podcast 5th November 2018: The Bitcoin White Paper"))
◊(define alter-wp
   (x-ref
     "2020-04-19"
     "https://github.com/bitcoin-dot-org/bitcoin.org/issues/1325"
     "Amendments to the Bitcoin paper"))
◊(define track-alterations
   (x-ref
     "2020-04-19"
     "https://blockchair.com/bitcoin/whitepaper/"
     "Blockchair tracks white paper versions found online"))

