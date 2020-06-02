#lang racket/base

(require pollen/core pollen/tag)
(require "toc.rkt")
(require "tags.rkt")
(require "links.rkt")

(provide make-toc make-section-nav)

(define (node page)
  (if (pair? page)
      (car page)
      page))

(define (children page)
  (if (pair? page)
      (cdr page)
      #f))

(define (title node)
  (if (symbol? node)
      (select-from-metas 'title node)
      node))
(define (href node)
  (if (symbol? node)
      (symbol->string node)
      #f))

(define (make-entry node)
  (let ((href (href node))
        (title (title node)))
    (if href
        (make-link #:title title href title)
        `(span ((class "planned"))
               ,title))))

(define (make-subnav sub)
  (if sub
      `(ol
        ,@(for/list ([child (in-list sub)])
          `(li ,(make-entry child))))
      ""))

(define (page-toc page)
  `(div ((class "page-toc"))
     (span ((class "section")) ,(make-entry (node page)))
     ,(make-subnav (children page))))

;; Make a table of content, used on the homepage or dedicated toc page.
(define (make-toc content)
  `(div ((class "toc") (epub:type "toc"))
        (ol
            ,@(map (λ (x)
                      `(li ,(page-toc x)))
                   content))))

;; Locate entry in table of content.
(define (toc-entry page)
  (findf (λ (x)
            (and (pair? x)
                 (equal? (car x) page)))
    toc))

;; Make a section navigation page, used on section pages to
;; list the chapters in that section.
(define (make-section-nav #:section-header? section-header? page)
  (define chapters (children (toc-entry page)))
  (define header
    (if section-header?
        `(span ((class "chapters")) "Chapters in this section")
        ""))
  (if chapters
    `(div ((class "subnav"))
        ,header
        ,(make-subnav chapters))
    ""))

