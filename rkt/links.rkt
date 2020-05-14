#lang racket/base

(require "refs.rkt")

(provide (all-defined-out))

;; Site links

(define root-url "https://whycryptocurrencies.com")
(define toc-url `("/" "Table of contents"))

(define feed-url
  `("/feed.xml"
    "Feed to the site"))

(define source-code
  `("https://github.com/treeman/why_cryptocurrencies"
    "Source code to this site"))

(define email "contact@whycryptocurrencies.com")

(define mailto
  `(,(string-append "mailto:" email)
    "Send me an email"))

;; Books

(define the-box-book
  (book-ref
    "https://www.goodreads.com/book/show/316767.The_Box"
    "Marc Levinson"
    "The Box"))
(define shock-of-the-old-book
  (book-ref
    "https://www.goodreads.com/book/show/327488.The_Shock_of_the_Old"
    "David Edgerton"
    "The Shock of the Old"))
(define the-big-short-book
  (book-ref
    "https://www.goodreads.com/book/show/26889576-the-big-short"
    "Michael Lewis"
    "The Big Short: Inside the Doomsday Machine"))
(define after-the-music-stopped-book
  (book-ref
    "https://www.goodreads.com/book/show/15811560-after-the-music-stopped"
    "Alan S. Blinder"
    "After the Music Stopped"))
(define thinking-fast-and-slow-book
  (book-ref
    "https://www.goodreads.com/book/show/11468377-thinking-fast-and-slow"
    "Daniel Kahneman"
    "Thinking, Fast and Slow"))
(define case-against-fed-book
  (book-ref
    "https://www.goodreads.com/book/show/81976.The_Case_Against_the_Fed"
    "The Case Against the Fed"
    "Murray N. Rothbard"))
(define 1984-book
  (book-ref
    "https://www.goodreads.com/book/show/40961427-1984"
    "George Orwell"
    "1984"))
(define antifragile-book
  (book-ref
    "https://www.goodreads.com/book/show/13530973-antifragile"
    "Nassim Nicholas Taleb"
    "Antifragile: Things That Gain from Disorder"))
(define permanent-record-book
  (book-ref
    "https://www.goodreads.com/book/show/46223297-permanent-record"
    "Edward Snowden"
    "Permanent Record"))
(define animal-farm-book
  (book-ref
    "https://www.goodreads.com/book/show/170448.Animal_Farm"
    "George Orwell"
    "Animal Farm"))
(define code-breakers-book
  (book-ref
    "https://www.goodreads.com/book/show/29608.The_Codebreakers"
    "David Kahn"
    "The Codebreakers"))
(define thirst-book
  (book-ref
    "https://www.charitywater.org/thirst"
    "Scott Harrison"
    "Thirst"))
(define mastering-monero-book
  (book-ref
    "https://masteringmonero.com/"
    "SerHack"
    "Mastering Monero"))

;; Defs

(define charge-back-fraud
  (ch-ref
    'cheaper_faster.html #:ref "charge-back-fraud"
    "Cheaper & faster: Charge back fraud"))

(define hash-functions
  (ch-ref
    'cryptography.html #:ref "hash-functions"
    "Hash functions"))
(define bitcoin-addresses
  (ch-ref
    'cryptography.html #:ref "bitcoin-addresses"
    "Bitcoin addresses"))
(define public-key-cryptography
  (ch-ref
    'cryptography.html #:ref "public-key-cryptography"
    "Public-key cryptography"))

(define 51%-attack
  (ch-ref
    'how_do_cryptocurrencies_work.html #:ref "the-50%-security-assumption"
    "How do cryptocurrencies work?: The 50% security assumption"))
(define forks
  (ch-ref
    'how_do_cryptocurrencies_work.html #:ref "forks"
    "How do cryptocurrencies work?: Forks"))

(define cryptographic-hash-functions
  (x-ref
    "2020-04-08"
    "https://en.wikipedia.org/wiki/Cryptographic_hash_function"
    "Wikipedia: Cryptographic hash functions"))

(define gold-standard
  (x-ref
    "2019-05-16"
    "https://www.britannica.com/topic/gold-standard"
    "Gold standard"))
(define fractional-banking
  (x-ref
    "2019-05-16"
    "https://corporatefinanceinstitute.com/resources/knowledge/finance/fractional-banking/"
    "What is Fractional Banking?"))
(define sound-money
  (x-ref
    "2019-05-16"
    "https://www.soundmoneydefense.org/sound-money-explained"
    "What is Sound Money? Sound Money Explained"))

