\version "2.20.0"

\header {
  title = "Prokhorovka"
  subtitle = "World of Tanks Soundtrack"
  composer = "Andrius Klimka & Andrey Kulik"
  arranger = "https://sr.ht/~krystianch/transcriptions/"
  tagline = ##f
}

global = {
  \numericTimeSignature \time 4/4
  \key c \major
  \tempo 4=110
}

chordNames = \chordmode {
  \global
  \set chordChanges = ##t
  
}

melody = \relative a' {
  \global

  \mark "A"
  a4^"\"Kupalinka\" melody" e' e8 d c4 |
  d4 c8 b a4 a |
  f'4. e8 d e f4 |
  e2 e | \break
  
  g4. f8 e d e4 |
  d4 f e d |
  a4 e' d8 c d4 |
  a2 a | \break
  
  \mark "B"
  r4 c8 b a4 c8 d |
  e4 g a2 |
  r4 f8 e d4 c8 b |
  e4 c8 b a2 | \break
  
  r4 c8 b a4 c8 d |
  e4 g a2 |
  r4 a8 e g f e d8 |
  a'1 \bar "|."
}

words = \lyricmode {

}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}
