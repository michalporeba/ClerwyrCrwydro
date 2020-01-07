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
     e16 d e c g8
     fis'16 e d c b a
     
  }

  \bar "|."
  
} %relative   

jota_two_chords = \chordmode {
  \jota_sirgar_common
  
  g4. g g g 
  g4. g g g 
  f4. f f f
  c4. c c d
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
