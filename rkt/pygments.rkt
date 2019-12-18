#lang rackjure/base

(require racket/function
         racket/match
         racket/port
         racket/runtime-path
         racket/system
         racket/string
         racket/format
         rackjure/threading
         xml
         (only-in html read-html-as-xml))
         ;"../private/log.rkt"
         ;"../private/splice.rkt")

(provide pygmentize)

#|
Duplicated from pollen, with some additions/simplifications made
|#

(define (read-html-as-xexprs) ;; (-> (listof xexpr?))
  (~>> (read-html-as-xml)
       (element #f #f 'root '())
       xml->xexpr
       decode-ampersands-in-attributes
       cddr))

(define (decode-ampersands-in-attributes x)
  (match x
    [`(,tag ([,ks ,vs] ...) . ,els)
     `(,tag
       ,(for/list ([k ks]
                   [v vs])
          (list k (regexp-replace* "&amp;" v "\\&")))
       ,@(map decode-ampersands-in-attributes els))]
    [v v]))

;; Process that runs Python with external script

(define-values (pyg-in pyg-out pyg-pid pyg-err pyg-proc)
  (values #f #f #f #f #f))
(define-runtime-path pipe.py "../external/pygments-pipe.py")

(define start
  (let ([start-attempted? #f])
    (λ (python-executable line-numbers? css-class)
      (unless start-attempted?
        (set! start-attempted? #t)
        (define pre " Using plain `pre` blocks.")
        (match (find-executable-path python-executable)
          [(? path? python)
           (print (~a "launching pygments-pipe.py to use Pygments"))
           (match (process (~a python
                               " -u " pipe.py
                               (if line-numbers? " --linenos" "")
                               " --cssclass " css-class))
             [(list in out pid err proc)
              (set!-values (pyg-in pyg-out pyg-pid pyg-err pyg-proc)
                           (values in out pid err proc))
              (file-stream-buffer-mode out 'line)
              (match (read-line pyg-in 'any)  ;; consume "ready" line or EOF
                [(? eof-object?) (print (~a "Pygments pygments-pipe.py not responding" pre))]
                [_ (void)])]
             [_ (print (~a "`" python " " pipe.py "` failed." pre))])]
          [#f
           (print (~a "Pygments executable `" python-executable "` not found" pre))])))))

(define (running?)
  (and pyg-proc
       (eq? (pyg-proc 'status) 'running)))

(define (stop) ;; -> void
  (when (running?)
    (displayln "__EXIT__" pyg-out)
    (begin0 (or (pyg-proc 'exit-code) (pyg-proc 'kill))
      (close-input-port pyg-in)
      (close-output-port pyg-out)
      (close-input-port pyg-err)))
  (void))

(exit-handler
 (let ([old-exit-handler (exit-handler)])
   (lambda (v)
     (stop)
     (old-exit-handler v))))

(define (pygmentize code lang
                    #:python-executable python-executable
                    #:line-numbers? line-numbers?
                    #:css-class css-class
                    #:hl-lines hl-lines)
  (define (default code)
    `((pre () (code () ,code))))
  (unless (running?)
    (start python-executable line-numbers? css-class))
  (cond [(running?)
         ;; order of writing arguments is significant: cooperates with pygments-pipe.py
         (displayln lang pyg-out)
         (displayln (string-join (map number->string hl-lines) " ") pyg-out)
         (displayln code pyg-out)
         (displayln "__END__" pyg-out)
         (let loop ([s ""])
           (match (read-line pyg-in 'any)
             ["__END__" (with-input-from-string s read-html-as-xexprs)]
             [(? string? v) (loop (~a s v "\n"))]
             [_ (copy-port pyg-err (current-output-port)) ;echo error msg
                (default code)]))]
        [else (default code)]))