(define kyc
  (x-ref
    "2019-09-05"
    "https://en.wikipedia.org/wiki/Know_your_customer"
    "Wikipedia: Know your customer"))
(define aml
  (x-ref
    "2020-01-02"
    "https://www.investopedia.com/terms/a/aml.asp"
    "Anti Money Laundering (AML)"))
(define moral-hazard
   (x-ref
     "2019-10-25"
     "https://www.thebalance.com/moral-hazard-what-it-is-and-how-it-works-315515"
     "Moral Hazard: Definition and Examples "))

;; Chapters

(define about-the-book
  (ch-ref
    'about_the_book.html
    "About the book"))
(define what_is_a_cryptocurrency
  (ch-ref
    'what_is_a_cryptocurrency.html
    "What is a cryptocurrency?"))

(define properties_of_a_cryptocurrency
  (ch-ref
    'properties_of_a_cryptocurrency.html
    "Properties of a cryptocurrency"))
(define no-more-third-parties
  (ch-ref
    'properties_of_a_cryptocurrency.html #:ref "no-more-third-parties"
    "Properties of a cryptocurrency"))
(define private_property
  (ch-ref
    'properties_of_a_cryptocurrency.html #:ref "private"
    "Properties of a cryptocurrency: Private"))
(define predetermined-emission-rate
  (ch-ref
    'properties_of_a_cryptocurrency.html #:ref "predetermined-emission-rate"
    "Properties of a cryptocurrency: Predetermined emission rate"))
(define how_do_cryptocurrencies_work
  (ch-ref
    'how_do_cryptocurrencies_work.html
    "How do cryptocurrencies work?"))
(define transaction-security
  (ch-ref
    'how_do_cryptocurrencies_work.html #:ref "transaction-security"
    "How do cryptocurrencies work?: Transaction security"))
(define double-spending
  (ch-ref
    'how_do_cryptocurrencies_work.html #:ref "copying-a-coin-&-double-spending"
    "How do cryptocurrencies work?: Copying a coin & double spending"))
(define snake_oil
  (ch-ref
    'look_out_for_snake_oil.html
    "Look out for snake oil"))
(define what_is_money
  (ch-ref
    'what_is_money.html
    "What is money?"))
(define money-properties
  (ch-ref
    'what_is_money.html #:ref "what-properties-does-good-money-have?"
    "What is money?: What properties does good money have?"))
(define money-functions
  (ch-ref
    'what_is_money.html #:ref "what-functions-does-money-serve?"
    "What is money?: What functions does money serve?"))
(define are_cryptocurrencies_money
  (ch-ref
    'are_cryptocurrencies_money.html
    "Are cryptocurrencies money?"))
(define comparing-properties
  (ch-ref
    'are_cryptocurrencies_money.html #:ref "comparing-properties-with-other-forms-of-money"
    "Are cryptocurrencies money?: Comparing properties with other forms of money"))

(define better_digital_payments
  (ch-ref
    'better_digital_payments.html
    "Better digital payments"))
(define cheaper_faster
  (ch-ref
    'cheaper_faster.html
    "Cheaper & faster"))
(define cryptocurrency-fees
  (ch-ref
    'cheaper_faster.html #:ref "cryptocurrency-fees"
    "Cheaper & faster: Cryptocurrency fees"))
(define fee-comparisons
  (ch-ref
    'cheaper_faster.html #:ref "fee-comparisons"
    "Cheaper & faster: Fee comparisons"))
(define speed-comparisons
  (ch-ref
    'cheaper_faster.html #:ref "speed-comparisons"
    "Cheaper & faster: Speed comparisons"))
(define uncensorable_donations
  (ch-ref
    'uncensorable_donations.html
    "Uncensorable donations"))
(define censorship-is-real
  (ch-ref
    'uncensorable_donations.html #:ref "Censorship is real"
    "Uncensorable donations: Censorship is real"))
(define undesirable_businesses
  (ch-ref
    'undesirable_businesses.html
    "Undesirable businesses"))
(define freezing_of_merchant_accounts
  (ch-ref
    'freezing_of_merchant_accounts.html
    "Freezing of merchant accounts"))
(define for_the_unbanked
  (ch-ref
    'for_the_unbanked.html
    "For the unbanked"))

(define better_currency
  (ch-ref
    'better_currency.html
    "A better currency"))
(define private_money
  (ch-ref
    'private_money.html
    "Private money"))
(define global_currency
  (ch-ref
    'global_currency.html
    "A global currency"))
