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
  (define note (get-note ref))
  (define counter (assign-sidenote-counter))
  (if note
    (begin
      (when (note-sign note)
        (error (format "Duplicate sidenote ref '~v'~n" ref)))
      (set-note-sign! note counter))
    (hash-set! notes ref (make-note ref #:sign counter))))

(define (note-def note)
  (define ref (note-ref note))
  (define def (hash-ref note-defs ref #f))
  (unless def (error (format "missing ref '~s'" ref)))
  def)

(define (mn ref-in)
  "")
  ;(sn ref-in))
(define (sn ref-in)
  (define ref (ref-symbol ref-in))
  (set-sidenote ref)
  ref)

(define note-pos-refs (make-hash))

(define (note-pos ref-in #:top [top #f])
  (define ref (ref-symbol ref-in))
  (define pos-ref (ref->pos-ref ref))
  (hash-set! note-pos-refs pos-ref ref)
  (when top
    (define note (get-note ref))
    (if note
      (set-note-top! note top)
      (hash-set! notes ref (make-note ref #:top top))))
  pos-ref)

(define (ref->pos-ref ref)
  (string->symbol (format "~a-pos" (symbol->string ref))))


;; Decoding
(define (decode-sidenotes in)
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

(define (empty-p? p)
  (define es (get-elements p))
  (or (null? es)
      (andmap (λ (x)
                 (or (eq? x "")
                     (eq? x 'br)
                     (null? x)
                     (equal? x '(br))))
              es)))

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
             ;(append (aside note) acc)]
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
  (define counter (format "~a" (note-sign note))) ; FIXME handle marginnotes
  `((span ((class "sidenote-label")) ,counter)))

(define (aside note)
  (define def (note-def note))
  (define counter (format "~a" (note-sign note))) ; FIXME handle marginnotes
  (define top (note-top note))
  (when (and top (not (number? top)))
    (error (format "Not a number: '~a' for sidenote '~a'~n" top (note-ref note))))

  (define attrs `((class "sidenote")))
  (when top
    (set! attrs (append attrs
                        `((style ,(format "top:~aem" top))))))

  (define content
    `((aside ,attrs
             (span ((class "sidenote-number")) ,counter)
             ,@def)))
  (std-decode content))


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

