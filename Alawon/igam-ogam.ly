% written 2017-11-17

igam_ogam_teitl = "Igam Ogam"
igam_ogam_tytul = "Trochę tu, trochę tam"

igam_ogam_common =  {
  \time 4/4
  \clef treble 
  \key g \major
}

igam_ogam_melody = \relative g' {
  \igam_ogam_common 
  \numericTimeSignature
  
  g16 d g a b g b d c b a c b8 g 
  g16 d g a b g b d c b a c b8 a16 g
  a16 b c8 b16 a g8 a16 b a g fis8 d
  
  \repeat volta 2 {
      g16 d g a b g b d c b a c b8 g 
      g16 d g a b g b d c b a c b8 c16 d
      a16 b c8 b16 c d8 a16 b c b a g fis d
      
      g16 d g a b g b d e c e g fis e d8
      b16 a b c b a g e a g a c b8 g
      a16 b c a fis g a d, g a b d a8 d,
  } 
  
  
  g16 d g a b g b d c d e c d8 b
  c16 d e c b g b d c d e c d8 fis 
  fis16 e d b a b g e a8 d, g g16 a
  
  \bar "||"
  
  b16 e, e d' b a g a b e, e d' b8 a
  e'16 g, g e' d b a g a d, d d' b a g a 
  b16 d b a b e, g a b d d b a8 g
  
  e'16 b b a g e fis g a b c a b c d g,
  c16 b a e e' c b a d b a g d' b a b 
  e16 c b a d8 b c16 b a g e fis g a
  
  \bar "|."
  
} %relative   

igam_ogam_chords = \chordmode {
  \igam_ogam_common
  
  g2 c4 g
  g2 c4 g
  d4 e:m c d 
  
  g2 c4 g
  g2 c4 g
  d4 e:m c d 
  
  g2 c4 d 
  b4:m e:m c g 
  a:m b:m e:m d
  
  g2 c4 g 
  c4 g c d 
  b4:m c d g 
}

igam_ogam = \score {
  \header { 
    teitl = \igam_ogam_teitl
    tytul = \igam_ogam_tytul
  }
  <<
    \new ChordNames { \igam_ogam_chords }
    \new Staff { \igam_ogam_melody }
  >>
} %score