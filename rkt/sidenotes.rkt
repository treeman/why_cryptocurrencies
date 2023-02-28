#lang racket/base

(require pollen/tag pollen/decode txexpr)
(require racket/match racket/string racket/list)
(require "string-process.rkt")
(require "decode.rkt")
(require "refs.rkt")
(require racket/pretty)

(provide ndef sn mn mn2 note-pos decode-sidenotes clear-sidenotes)

(define (ref-symbol ref-in)
  (string->symbol (format "nd-~a" ref-in)))


;; Definitions

(define note-defs (make-hash))

(define (ndef ref-in . def)
  (define ref (ref-symbol ref-in))

  (when (hash-has-key? note-defs ref)
    (error (format "duplicate ndef '~a'" ref-in)))

  (hash-set! note-defs ref def)
  "")

(define (clear-sidenotes)
  (hash-clear! note-defs)
  (hash-clear! notes)
  (hash-clear! note-pos-refs)
  (set! sidenote-counter 0))


;; Notes

(struct note (ref sign top bottom) #:mutable)
(define (make-note ref
                   #:sign [sign #f]
                   #:top [top #f]
                   #:bottom [bottom #f])
  (note ref sign top bottom))

(define notes (make-hash))

(define (get-note ref)
  (hash-ref notes ref #f))

(define sidenote-counter 0)
(define (assign-sidenote-counter)
  (set! sidenote-counter (+ sidenote-counter 1))
  sidenote-counter)

(define (set-sidenote ref)
  (set-note ref (assign-sidenote-counter)))

(define (set-marginnote ref)
  (set-note ref 'marginnote))

(define (set-note ref sign)
  (define uid (unique-note-uid ref))
  (define note (get-note uid))
  (if note
    (begin
      (when (note-sign note)
        ;; Should never happen... Hopefully.
        (error (format "Failed to make sidenote refs unique! '~v'~n" ref)))
      (set-note-sign! note sign))
    (hash-set! notes uid (make-note ref #:sign sign))))

;; Uniqueness allows multiple sidenote references for a single definition.
(define (unique-note-uid ref #:postfix [postfix #f])
  (define uid
    (if postfix
      (string->symbol (format "~a~a" ref postfix))
      ref))
  (define note (get-note uid))
  (if (and note
           (note-sign note))
    (if postfix
      (unique-note-uid ref #:postfix (+ postfix 1))
      (unique-note-uid ref #:postfix 0))
    uid))


(define (note-def note)
  (define ref (note-ref note))
  (define def (hash-ref note-defs ref #f))
  (unless def (error (format "missing ref '~s'" ref)))
  def)

(define (mn ref-in #:top [top #f] #:bottom [bottom #f])
  ; Disable marginnotes in epub
  ; Because we have less control over fonts, enforce sidenote refs on all notes.
  (sn ref-in #:top top #:bottom bottom))
  ; (define ref (ref-symbol ref-in))
  ; (set-marginnote ref)
  ; (set-note-top ref top)
  ; (set-note-bottom ref bottom)
  ; ref)

(define (mn2 ref-in #:top [top #f] #:bottom [bottom #f])
  ; Actually, in some rare cases we should use marginnotes
  (define ref (ref-symbol ref-in))
  (set-marginnote ref)
  (set-note-top ref top)
  (set-note-bottom ref bottom)
  ref)

(define (sn ref-in #:top [top #f] #:bottom [bottom #f])
  (define ref (ref-symbol ref-in))
  (set-sidenote ref)
  (set-note-top ref top)
  (set-note-bottom ref bottom)
  ref)

(define note-pos-refs (make-hash))

(define (note-pos ref-in
                  #:top [top #f]
                  #:bottom [bottom #f])
  (define ref (ref-symbol ref-in))
  (define pos-ref (ref->pos-ref ref))
  (hash-set! note-pos-refs pos-ref ref)
  (set-note-top ref top)
  (set-note-bottom ref bottom)
  pos-ref)

(define (set-note-top ref top)
  (when top
    (define note (get-note ref))
    (if note
      (set-note-top! note top)
      (hash-set! notes ref (make-note ref #:top top)))))

(define (set-note-bottom ref bottom)
  (when bottom
    (define note (get-note ref))
    (if note
      (set-note-bottom! note bottom)
      (hash-set! notes ref (make-note ref #:bottom bottom)))))

(define (ref->pos-ref ref)
  (string->symbol (format "~a-pos" (symbol->string ref))))

(define (decode-sidenotes in)
  (foldr (λ (x acc)
            (if (txexpr? x)
              (decode-and-append-txexpr x acc)
              (cons x acc)))
         `() in))

(define (decode-and-append-txexpr x acc)
  (let ((decoded (decode-txexpr x)))
    (append (car decoded)
            (append (expand-sidenote-defs (cdr decoded))
                    acc))))

;; Decode a txexpr into
;; ((list decoded-txexpr) . (list notes-to-place-after))
;; Which should be combined by the caller.
(define (decode-txexpr x)
  (define tag (get-tag x))
  (define attrs (get-attrs x))
  (define elems (get-elements x))

  (define (allow-sidenotes-inside? tag)
    (not (member tag `(p ol ul li blockquote))))

  (define notes-after `())
  (define notes-manual-pos `())

  (define decoded-elems
    (foldr
      (λ (x acc)
         (define note (get-note x))
         (define note-pos-ref (hash-ref note-pos-refs x #f))
         (cond
           ;; Recurse down through other txexprs.
           [(txexpr? x)
            (define decoded (decode-txexpr x))
            (if (allow-sidenotes-inside? tag)
              (begin
                (append (car decoded)
                        (append (expand-sidenote-defs (cdr decoded))
                                acc)))
              (begin
                (set! notes-after (append (cdr decoded)
                                          notes-after))
                (append (car decoded) acc)))]
           ;; Inline note expansion.
           [note
             (begin
               (unless (manual-pos? note)
                 (set! notes-after (cons note notes-after)))
               (append (ref-label note)
                       acc))]
           ;; Explicit note def expansion.
           [note-pos-ref
             (define note (get-note note-pos-ref))
             (unless note
               (error (format "Missing note for pos: '~v'~n" note-pos-ref)))
             (set! notes-manual-pos (cons note notes-manual-pos))
             acc]
           [else
             (cons x acc)]))
      `()
      elems))

  ;; Often when we're expanding note defs from manual positions,
  ;; we'll get an aside inside a paragraph. In this case we need to remove the
  ;; asides, and place them in a list, and possibly remove the paragraph completely as well.
  (define non-empty-txexpr
    (if (and
          ;; Technically I don't think we need all these checks,
          ;; but I'm taking a better safe than sorry approach to not accidentally muck
          ;; up some chapter somewhere.
          (eq? tag 'p)
          (not (null? notes-manual-pos))
          (empty-elements? decoded-elems))
      `()
      (list (txexpr tag attrs decoded-elems))))

  (define decoded-list (append non-empty-txexpr
                               ;; Manually positioned notes should be placed in our
                               ;; order
                               (expand-sidenote-defs #:sort #f
                                                     notes-manual-pos)))

  (cons decoded-list notes-after))

(define (expand-sidenote-defs #:sort [sort? #t] notes)
  (std-decode
    (map expand-sidenote
         (if sort?
           (sort notes note<)
           notes))))

(define (note< a b)
  (define a-sign (note-sign a))
  (define b-sign (note-sign b))
  (cond
    [(eq? a-sign b-sign)
     (string<? (symbol->string (note-ref a)
                               (note-ref b)))]
    [(eq? a-sign 'marginnote)
     a-sign]
    [(eq? b-sign 'marginnote)
     b-sign]
    [else
      (< a-sign b-sign)]))

(module+ test
  (require rackunit)

  (check-equal? (decode-txexpr `(p "One")) `(((p "One"))))
  (check-equal? (decode-txexpr `(img (src "/img.png")))
                `(((img (src "/img.png")))))

  (check-equal? (decode-sidenotes `((p "One") (p "Two")))
                `((p "One") (p "Two")))
  (check-equal? (decode-sidenotes
                  '((figure (img ((src "/img.png"))) (figcaption "Cap"))))
                '((figure (img ((src "/img.png"))) (figcaption "Cap"))))
  )

(define (empty-elements? es)
  (or (null? es)
      (andmap (λ (x)
                 (or (eq? x "")
                     (eq? x 'br)
                     (null? x)
                     (equal? x '(br))))
              es)))

(module+ test
  (require rackunit)

  (check-equal? (empty-elements? `())
                #t)
  (check-equal? (empty-elements? `(""))
                #t)
  (check-equal? (empty-elements? `("" br ""))
                #t)
  (check-equal? (empty-elements? `("" (br) ""))
                #t)
  (check-equal? (empty-elements? `("" (div) ""))
                #f)
  )

(define (manual-pos? note)
  (define ref (note-ref note))
  (define pos-ref (ref->pos-ref (note-ref note)))
  (hash-has-key? note-pos-refs pos-ref))

(define (note-id note)
  (to-name (format "~a" (note-ref note))))

(define (aside-label note)
  (define sign (note-sign note))
  (if (eq? sign 'marginnote)
    `()
    `((sup ((class "sidenote-number")) ,(format "~a" sign)))))

(define (ref-label note)
  (define sign (note-sign note))
  (if (eq? sign 'marginnote)
    `()
    `((a ((epub:type "noteref")
          (class "sidenote-number")
          (href ,(format "#~a"(note-id note))))
         ,(format "~a" sign)))))

(define (expand-sidenote note)
  (define ref (note-ref note))
  (define id (note-id note))
  (define def (note-def note))
  (define top (note-top note))
  (define bottom (note-bottom note))
  (when (and top (not (number? top)))
    (error (format "Not a number: '~a' for sidenote '~a'~n" top ref)))
  (when (and bottom (not (number? bottom)))
    (error (format "Not a number: '~a' for sidenote '~a'~n" bottom ref)))

  (define styles
    (let ((styles `()))
      (when bottom (set! styles (cons (format "margin-bottom:~aem;" bottom)
                                      styles)))
      (when top (set! styles (cons (format "margin-top:~aem;" top)
                                   styles)))
      (string-join styles " ")))

  (define attrs `((epub:type "endnote") (class "sidenote") (role "note") (id ,id)))
  ; Remove bottom and top margins that are used for sidenote positioning.
  ; If the reader overrides font or font size, then we will get overlap between
  ; sidenotes. We really don't want that, so let's skip these.
  ; (when (non-empty-string? styles)
  ;   (set! attrs (append attrs
  ;                       `((style ,styles)))))

  `(aside ,attrs
        ,@(aside-label note)
        ,@def))

;; A larger test to test the sidenote placement.
(module+ test
  (require rackunit)

  ;; These tags are called when the chapter is parsed, and references are inserted in-place.
  (define 1st (sn "1st"))
  (define 2nd (sn "2nd"))
  (define 3rd (mn "3rd")) ; Turn marginnotes into sidenotes
  (define 3rd-pos (note-pos "3rd"))
  (define list-note (sn "list-note"))
  (define 4th (mn2 "4th"))

  (ndef "1st" "1st")
  (ndef "2nd" "2nd")
  (ndef "3rd" "3rd")
  (ndef "list-note" "In list.")
  (ndef "4th" "Margin")

  (define input
    `((p "One." ,1st " Two." ,2nd " Three." ,3rd " Four." ,4th)
      (ol
        (li "a" ,list-note)
        (li "b"))
      (p ,3rd-pos)))

  ;; Maybe there could be a better way to do html matching.
  ;; Like including an "ignore" tag to match only against the most important things,
  ;; but that's too much work for me now. Meh.
  (define expected
    '((p
        "One."
        (a ((epub:type "noteref") (class "sidenote-number") (href "#nd-1st")) "1")
        " Two."
        (a ((epub:type "noteref") (class "sidenote-number") (href "#nd-2nd")) "2")
        " Three."
        (a ((epub:type "noteref") (class "sidenote-number") (href "#nd-3rd")) "3")
        " Four.")
      (aside
        ((epub:type "endnote") (class "sidenote") (role "note") (id "nd-4th"))
        "Margin")
      (aside
        ((epub:type "endnote") (class "sidenote") (role "note") (id "nd-1st"))
        (sup ((class "sidenote-number")) "1")
        "1st")
      (aside
        ((epub:type "endnote") (class "sidenote") (role "note") (id "nd-2nd"))
        (sup ((class "sidenote-number")) "2")
        "2nd")
      (ol
        (li
          "a"
          (a
            ((epub:type "noteref") (class "sidenote-number") (href "#nd-list-note"))
            "4"))
        (li "b"))
      (aside
        ((epub:type "endnote") (class "sidenote") (role "note") (id "nd-list-note"))
        (sup ((class "sidenote-number")) "4")
        "In list.")
      (aside
        ((epub:type "endnote") (class "sidenote") (role "note") (id "nd-3rd"))
        (sup ((class "sidenote-number")) "3")
        "3rd")))

  (check-equal? (decode-sidenotes input) expected)
  )

