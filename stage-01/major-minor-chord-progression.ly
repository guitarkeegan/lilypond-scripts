\version "2.24.0"

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  s1 s1 s1 s1
}

harmonies = \chordmode {
  c1 g a d
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
  >>
  \layout{ }
  
}