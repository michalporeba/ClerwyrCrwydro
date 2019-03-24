% written 2018-09-14

amser_teitl = "Amser"
amser_tytul = "Czas"

amser_common =  {
  \time 4/4
  \clef treble 
  \key a \minor
}

amser_melody = \relative g' {
  \amser_common 
  \numericTimeSignature
  
  \repeat volta 2 {
      a8 a c16 b c d e8 d c4
      d8 e d16 c a c b8 g e4
      a8 a16 b c b c d e8 g e4
  } 
  \alternative {
    { f16 e d a d e d a c8 d16 b a4 }
    { f'16 e d a d e d a c8 b c4 }
  }
  
  \bar "||"
  

  d8 b16 c d8 b c b a4 
  b8 b16 c d8 c16 b c b c d b8 e, 

  a8 e'16 b d c b a b8 g e4
  c'16 b8 c16 b8 g c16 b8 c16 d16 b g f' 

  e8 c16 d e d c8 f16 a,8 d16 b8 g
  c8 c16 d e d c g' g,4 gis
  a8 a16 b c b a e' d16 g8 b,16 a8 g 
  \acciaccatura { f16 } c'16  b8 c16 b8 g c16  b8 c16 a8 e'

  d8 b16 c d8 b c b a4 
  b8 b16 c d8 c16 b c b c d b8 e, 
  a8 e'16 b d c b a b c b g e4
  \acciaccatura { f16 } c'16  b8 c16 \tuplet 3/2 { b8 c b } a4 a'8 r
 
  
  \bar "|."
  
} %relative   

amser_chords = \chordmode {
  \amser_common
  
  a4:m d:m g c 
  d:m f g e:m
  a:m d:m g c
  d:m f g a:m
  d:m f g c
  
  e2:7 a:m 
  g c4 e:7
  a2:m e:m 
  f4 g f g 
  c2 f4 g 
  c2 g4 e:7
  f2 g 
  d4:m g d2:m 
  e2:7 a:m 
  g c4 e:7
  a2:m e:m 
  d4:m g a2:7
}

amser = \score {
  \header { 
    teitl = \amser_teitl
    tytul = \amser_tytul
  }
  <<
    \new ChordNames { \amser_chords }
    \new Staff { \amser_melody }
  >>
} %score