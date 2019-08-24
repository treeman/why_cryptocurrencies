#lang pollen

◊(define-meta title "How to use this book")
◊(define-meta subtitle "Just some minor things to keep in mind")
◊(define-meta updated "2019-04-03T19:58:53+02:00")
◊(define-meta uuid "a69e0036-a749-4f7c-b02e-dbcfa2776540")

Each chapter is supposed to be standalone so you can jump around and read it however you want. The only prerequisite is to have a basic understanding of what a cryptocurrency does, which is described in ◊link[the-first-chapter]{the first chapter}. But if you really want to you can skip that as well and go back later if you need to.

This book is a work in progress and if you want to keep up to date you have three options:

◊ul{
  ◊li{Subscribe to the ◊link[feed-url]{feed}}
  ◊li{Follow the changes on ◊link[source-code]{Github}}
  ◊li{Join the mailing list

      ◊|subscription-form|}
}

I use ◊link[mbtype]{custom fonts} hosted locally on this site. While fonts are subjective the styling assumes you have these fonts and if you block them---like noscript does---it might look slightly off.

External links are highlighted green on hover and internal links are highlighted bright orange. For example compare the external link to ◊link[source-code]{Github} with the link to the ◊link["/"]{home page}. There is no tracking on this site but there may very well be on external sites, this serves as a small signifier for those who cares. It also makes it easier to download the site and read it offline.

Links to the previous and the next chapter can be found at the bottom as well as at the edge of the screen (hover on the edges to see).

Sidenotes use numbers in the text◊sn{sn} and marginnotes◊mn{mn} are notes without numbered references. On small screens like mobile phones the notes are hidden and can be shown by clicking on the sidenote number or the marginnote symbol ◊sans{†}.

◊ndef["sn"]{
    This is a sidenote. They're inspired by ◊link[tufte]{Tufte CSS}, feel free to check out the ◊link[source-code]{source of this site} as well if you're curious.
}
◊ndef["mn"]{
    This is a marginnote, they are sidenotes without a numbered reference.
}

While I do my very best to avoid errors I don't have an editor, only some close friends who help out. Therefore I would be most grateful for any feedback, ideas or error corrections you the reader may find. You can ◊link[mailto]{email me} or create a pull request or an issue ◊link[source-code]{on Github}.

◊(define the-first-chapter "/what_is_a_cryptocurrency.html")
◊(define tufte "https://edwardtufte.github.io/tufte-css/")
◊(define mbtype "https://mbtype.com/")

