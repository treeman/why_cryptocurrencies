#lang pollen
◊(local-require racket/file racket/system
         (only-in racket/port with-output-to-string))
◊(define command "sassc main.scss --style compressed")
◊(with-output-to-string (λ () (system command)))
