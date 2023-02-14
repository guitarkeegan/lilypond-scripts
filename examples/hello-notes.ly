\version "2.24.0"

\header {
  tagline = " "
}

\paper {
  #(set-paper-size '(cons (* 100 mm) (* 50 mm)))
}

symbols = {
  \time 3/4
  c4-.^"Allegro" d( e)
  f4-.\f g a^\fermata
  \mark \default
  c8_.\<\( c16 c~ 2\!
  c'2.\prall\)
}

\score {
  <<
    \new Staff { \clef "G_8" \symbols }
    \new TabStaff { \symbols }
  >>
}