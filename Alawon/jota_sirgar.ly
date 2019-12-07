% written 2019-12-06

jota_sirgar_teitl = "Jota Sir Gar"
jota_sirgar_tytul = "Jota Sir Gar"

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
     b8 b16 c a8~
     a8 fis16 g a d,
     g8 g16 a b8
     e,8 c'16 b a g
     fis16 g a c b a 
     fis16 g a d, a' d,
     
     b'8 g16 a b8
     d,8 b'16 c d b
     c8 b16 c a8 
     d,8 fis16 g a c 
     b8 d b16 a 
     g16 e c' b a g 
     fis16 g a d, a' d,
     c'16 b a d, a' d,
  }
  
  
} %relative   

jota_sirgar_chords = \chordmode {
  \jota_sirgar_common
  
  g4. g g d
  g4. a:m d d
  g4. g a d 
  g4. a:m d d
  
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

  