\version "2.20.0"

\header {
  title = "The Neighborhood"
  subtitle = "AirConsole Soundtrack"
  composer = ""
  arranger = "github.com/krystiancha/transcriptions"
  tagline = ##f
}

global = {
  \numericTimeSignature \time 4/4
  \key c \major
  \tempo 4=77
}

chordNames = \chordmode {
  \global
  \set chordChanges = ##t
  
}

melody = \relative a' {
  \global

  r2 r4 g16 d' dis16 e ~ |
  
  e2 r8. cis16 e dis d cis16 ~ |
  cis2 r4 a16 c cis d ~ |
  d2 r8. a16 d cis c b16 ~ |
  b4 c d g,16 d' dis16 e ~ | \break
  
  e2 r8. c16 e g gis a16 ~ |
  a2 r4 a16 gis g fis ~ |
  fis2 r8. fis16 d e fis g16 ~ |
  g4 f e d | 
  \parenthesize c1 \bar "|."
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
