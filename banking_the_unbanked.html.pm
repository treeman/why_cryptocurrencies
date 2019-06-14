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
◊;#bfd3e6     209, 17, 90       0-10
◊;#9ebcda     210, 28, 85       11-35
◊;#8c96c6     230, 29, 78       36-60
◊;#8856a7     277, 49, 65       61-80
◊;#810f7c     303, 88, 51       81-100
◊;            39,  57, 84       no data


◊; RGB
◊;237,248,251
◊;191,211,230
◊;158,188,218
◊;140,150,198
◊;136,86,167
◊;129,15,124

◊; FIXME
◊; regenrate
◊; Iraq isn't filled in
◊; philipines/malaysia

◊img[#:src "images/unbanked-map.png" #:class "fullwidth"]{
    Adults without a bank account, 2017.
    Source ◊link[findex-report]{Global Findex database}.
}

> 150 mil
    China > 200 mil
    India 190 mil
100--150 (skip!)
50--100 mil
10--50 mil
< 10 mil skip

◊;#f0f9e8   92, 7, 98           < (no labeL)0
◊;#bae4bc   123, 18, 89         1 - 10 mil
◊;#7bccc4   174, 40, 80         10 - 50 mil
◊;#43a2ca   198, 67, 79         50 - 100 mil
◊;                              100 - 150 mil (no country!)
◊;#0868ac   205, 95, 67         > 150 mil
◊;http://datawrapper.dwcdn.net/AmFVU/2/

◊img[#:src "images/unbanked-count-map.png" #:class "fullwidth"]{
    The number of adults without a bank account, 2017. See an ◊link[findex-interactive]{interactive version}.
    Source ◊link[findex-report]{Global Findex database}.
}

◊(define findex-report "https://globalfindex.worldbank.org/sites/globalfindex/files/2018-04/2017%20Findex%20full%20report_0.pdf")
◊(define findex-interactive "http://datawrapper.dwcdn.net/AmFVU/2/")
