#lang racket/base

(require pollen/tag pollen/decode txexpr)
(require racket/match racket/string racket/list)
(require "string-process.rkt")
(require "decode.rkt")

(provide ndef sn mn note-pos decode-sidenotes)

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


;; Notes

(struct note (ref sign top) #:mutable)
(define (make-note ref
                   #:sign [sign #f]
                   #:top [top #f])
  (note ref sign top))

(define notes (make-hash))

(define (get-note ref)
  (hash-ref notes ref #f))

(define (is-marginnote note)
  (eq? (note-sign note) 'marginnote))

(define sidenote-counter 0)
(define (assign-sidenote-counter)
  (set! sidenote-counter (+ sidenote-counter 1))
  sidenote-counter)

(define (set-sidenote ref)
  (set-note ref (assign-sidenote-counter)))

(define (set-marginnote ref)
  (set-note ref 'marginnote))

(define (set-note ref sign)
  (define note (get-note ref))
  (if note
    (begin
      (when (note-sign note)
        (error (format "Duplicate sidenote ref '~v'~n" ref)))
      (set-note-sign! note sign))
    (hash-set! notes ref (make-note ref #:sign sign))))

(define (note-def note)
  (define ref (note-ref note))
  (define def (hash-ref note-defs ref #f))
  (unless def (error (format "missing ref '~s'" ref)))
  def)

(define (mn ref-in #:top [top #f])
  (define ref (ref-symbol ref-in))
  (set-marginnote ref)
  (set-note-top ref top)
  ref)

(define (sn ref-in #:top [top #f])
  (define ref (ref-symbol ref-in))
  (set-sidenote ref)
  (set-note-top ref top)
  ref)

(define note-pos-refs (make-hash))

(define (note-pos ref-in #:top [top #f])
  (define ref (ref-symbol ref-in))
  (define pos-ref (ref->pos-ref ref))
  (hash-set! note-pos-refs pos-ref ref)
  (set-note-top ref top)
  pos-ref)

(define (set-note-top ref top)
  (when top
    (define note (get-note ref))
    (if note
      (set-note-top! note top)
      (hash-set! notes ref (make-note ref #:top top)))))

(define (ref->pos-ref ref)
  (string->symbol (format "~a-pos" (symbol->string ref))))


;; Decoding
(define (decode-sidenotes-old in)
  (define (paragraph? x)
    (and (txexpr? x)
         (eq? (get-tag x) 'p)))
  (cond
    [(list? in)
     (foldr (λ (x acc)
               (if (paragraph? x)
                 (let ((decodeed (decode-sidenotes-p x)))
                   (append (car decodeed)
                         (append (cdr decodeed) acc)))
                 (cons (decode-sidenotes x) acc)))
            `()
            in)]
    [else
      in]))

(define (decode-sidenotes in)
  (foldr (λ (x acc)
            (if (txexpr? x)
              (decode-and-append-txexpr x acc)
              (cons x acc)))
         `() in))

(define (decode-and-append-txexpr x acc)
  (let ((decoded (decode-txexpr x)))
    (append (car decoded)
            (append (cdr decoded) acc))))

(define (allow-sidenotes-inside? tag)
  ; Probably a better way to do this.
  (match tag
    ['p #f]
    ['ol #f]
    ['ul #f]
    ['li #f]
    [else #t]))

;; Decode a txexpr into
;; ((list decoded-txexpr) . (list notes-to-place-after))
;; Which should be combined by the caller.
(define (decode-txexpr x)
  (define tag (get-tag x))
  (define attrs (get-attrs x))
  (define elems (get-elements x))

  (define notes-after `())
  (define notes-manual-pos `())

  (define possibly-empty? #t)

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
                (set! possibly-empty? #f)
                (append (car decoded)
                        (append (cdr decoded) acc)))
              (begin
                (set! notes-after (append (cdr decoded)
                                          notes-after))
                (append (car decoded) acc)))]
           ;; Inline note expansion.
           [note
             (begin
               (unless (manual-pos? note)
                 (set! notes-after (append (aside note)
                                           notes-after)))
               (append (label note)
                       acc))]
           ;; Explicit note def expansion.
           [note-pos-ref
             (define note (get-note note-pos-ref))
             (unless note
               (error (format "Missing note for pos: '~v'~n" note-pos-ref)))
             (set! notes-manual-pos (append (aside note)
                                            notes-manual-pos))
             acc]
           [else
             (cons x acc)]))
      `()
      elems))

  ; Often when we're expanding note defs from manual positions,
  ; we'll get an aside inside a paragraph. In this case we need to remove the
  ; asides, and place them in a list, and possibly remove the paragraph completely as well.
  (define non-empty-txexpr
    (if (and
          possibly-empty?
          (empty-elements? decoded-elems))
      `()
      (list (txexpr tag attrs decoded-elems))))

  ;; FIXME
  ;; Need to sort the note definitions we're inserting.

  ;(define decoded-list
    ;(append non-empty-txexpr
            ;(sort notes-manual-pos (λ (a b)
                                      ;a b))))



  (cons decoded-list notes-after))

(module+ test
  (require rackunit)

  (check-equal? (decode-sidenotes `((p "One") (p "Two")))
                `((p "One") (p "Two")))
  )

(define (empty-elements? es)
  (or (null? es)
      (andmap (λ (x)
                 (or (eq? x "")
                     (eq? x 'br)
                     (null? x)
                     (equal? x '(br))))
              es)))

(define (empty-p? p)
  (define es (get-elements p))
  (or (null? es)
      (andmap (λ (x)
                 (or (eq? x "")
                     (eq? x 'br)
                     (null? x)
                     (equal? x '(br))))
              es)))

(module+ test
  (require rackunit)

  (check-equal? (empty-p? `(p))
                #t)
  (check-equal? (empty-p? `(p ""))
                #t)
  (check-equal? (empty-p? `(p "" br ""))
                #t)
  (check-equal? (empty-p? `(p "" (br) ""))
                #t)
  (check-equal? (empty-p? `(p "" (div) ""))
                #f)
  )


(define (decode-sidenotes-p in)
  (define notes-after-p `())
  (define notes-manual-pos `())
  (define decoded-p
    (foldr
      (λ (x acc)
         (define note (get-note x))
         (define note-pos-ref (hash-ref note-pos-refs x #f))
         (cond
           ;; Inline note expansion.
           [note
             (begin
               (unless (manual-pos? note)
                 (set! notes-after-p (append (aside note)
                                             notes-after-p)))
               (append (label note)
                       acc))]
           ;; Explicit note def expansion.
           [note-pos-ref
             (define note (get-note note-pos-ref))
             (unless note
               (error (format "Missing note for pos: '~v'~n" note-pos-ref)))
             (set! notes-manual-pos (append (aside note)
                                            notes-manual-pos))
             acc]
           [else
             (cons x acc)]))
      `()
      in))

  ; Often when we're expanding note defs from manual positions,
  ; we'll get an aside inside a paragraph. In this case we need to remove the
  ; asides, and place them in a list, and possibly remove the paragraph completely as well.
  (define non-empty-p-list
    (if (empty-p? decoded-p)
      `()
      (list decoded-p)))

  (define decoded-list (append non-empty-p-list
                               notes-manual-pos))

  (cons decoded-list notes-after-p))

(define (manual-pos? note)
  (define ref (note-ref note))
  (define pos-ref (ref->pos-ref (note-ref note)))
  (hash-has-key? note-pos-refs pos-ref))

(define (label note)
  (define sign (note-sign note))
  (define label
    (if (eq? sign 'marginnote)
      ""
      (format "~a" sign)))
  `((span ((class "sidenote-label")) ,label)))

(define (aside note)
  (define def (note-def note))
  (define top (note-top note))
  (when (and top (not (number? top)))
    (error (format "Not a number: '~a' for sidenote '~a'~n" top (note-ref note))))

  (define attrs `((class "sidenote")))
  (when top
    (set! attrs (append attrs
                        `((style ,(format "top:~aem" top))))))

  (define sign (note-sign note))
  (define label
    (if (eq? sign 'marginnote)
      ""
      `(span ((class "sidenote-number")) ,(format "~a" sign))))

  (define content
    `((aside ,attrs
             ,label
             ,@def)))
  (std-decode content))


