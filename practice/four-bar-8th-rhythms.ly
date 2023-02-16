\version "2.24.0"

\header {
    tagline = " "
}

<<
\new ChordNames{
    \chordmode {
        c1
    }
}
\new Staff {

        \relative {
        c'8 d e f g2
    }
}
\new TabStaff {
    \relative {
        c'8 d e f g2
    }
}
>>
