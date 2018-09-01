% written 2018-08-15

clerwyr_crwydro_teitl = "Clerwyr Crwydro"
clerwyr_crwydro_tytul = "Zbłąkani Muzykanci"

clerwyr_crwydro_common =  {
  \time 6/8
  \clef treble 
  \key e \minor
  \partial 4
}

clerwyr_crwydro_melody = \relative e' {
  \clerwyr_crwydro_common 

  \repeat volta 2 {
    e8 fis 
    g4 b8 a d4 
    b4.~ b8 e, fis 
    g4 b8 a4 fis8 
    e4.~ e8 \breathe e fis
    g4 b8 a4 d8 
    e8 cis4~ cis8 b a
    b8 d4 cis8 a fis 
    e4.~ e8 \breathe e fis 
    g4 g8 fis d4 
    e4.~ e8 \breathe 
    
    e fis 
    g4 b8 a d4 
    b4.~ b8 e, fis 
    g4 b8 a4 fis8 
    e4.~ e8 \breathe e fis
    g4 b8 cis a d 
    e8 fis e cis b a 
    d8 cis a g fis a 
    e4. b'8 e, fis 
    g b g a fis d 
    e4.-"Fine"~ e8
  }
  
  {
    g8 a 
    b4 d8 cis a4
    b4.~ b8 g a 
    b4 d8 e4 cis8
    e4 d b8 a
    b4 d8 cis4 e8
    d8 cis4~ cis8 b a 
    b8 d4 cis8 a fis 
    e4.~ e8 \breathe e fis 
    g b g fis a fis 
    e4.~ e8 \breathe 
    
    g8 a 
    b4 d8 cis a4
    b4.~ b8 g a 
    b4 d8 e4 cis8
    e8 g fis d b a 
    b8 e, d' cis fis, e'
    fis8 d b e cis a 
    d b g cis a fis 
    e4 d e8 fis 
    g a g b a fis  
    e4.~-"D.C. al Fine" e8 s4
  }
  
  \bar "|."
  
} %relative   

clerwyr_crwydro_chords = \chordmode {
  \clerwyr_crwydro_common
  
  s4
  e4.:m d g c
  a:m b:m e:m s
  e:m d a s
  g a c s
  a:m d e:m s
  
  e4.:m d g c
  a:m b:m e:m s
  e:m d a s
  g a c s
  a:m d e:m s
  
  e:m d e:m s
  g a c d 
  e:m fis:m g a 
  g a c s
  a:m d e:m s
  
  e:m d e:m s
  g a c d 
  e:m fis:m g a 
  g a c s
  a:m d e:m s
}


clerwyr_crwydro = \score {
  \header { 
    teitl = \clerwyr_crwydro_teitl
    tytul = \clerwyr_crwydro_tytul
    opus = \clerwyr_crwydro_composer
  }
  <<
    \new ChordNames { \clerwyr_crwydro_chords }
    \new Staff { \clerwyr_crwydro_melody }
  >>
} %score
  