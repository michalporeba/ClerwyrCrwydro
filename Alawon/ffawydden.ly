% written 2018-09-02

ffawydden_teitl = "Ffawydden"
ffawydden_tytul = "Buczyna"

ffawydden_common =  {
  \time 4/4
  \clef treble 
  \key g \minor
  \partial 4
}

ffawydden_melody = \relative bes' {
  \ffawydden_common 

  bes8 a 
  g8 d d16 c d8 ~ d4 d16 es f d 
  c8 c16 bes c4 ~ c8 c' bes a
  a8 c,16 bes c4 ~ c8 c16 bes c d es f 
  es8 d d c d4 bes'8 a
  
  bes8 g d16 c d8 ~ d4 d16 es f g 
  c,8 c'16 bes a8 g ~ g8 c bes a 
  a8 a16 g f8 c4 c16 bes c d es f 
  fis8 fis16 e fis4 ~ fis8 d16 e fis g a c
  
  d8 bes g d' c4 ~ c8 bes16 a 
  bes16 a g8 ~ g4 ~ g2
  d'8 bes g f' c4 ~c8 d16 c 
  b4 g d g8 b
  d8 bes4 d8 c4 ~ c8 f16 es 
  d8 a4 c8 bes4 a8 g 
  bes2 a4. bes8 a2 g4
  
  
  
  \bar "|."
  
} %relative   

ffawydden_chords = \chordmode {
  \ffawydden_common
  
  s4
  g1:m es:6
  f bes2 d
  g1:m es:6
  f d
  
  es2 f g1:m
  es2 f g1
  c2:m f d g:m 
  es f g:sus2 g
  
}

ffawydden = \score {
  \header { 
    teitl = \ffawydden_teitl
    tytul = \ffawydden_tytul
  }
  <<
    \new ChordNames { \ffawydden_chords }
    \new Staff { \ffawydden_melody }
  >>
} %score