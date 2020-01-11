#lang pollen

◊(define-meta title "Title")
◊;(define-meta subtitle "What started it all")
◊(define-meta updated "2019-04-03T19:59:59+02:00")
◊(define-meta uuid "581c4917-d862-49cb-9d01-495a9106081b")

First sentence.◊sn{sidenote} ◊em{Second} sentence.◊sn{sidenote2}


◊ol{
  ◊li{One thing◊sn{list-note}}
  ◊li{Another}
}

◊note-pos[]{sidenote}
◊note-pos[]{sidenote2}

◊ndef["sidenote"]{
    This is my sidenote---my sidenote's amazing. Scooby doobiy do where are yooou? There's an airplane sitting here, with a truck outside flashing it's things. Maybe he wants to go on a date?

    Paragraphs are fun.
}
◊ndef["sidenote2"]{
    This is my OTHER sidenote... THIS is amazing.
}

◊ndef["list-note"]{
    Sidenote in list.
}

And some more text here.

Just to make sure we're not inserting paragraphs or breaks unnecessarily.
