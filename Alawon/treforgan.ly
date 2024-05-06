% written 2019-03-07

treforgan_teitl = "Treforgan"
treforgan_tytul = "Treforgan"

treforgan_common =  {
  \time 2/2
  \clef treble 
  \key g \major
}

treforgan_melody = \relative g' {
  \treforgan_common 

  \repeat volta 2 {
      g4. d8 g4 a
      b4 d g fis
      e4 d b g
      a2 b4 g

      a4. e8 a4 b
      c4 e d c
      b4 a c b
      a4 g b a
  } 
  \alternative {
    { s2 }
    { s2 }
  }
  
  \bar "|."
  
} %relative   

treforgan_chords = \chordmode {
  \treforgan_common
  
  g2
}

treforgan = \score {
  \header { 
    teitl = \treforgan_teitl
    tytul = \treforgan_tytul
  }
  <<
    \new ChordNames { \treforgan_chords }
    \new Staff { \treforgan_melody }
  >>
} %score

treforgan_in_b = \score {
  \header { 
    teitl = \treforgan_teitl
    tytul = \treforgan_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \treforgan_chords }
      \new Staff { \treforgan_melody }
    >>
  }
} %score
