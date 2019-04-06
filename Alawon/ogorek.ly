% 2019-04-06

ogorek_teitl = "Ciwcymbr"
ogorek_tytul = "Ogórek"

ogorek_common =  {
  \time 2/4
  \clef treble 
  \key g \minor

}
ogorek_melody = \relative g' {
  \ogorek_common 
 
  \repeat volta 2 {
    d16 g bes d c8 bes
    a8 a g4
    bes8 bes f16 a c es 
    d8 a d4 
    d,16 g bes d c8 bes 
    \time 3/4
    a8 a d4 g,
    \time 2/4 
    c8 c16 bes a8 f
    g8 bes g4
  }
  
  \repeat volta 2 {
    d16 g bes d g, bes d g
    f8 d c bes16 c 
    d16 c bes g d'8 c
    bes8 bes16 c a4
  }
  
  \bar "|." 
  
  
} %relative   


ogorek_chords = \chordmode {
  \ogorek_common
  
  g2:m 
  d4 g:m 
  bes4 f 
  d2 
  g2:m 
  d4 es2 
  f2 
  g2:m 
  
  g2:m 
  bes4 f 
  c2:m 
  es4 f 
  es4 f 
  bes4 g 
  c4:m d 
  g2:m 
  
  \once \set chordChanges = ##f
  
  
}

ogorek = \score {
  \header { 
    teitl = \ogorek_teitl
    tytul = \ogorek_tytul
  }
  <<
    \new ChordNames { \ogorek_chords }
    \new Staff { \ogorek_melody }
  >>
} %score