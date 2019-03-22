#lang pollen

◊(define-meta title "How to use this book")
◊(define-meta subtitle "Just some minor things")

Each chapter is supposed to be standalone so you can jump around and read it however you want. The only prerequisite is to have a basic understanding of what a cryptocurrency does which I describe in ◊link[the-first-chapter]{the first chapter}. But if you really want to you can skip that as well and go back later if you need to.

This book is a work in progress and if you want to keep up to date you have three options:

◊ul{
  ◊li{Subscribe to the ◊link[rss-feed]{RSS feed}}
  ◊li{Follow the changes on ◊link[source-code]{Github}}
  ◊li{Join the email list

      ◊|subscription-form|}
}

External links are colored green and internal links are bright orange. For example compare the external link to ◊link[source-code]{Github} with the link to the ◊link["/"]{home page}. There is no tracking on this site but there may very well be on external sites, this serves as a small signifier for those who cares about that. It also makes it easier to download the site and read it offline.

Links to the previous and the next chapter can be found at the bottom as well as at the edge of the screen.

Sidenotes use numbers in the text◊sn{sn} and marginnotes◊mn{mn} are notes without numbered references. On small screens like mobile phones the notes are hidden and can be shown by clicking on the sidenote number or the † symbol for marginnotes.

◊ndef["sn"]{
    This is a sidenote.
}
◊ndef["mn"]{
    This is a marginnote.
}

While I do my very best apart from close friends I don't use an editor so there may be errors in the book. Therefore I would be most grateful for any feedback, ideas or error corrections you the reader may find. You can ◊link[mailto]{email me} or create a pull request or an issue ◊link[source-code]{on Github}.

◊(define the-first-chapter "what_is_a_cryptocurrency.html")

