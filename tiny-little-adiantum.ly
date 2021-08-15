\version "2.20.0"

\header {
  title = "タイニーリトル・アジアンタム"
  subtitle = "Tiny Little Adiantum"
  composer = "Shibayan"
  arranger = "https://sr.ht/~krystianch/transcriptions/"
  tagline = ##f
}

global = {
  \clef "treble^8"
  \numericTimeSignature \time 4/4
  \key c \major
  \tempo 4=186
}

chordNames = \chordmode {
  \global
  \set chordChanges = ##t
  \set minorChordModifier = \markup { "-" }
  
  g1:7 |
  c:maj7 | c:maj7 | b:m7 | b:7/dis | e:m7 e2.:m7 es4:m7 | d1:m7 | g:7 |
  c:maj7 | c:maj7 | b:m7 | b:7/dis | e:m7 e2.:m7 es4:m7 | d1:m7 | g:7 |
}

melody = \relative g'' {
  \global
  
  r2 r4 r8 g8 ~ |
  g8 a g4 ~ g2 ~ |
  g2 \times 2/3 {c,4 fis g} |
  a4 g8 g ~ g a ~ a c8 ~ |
  c8 b ~ b a ~ a g8 ~ g a | \break
  a4 ~ a8 b b2 ~ |
  b2 a4 g |
  a4 g8 a ~ a b ~ b8 c ~ |
  c8 b ~ b a ~ a g4. | \break
  
  e4. g8 ~ g2 |
  \times 2/3  {r2 d4} \times 2/3  {e4 g b} |
  a1 |
  d2 e | \break
  a,4. b8 ~ b2 |
  \times 2/3  {r2 b4} \times 2/3  {b4 fis' g} |
  a4 g8 a ~ a b ~ b8 c ~ |
  c8 b ~ b a ~ a g4. \bar "|."
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