(define financial_crisis
  (ch-ref
    'financial_crisis.html
    "The financial crisis, bad loans and bailouts"))
(define the-bailouts
  (ch-ref
    'financial_crisis.html #:ref "The bailouts"
    "The financial crisis, bad loans and bailouts: The bailouts"))

(define darknet_markets
  (ch-ref
    'darknet_markets.html
    "Darknet markets"))
(define swiss_bank_account_in_your_pocket
  (ch-ref
    'swiss_bank_account_in_your_pocket.html
    "A Swiss bank account in your pocket"))
(define cashless_dystopia
  (ch-ref
    'cashless_dystopia.html
    "The cashless dystopia"))
(define separation_of_money_and_state
  (ch-ref
    'separation_of_money_and_state.html
    "Separation of money and state"))
(define protection_against_government_confiscation
  (ch-ref
    'protection_against_government_confiscation.html
    "Protection against government confiscation"))

(define a_defective_system
  (ch-ref
    'a_defective_system.html
    "A defective system"))

(define extensions
  (ch-ref
    'extensions.html
    "Extensions"))
(define embedding-data
  (ch-ref
    'extensions.html #:ref "embedding-data"
    "Extensions: Embedding data"))
(define the_blind_leading_the_blind
  (ch-ref
    'the_blind_leading_the_blind.html
    "The blind leading the blind"))
(define timestamping_service
  (ch-ref
    'timestamping_service.html
    "Timestamping service"))
(define seeds-and-pseudo-random-generators
  (ch-ref
    'provably_fair_gambling.html #:ref "seeds-and-pseudo-random-generators"
    "Provably fair gambling"))
(define provably_fair_gambling
  (ch-ref
    'provably_fair_gambling.html
    "Provably fair gambling"))
(define tokens
  (ch-ref
    'tokens.html
    "Tokens"))

(define challenges
  (ch-ref
    'challenges.html
    "Challenges for cryptocurrencies"))
(define scalability-challenge
  (ch-ref
    'challenges.html #:ref "scalability"
    "The scalability challenge"))
(define privacy-challenge
  (ch-ref
    'challenges.html #:ref "privacy-and-fungibility"
    "The privacy and fungibility challenge"))
(define bitcoin_whitepaper
  (ch-ref
    'bitcoin_whitepaper.html
    "The Bitcoin Whitepaper"))
(define cryptography_intro
  (ch-ref
    'cryptography.html
    "A hitchhiker’s guide to cryptography"))

;; Misc links

(define wp-blockchain
  (x-ref
    "2020-04-08"
    "https://bitcoin.stackexchange.com/questions/35959/how-is-the-whitepaper-decoded-from-the-blockchain-tx-with-1000x-m-of-n-multisi/35970"
    "Stackexchange: How is the whitepaper decoded from the blockchain"))

(define bitcoin-pdf
  `("https://whycryptocurrencies.com/files/bitcoin.pdf"
    "Bitcoin: A Peer-to-Peer Electronic Cash System"))

(define electroncash
  (x-ref
    "2020-04-08"
    "https://electroncash.org/"
    "Electron Cash: A Bitcoin Cash SPV Wallet"))

(define mbtype
  (x-ref
    #f
    "https://mbtype.com/"
    "MB Type: Fonts designed by Matthew Butterick"))
(define noscript
  (x-ref
    #f
    "https://noscript.net/"
    "NoScript"))

(define dao
  (x-ref
    "2019-04-24"
    "https://fullstacks.org/materials/ethereumbook/16_appdx-forks-history.html"
    "Ethereum Fork History"))

(define block-0
  (x-ref
    "2019-10-25"
    "https://blockchair.com/bitcoin/block/0"
    "Bitcoin block 0"))

(define great-depression
   (x-ref
     "2019-10-25"
     "https://en.wikipedia.org/wiki/Great_Depression"
     "Wikipedia: Great Depression"))

(define china-social-credit
   (x-ref
     "2019-12-09"
     "https://www.inkstonenews.com/china/chinas-13-million-discredited-individuals-face-discrimination-thanks-social-credit-system/article/3003319"
     "‘Worse than doing time’: life on the wrong side of China’s social credit system"))
(define wayback-machine 
  (x-ref
    "2019-06-12"
    "https://archive.org/"
    "Internet Archive: Wayback Machine"))

(define Monero
  (x-ref
    "2019-04-24"
    "https://www.getmonero.org/"
    "Monero: A Reasonably Private Digital Currency"))

(define blockchair
  (x-ref
    "2020-03-17"
    "https://blockchair.com/"
    "Blockchair"))

