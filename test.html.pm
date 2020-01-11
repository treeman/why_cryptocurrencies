#lang pollen

◊(define-meta title "Title")
◊;(define-meta subtitle "What started it all")
◊(define-meta updated "2019-04-03T19:59:59+02:00")
◊(define-meta uuid "581c4917-d862-49cb-9d01-495a9106081b")

First sentence.◊sn{sidenote} ◊em{Second} sentence.◊sn{sidenote2}


◊ol{
  ◊li{One thing}
  ◊li{Another}
}

◊note-pos[#:top -8]{sidenote}
◊note-pos[#:top -5]{sidenote2}

◊ndef["sidenote"]{
    This is my sidenote---my sidenote's amazing.

    Paragraphs are fun.
}
◊ndef["sidenote2"]{
    This is my OTHER sidenote... THIS is amazing.
}

And some more text here.

Just to make sure we're not inserting paragraphs or breaks unnecessarily.
