#lang pollen

◊(define-meta template "homepage.html")
◊(define-meta title "Why cryptocurrencies? The book")

◊(define current-pagetree (load-pagetree "index.ptree"))
◊(define (node-toc pagenode)
   (define (node pagenode)
     (if (pair? pagenode)
         (car pagenode)
         pagenode))
   (define (make-link node)
     (link (symbol->string node) (select-from-metas 'title node)))
   (define (make-subnav sub)
     (if sub
         (apply ul
           (for/list ([child (in-list sub)])
             (li (make-link child))))
         ""))
   (define (children pagenode)
     (if (pair? pagenode)
         (cdr pagenode)
         #f))

   (let ((node (node pagenode))
         (sub (children pagenode)))
     (section
       (h1 (make-link node))
       (make-subnav sub))))

◊(define (toc pagetree)
  (apply nav #:class "toc"
    ; Skip pagetree-root symbol and ourselves
    (map node-toc (remove 'index.html (cdr pagetree)))))

◊(toc current-pagetree)

