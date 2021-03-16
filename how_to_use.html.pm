#lang pollen

◊(define-meta title "How to use this book")
◊(define-meta subtitle "Just some minor things to keep in mind")
◊(define-meta published "2019-04-12T00:00:00+01:00")
◊(define-meta updated "2020-10-09T19:49:52+02:00")
◊(define-meta uuid "a69e0036-a749-4f7c-b02e-dbcfa2776540")
◊(define-meta template "chapter.html")

◊(clear-sidenotes)

Each chapter is supposed to be standalone so you can jump around and read it however you want. The only prerequisite is to have a basic understanding of what a cryptocurrency does, which is described in ◊link[what_is_a_cryptocurrency]{the first part}, but if you want you can skip that as well and go back later if needed.

This book is a work in progress, so I'll add and rework chapters as I go. If you want to keep up to date you have three options:

◊ul{
  ◊li{Subscribe to the ◊link[feed-url]{feed}}
  ◊li{Follow the changes on ◊link[source-code]{Github}}
  ◊li{Join the mailing list

      ◊|subscription-form|}
}

I use ◊link[mbtype]{custom fonts} hosted locally on this site. While fonts are subjective the styling assumes you have these fonts and if you block them---like ◊link[noscript]{noscript} does---it might look slightly off.◊mn{good-idea}

◊ndef["good-idea"]{
    If you don't use noscript or ad-blockers, I ◊strong{highly} recommend you do. ◊link[ublock]{uBlock Origin} is an excellent ad-blocker (works on Firefox on mobile as well).
}

External links are highlighted green on hover and internal links are highlighted bright orange. For example compare the external link to ◊link[source-code]{Github} with the link to the ◊link[toc-url]{home page}. There is no tracking on this site but there may very well be on external sites, this serves as a small signifier for those who cares. It also makes it easier to download the site and read it offline.

Links to the previous and the next chapter can be found at the bottom as well as at the edge of the screen (hover on the edges to see).

I use sidenotes heavily throughout the text. Like footnotes they use numbered references in the text◊sn{sn} but are placed to the right or below the text instead of at the end of the chapters.

◊ndef["sn"]{
    This is a sidenote. They're inspired by ◊link[tufte]{Tufte CSS}, feel free to check out the ◊link[source-code]{source of this site} as well if you're curious.
}
◊ndef["mn"]{
    This is a marginnote, they are sidenotes without a numbered reference.
}

While I do my very best to avoid errors I don't have an editor, only some close friends who help out. Therefore I would be most grateful for any feedback, ideas or error corrections you the reader may find. You can ◊link[mailto]{email me} or create a pull request or an issue ◊link[source-code]{on Github}.

◊(define tufte
   (x-ref
     "2019-04-12"
     "https://edwardtufte.github.io/tufte-css/"
     "Dave Liepmann: Tufte CSS"))
◊(define ublock
   (x-ref
     #f
     "https://github.com/gorhill/uBlock"
     "uBlock Origin: An efficient blocker for Chromium and Firefox. Fast and lean."))

