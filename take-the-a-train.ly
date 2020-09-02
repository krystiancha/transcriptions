\version "2.20.0"

\header {
  title = "Take the \"A\" Train"
  subtitle = "solo"
  composer = "?"
  arranger = "github.com/krystiancha/transcriptions"
  tagline = ##f
}

global = {
  \numericTimeSignature \time 4/4
  \key c \major
  \tempo 4=169
}

chordNames = \chordmode {
  \global
  \set chordChanges = ##t
  \set minorChordModifier = \markup { "-" }
  
  g1:7 |
  c1:6 | c:6 | d:7.11+ | d:7.11+ | d:m7 | g:7 | c:6 | d2:m7 g2:7 |
  c1:6 | c:6 | d:7.11+ | d:7.11+ | d:m7 | g:7 | c:6 | g2:m7 c2:7 | 
  f1:maj7 | f:maj7 | f:maj7 | f:maj7 | d:7 | d:7 | d:min7 | g2:7 g2:7.9- |
  c1:6 | c:6 | d:7.11+ | d:7.11+ | d:m7 | g:7 | c:6 | d2:m7 g2:7 |
  c1:6
}

melody = \relative a' {
  \global

  r4. a8 c4 ~ c8 a |
  
  g8 g g4 a8 c ~ c4 |
  r4. gis8 a c ~ c4 |
  e2 \glissando as, |
  r2 a4 c | \break
  
  e8 a, ~ a a ~ a4 r4 |
  f8 a c4 bes8 c ~ c8 d |
  d8 e, ~ e e ~ e4 r |
  r2 r4 g | \break
  
  c4 r c8 d ~ d e ~ |
  e4 r8 c e f ~ f fis8 ~ |
  fis2 r4 e8 c |
  b8 d ~ d4 b8 a ~ a8 r | \break
  
  a8 a a4 e'8 a, ~ a8 r |
  as8 as as dis ~ dis8 r g, r |
  g8 c ~ c e, g4 r8 e8 |
  g8 d' c g a g8 ~ g r | \break
  
  r4 d'8 d c d ~ d8 c |
  d8 d c d ~ d4 r | 
  r4 d8 d c d ~ d c8 |
  d8 d c a ~ a4 r | \break
  
  r4 d8 d c d ~ d c8 |
  d8 d c d ~ d c8 c d |
  dis8 e dis d c d8 ~ d4 |
  \improvisationOn b,4^"?" b4^"?" b4^"?" b4^"?" \improvisationOff | \break
  
  \improvisationOn e4^"?" e4^"?" e4^"?" e4^"?" \improvisationOff |
  r4. gis8 a c ~ c4 |
  e4 as,8 as ~ as4 r |
  r8 e' ~ e4 ~ e d8 e8 | \break
  
  f8 fis f4 e8 d c4 |
  c8 bes b4 e g, |
  c8 d c4 ~ c2 |
  r1 |
  r1 | \bar "|."
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
