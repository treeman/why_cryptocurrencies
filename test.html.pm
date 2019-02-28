#lang pollen

◊(define-meta template "homepage.html")
◊(define-meta title "test")

◊article[#:class "chapter"]{
  ◊div{div}

  In the beginning ◊mn{wp} there was nothing.

  ◊mndef["wp"]{
    Some "kind" of...

    Monster!
  }

◊sndef["two"]{
    Second definition.
}

Oh yes. Time to test ◊sn{one} sidenotes. Do they work well?

Maybe they ◊sn{two} do? Who knows?

◊sndef["one"]{
    One definition.
}


}
