% written 2019-12-06

jota_sirgar_teitl = "Xota Sir Gar"
jota_sirgar_tytul = "Xota Sir Gar"

jota_sirgar_common =  {
  %\compoundMeter #'(10 9 8)
  \time 3/8
  \clef treble 
  \key g \major
}

jota_sirgar_melody = \relative e' {
  \jota_sirgar_common 

  \repeat volta 2 {
     g8 g16 a d,8
     b'16 a b c d a 
     b8 b16  d a8~
     a8 fis16 g a d,
     g8 g16 a b8
     e,8 c'16 b a g
     fis16 g a c b a 
     fis16 g a d, a' d,
     
     d'8 b16 a g8~
     g8 b16 c d b 
     c8 b16 c a8~
     a8 fis16 g a c 
     b8 d16 c b a 
     g16 e c' b  a g 
  }
  \alternative {
    {
      fis16 g a d, b' d,
      c'16 b a d, a' d,
    }
    {
      fis16 g a d, b' d,
      c'16 b a d, b' fis
    }
  }
  
  \bar "||"

  \repeat volta 2 {
    g8 fis16 g e8
    b'8 a16 b g8
    g8 fis16 g e8
    b'8 a16 b g d
    
    g8 g16 a fis8
    d8 g16 a b c
    a8 a16 b fis d
    b'16 a b c d b
    
    g8 fis16 g e8
    b'8 a16 b g8~
    g8 d'16 b a g
    b16 a g fis e d
    g8 g16 a fis8
    d8 g16 a b g
  }
  \alternative {
    {
      a16 d, a' c b a 
      fis16 g a d, b' fis
    }
    {
      a16 b a g fis g 
      a16 c b a g fis
    }
  }
  
  \bar "||"
  
  e16 b' a g fis e 
  d8 fis16 g a8 
  b16 e, c' g fis e 
  d8 fis16 g a8 
  b16 c b a g a
  b16 c b a g a
  b16 c b a g a
  b16 c b a g d
  
  \bar "||"
  
  g4.~ g8
  

  \bar "|."
  
} %relative   

jota_sirgar_chords = \chordmode {
  \jota_sirgar_common
  
  g4. g g d
  g4. a:m d d
  g4. g a:m d 
  g4. a:m d d
  
  d4. d 
  
  e4.:m e:m e:m e:m 
  c4. c d d
  e4.:m e:m e:m e:m 
  c4. c d d
  
  d4. d
  
  c4. d c d
  c4. d c d
  g4. 
}


jota_sirgar = \score {
  \header { 
    teitl = \jota_sirgar_teitl
    tytul = \jota_sirgar_tytul
  }
  <<
    \new ChordNames { \jota_sirgar_chords }
    \new Staff { \jota_sirgar_melody }
  >>
} %score

jota_sirgar_in_b = \score {
  \header { 
    teitl = \jota_sirgar_teitl
    tytul = \jota_sirgar_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \jota_sirgar_chords }
      \new Staff { \jota_sirgar_melody }
    >>
  }
} %score

jota_sirgar_da = \score {
  \header { 
    teitl = \jota_sirgar_teitl
    tytul = \jota_sirgar_tytul
  }
  
  \transpose c g, { 
    <<
      \new ChordNames { \jota_sirgar_chords }
      \new Staff { \jota_sirgar_melody }
    >>
  }
} %score

jota_sirgar_da_in_c = \score {
  \header { 
    teitl = \jota_sirgar_teitl
    tytul = \jota_sirgar_tytul
    key = \markup { "C" }
  }
  
  \transpose c bes, { 
    <<
      \new ChordNames { \jota_sirgar_chords }
      \new Staff { \jota_sirgar_melody }
    >>
  }
} %score
  