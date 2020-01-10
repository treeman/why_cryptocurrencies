#lang racket/base

(require pollen/tag pollen/decode txexpr)
(require racket/match racket/string racket/list)
(require "string-process.rkt")

(provide ndef sn mn note-pos decode-sidenotes)

(define (ref-symbol ref-in)
  (string->symbol (format "nd-~a" ref-in)))


;; Definitions

(define note-defs (make-hash))

(define (ndef ref-in . def)
  (define ref (ref-symbol ref-in))

  (when (hash-has-key? note-defs ref)
    (error (format "duplicate ndef '~a'" ref-in)))

  ;; Because p doesn't allow block elements
  ;; and span doesn't allow p elements
  ;; use a special span .snp element to emulate paragraphs.
  ;; This is workaround is required as we want to inject a whole sidenote
  ;; inline to use the checkbox css toggling to avoid javascript.
  (define (wrap xs)
    (list* 'span '((class "snp")) xs))
  (define content
    (decode-elements def
                     #:txexpr-elements-proc (λ (x) (decode-paragraphs x wrap))
                     #:string-proc string-proc))

  (hash-set! note-defs ref content)
  "")


;; Notes

(struct note (ref sign manual-pos) #:mutable)
(define (make-note ref
                   #:sign [sign #f]
                   #:manual-pos [manual-pos #f])
  (note ref sign manual-pos))

(define notes (make-hash))

(define (get-note ref)
  (hash-ref notes ref #f))

(define (is-marginnote note)
  (eq? (note-sign note) 'marginnote))

(define sidenote-counter 0)
(define (assign-sidenote-counter)
  (define counter sidenote-counter)
  (set! sidenote-counter (+ sidenote-counter 1))
  counter)

(define (set-sidenote ref)
  (define note (get-note ref))
  (define counter (assign-sidenote-counter))
  (if note
    (begin
      (when (note (note-sign note))
        (error (format "Duplicate sidenote ref '~v'~n" ref)))
      (set-note-sign! note counter))
    (hash-set! notes ref (make-note ref #:sign counter))))

(define (note-def note)
  (define ref (note-ref note))
  (define def (hash-ref note-defs ref #f))
  (unless def (error (format "missing ref '~s'" ref)))
  def)

;; FIXME
;; Should hold a note struct, where we can add various information.
;; 1. Track which sidenote number we're at, or if it's a marginnote.
;; 2. Manually placed sidenote position.
;; 3. Sanity check that all definitions are used.
;; 4. Definition

(define (mn ref-in)
  (sn ref-in))
(define (sn ref-in)
  (define ref (ref-symbol ref-in))
  (set-sidenote ref)
  ref)

(define note-pos-refs (make-hash))
(define (note-pos ref-in)
  (define ref (ref-symbol ref-in))
  (define note (get-note ref))
  (if note
    (set-note-manual-pos! note #t)
    (hash-set! notes ref (make-note ref #:manual-pos #t)))

  (define pos-ref (string->symbol (format "~a-pos" (symbol->string ref))))
  (hash-set! note-pos-refs pos-ref ref)
  pos-ref)


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
                   (cons (car decodeed)
                         (append (cdr decodeed) acc)))
                 (cons (decode-sidenotes x) acc)))
            `()
            in)]
    [else
      in]))

(define (decode-sidenotes-p in)
  (define notes-after-p `())
  (define decoded-p
    (foldr
      (λ (x acc)
         (define note (get-note x))
         (define note-pos-ref (hash-ref note-pos-refs x #f))
         (cond
           [note
             (begin
               (when (decode-sidenote-after-p? note)
                 (set! notes-after-p (cons (after-p-sidenote note)
                                             notes-after-p)))
               (append (inplace-sidenote note)
                       acc))]
           [note-pos-ref
             (define note (get-note note-pos-ref))
             (unless note
               (error (format "Missing note for pos: '~v'~n" note-pos-ref)))
             (cons (after-p-sidenote note) acc)]
           [else
             (cons x acc)]))
      `()
      in))
  (cons decoded-p notes-after-p))

(define (decode-sidenote-after-p? note)
  ;; FIXME can just check note-pos-refs. And remove manual-pos flag from note struct.
  (not (note-manual-pos note)))

(define (inplace-sidenote note)
  (define def (note-def note))
  (define counter (format "~a" (note-sign note))) ; FIXME handle marginnotes
  (define label-class "sidenote-number")
  (define span-class "sidenote")

  `((span ((class ,label-class)) ,counter)
    (span ((class ,span-class)) ,@def)))

(define (after-p-sidenote note)
  (define def (note-def note))
  (define counter (format "~a" (note-sign note))) ; FIXME handle marginnotes
  (define span-class "sidenote-after")
  `(span ((class ,span-class)) (span ((class "number")) ,counter) ,@def))

