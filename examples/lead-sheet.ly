\version "2.24.0"



melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  f4\rightHandFinger #1 e8[ c] d4\4 g
  a2 ~ a
}

harmonies = \chordmode {
  c4:m f:m7 g:maj c:aug
  d2:dim b4:5 e:sus
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