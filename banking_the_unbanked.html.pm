#lang pollen

◊(define-meta title "Banking the unbanked")
◊;(define-meta subtitle "")
◊(define-meta updated "2019-06-12T08:51:00+02:00")
◊(define-meta uuid "875332fd-f5ad-4275-8254-008a2e74a4a0")





    How many unbanked adults have a mobile phone? Globally, about 1.1 billion — or about two-thirds of all unbanked adults

    ...

    Fewer unbanked adults have both a mobile phone and access to the internet in some form— whether through a smartphone, a home computer, an internet café, or some other way. Globally, the share is about a quarter.

So about 420 million (of 1.7 billion adults) have access to internet while being unbanked.

◊subhead{Who are the unbanked?}

◊; Color scheme for map
◊; http://colorbrewer2.org/#type=sequential&scheme=BuPu&n=6
◊; multi-hue
◊;#edf8fb (skip, too similar to background)
◊;#bfd3e6     209, 17, 90
◊;#9ebcda     210, 28, 85
◊;#8c96c6     230, 29, 78
◊;#8856a7     277, 49, 65
◊;#810f7c     303, 88, 51
◊; FIXME no data is too jarring

◊img[#:src "images/unbanked-map.png" #:class "fullwidth"]{
    Adults without a bank account, 2017. Source ◊link[findex-report]{Global Findex database}.
}

◊(define findex-report "https://globalfindex.worldbank.org/sites/globalfindex/files/2018-04/2017%20Findex%20full%20report_0.pdf")
