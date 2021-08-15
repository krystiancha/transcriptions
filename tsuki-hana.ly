\version "2.20.0"

\header {
  title = "月花"
  subtitle = "Tsuki hana"
  composer = "nano.RIPE"
  arranger = "https://sr.ht/~krystianch/transcriptions/"
  tagline = ##f
}

global = {
  \numericTimeSignature \time 4/4
  \key fis \major
  \tempo 4=86
}

chordNames = \chordmode {
  \global
}

melody = \relative cis' {
  \global
  
  \mark "Intro"
  r1 |
  \improvisationOn fis4 4 4 4 \improvisationOff |
  r2 r |
  r r |
  r r |
  r r4 r4 | \break
  
  \mark "Verse"
  r8 cis16 cis cis8 cis16
  cis16 ~ cis b ~ b ais ~
  ais16 b ~ b cis ~ |
  
  cis4 r8 cis16 cis cis8 fis
  eis8 cis | \break
  
  r8 cis16 cis ~ cis cis
  cis16 cis cis8 b ais b16
  ais16 ~ |
  
  ais16 fis ~ fis4 fis16 fis
  b8 ais fis gis | \break
  
  r8 cis16 cis cis8 cis16
  cis16 ~ cis b ~ b ais ~
  ais16 b ~ b cis ~ |
  
  cis4 r8 cis cis fis eis
  gis8 ~ | \break
  
  gis8 fis r cis fis gis
  ais8 ais ( |
  
  b8 ) ais fis ( ais16 ) gis ~
  gis4 r8 r16 cis, | \break
  
  \mark "Bridge"
  fis8 eis16 fis ~ fis cis
  cis16 cis fis8 eis16 fis
  ~ fis16 cis ~ cis cis |
  
  dis8 eis16 fis ~ fis gis
  ~ gis16 ais ( b8 ) ais16 fis
  ~ fis16 gis ~ gis gis | \break
  
  b4 cis ais8 gis fis
  eis8 |
  
  fis8 eis fis gis ais4
  gis4 | \break
  
  \mark "Chorus"
  fis16 eis fis gis ais8
  cis,16 cis ~ cis b' ~
  b16 ais ~ ais gis ~ gis
  cis,16 |
  
  eis16 dis eis fis gis8
  cis,16 cis ~ cis gis' ~
  gis16 fis ~ fis4 | \break
  
  fis16 eis fis gis ais8
  cis,16 cis ~ cis b' ~
  b16 ais ~ ais8 r16 ais |
  
  cis8 dis ais gis
  gis8 ais fis4 | \break
  
  fis16 eis fis gis ais8
  cis,16 cis ~ cis b' ~
  b16 ais ~ ais gis ~ gis
  cis,16 |
  
  eis16 dis eis fis gis8
  cis,16 cis ~ cis gis' ~
  gis16 fis ~ fis eis ~
  eis16 fis ~ | \break
  
  fis4 r8 cis ais' ais
  ais8 ais ( |
  
  b8 ) ais gis cis,
  eis8 eis eis eis ( |
  
  fis1 ) | 
  r1 |
  r1 |
  r1 |
  r1 |
  r1 | \bar "|."
  
}

words = \lyricmode {
  ichi ni san shi
  
  do -- ko ka -- ra a __ -- sa __ ni __ na __ -- ru? __ shi -- zu -- ka na so -- ra
  mi -- nai __ fu -- ri o shi -- ta yu -- bi -- ki __ -- ri __ ko -- yu -- bi no sa -- ki
  wa -- ra -- wa -- re -- ta __ tsu __ -- ki __ na __ -- ra __
  ki -- e -- te -- yu -- ku __ nda ki -- no -- u no hou __ -- ga -- ku __ e __
  
  u -- so -- tsu -- ki o -- ku -- byo -- u -- mo -- no min __ -- na ma -- to -- me __ -- te __ bo __ -- ku na __ -- ra __
  sa -- i -- te -- i -- ta no wa yu -- me no na -- ka da
  
  tsuki no ka -- ge ni ka -- ku __ -- shi __ -- te __ -- ta __ ho -- n -- to -- u wa ne na -- i __ -- te __ -- ta __
  na -- mi -- da wa mou na -- ga __ -- re __ -- nai __ ka -- re -- te -- shi -- ma -- a -- tta no?
  na -- ni -- mo -- ka -- mo yu -- ru __ -- se __ -- ta __ -- ra __ na -- ga -- re -- ru ka mo shi -- re __ -- na __ -- i __ ke __ -- do __
  ma -- mo -- ri -- ta -- i __ mo -- no ba -- ka -- ri da na __
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
