% written 2020-01-06

jota_two_teitl = "Xota 2"
jota_two_tytul = "Xota 2"

jota_two_common =  {
  \time 3/8
  \clef treble 
  \key g \major
}

jota_two_melody = \relative e' {
  \jota_two_common 

  \repeat volta 2 {
     g8 g16 a b g 
     d'16 c b c a8
     g8 g16 a b g 
     d'16 c b c a b 
     
     g8 g16 a b g 
     d'16 c b c a8
     g8 g16 a b g 
     d'16 c b c a b 
     
     
     c8 c16 d c b 
     a8. b16 c e
     c16 d c b a8~
     a16 b c d c f
     
     e16 d e c g8~
     g16 b c d c d
     e16 d e c g8~
  }
  \alternative {
     { g8 a fis }
     { g8 a c }
  }
  
  \repeat volta 2 {
    d8 d16 e d c 
    b8 b16 c b a 
    g8 g a 
    b b c
    d8 d16 e d c~
    c16 d c b a g
    c8 b a
    c16 b a8 b16 g
    a16 b c d c b 
    b8 a4
    a16 b c d e c 
    d 16 b a8 g16 g'
    
    e16 g e d c g 
    c d e g e d 
    c g c d e g 
  }
  \alternative 
  {
    { fis e d c b c }
    { fis e d c b a }
  }
  
  \bar "|."
  
  fis16 g c d e g
  fis,16 g a b c d 
  a b c d e fis
  
  
  g16 d b8 \tuplet 3/2 { a16 b a } 
  g4. ~
  g8

  \bar "|."
  
} %relative   

jota_two_chords = \chordmode {
  \jota_sirgar_common
  
  g4. g g g 
  g4. g g g 
  f4. f f f
  c4. c c d d
  
  g4. g g g 
  g4. g g g 
  f4. f f f
  c4. c c d d
  
  c4. d d 
  g4. g
}


jota_two = \score {
  \header { 
    teitl = \jota_two_teitl
    tytul = \jota_two_tytul
  }
  <<
    \new ChordNames { \jota_two_chords }
    \new Staff { \jota_two_melody }
  >>
} %score

jota_two_in_b = \score {
  \header { 
    teitl = \jota_two_teitl
    tytul = \jota_two_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \jota_two_chords }
      \new Staff { \jota_two_melody }
    >>
  }
} %score
