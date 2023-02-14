\version "2.24.0"
\layout {
  clip-regions
  = #(list
      (cons
       (make-rhythmic-location 1 1 4)
       (make-rhythmic-location 2 2 4)))
}

\relative {
    c' e g e
    c e g b
    c1
}