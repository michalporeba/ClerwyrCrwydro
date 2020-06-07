% written 2020-04-23 - 06-07


jig_off_teitl = "Jig off of me"
jig_off_tytul = "Weź się odtańcuj"

jig_off_common =  {
  \time 6/8
  \clef treble 
  \key g \major
  \partial 8
}

jig_off_melody = \relative b' {
  \jig_off_common 

  b16 c
  \repeat volta 2 {
    d8 b g e' c g 
    d'8 a fis d \breathe e fis
    g8 d' b e c g'
    fis8 g fis d4 b16 c
    d8 b g e' c g 
    d'8 a fis d e fis
    g8 c b a4 g8
  }
  \alternative {
    { g4.~ g4 b16 c }
    { g4.~ g4 fis16 g }
  }
  
  \bar "||"
  \key g \minor
  
  a8 fis d c' bes a
  a4 g8~ g4 fis16 g 
  a8 fis d d' c bes
  a4 g8~ g4 fis16 g
  a8 fis d c' bes a
  a4 g8~ g4 fis16 g 
  a8 fis d c' d bes
  a4.~ a4 bes16 c
  
  d8 bes g es' d c 
  bes8 a fis d \breathe es fis
  g8 d' bes es c g'
  fis8 g fis d4 bes16 c 
  d8 bes g es' d c 
  bes8 a fis d es fis
  g8 c bes a4 g8 
  g4.~ g4
  \bar "|."
  
} %relative   

jig_off_chords = \chordmode {
  \jig_off_common
  
  
}


jig_off = \score {
  \header { 
    teitl = \jig_off_teitl
    tytul = \jig_off_tytul
  }
  <<
    \new ChordNames { \jig_off_chords }
    \new Staff { \jig_off_melody }
  >>
} %score
  
jig_off_in_b = \score {
  \header { 
    teitl = \jig_off_teitl
    tytul = \jig_off_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \jig_off_chords }
      \new Staff { \jig_off_melody }
    >>
  }
} %score