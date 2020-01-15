% written 2020-01-07

muineira_teitl = "Muineira"
muineira_tytul = "Muineira"

muineira_common =  {
  \time 6/8
  \clef treble 
  \key g \minor
}

muineira_melody = \relative e' {
  \muineira_common 

  \repeat volta 2 {
     g8 fis g a bes c 
     d8 c f e d c
     d8 c bes c d g,
     c8 bes a bes c a
     g8 fis g a bes c 
     d8 c f e d c
     d4 e8 \tuplet 2/3 { c8 g8 }
     c8 d bes8~ \tuplet 2/3 { bes8 a }
     bes8 g a bes c d
     e8 c f e d c
     
     g'8 f e g,8 e' c
     
     
     a d e c bes a
     g8 fis g a bes c 
     d8 c f e d c
     bes4 c a 
     g2. 
  }
  
  g'4. f8 e c

  \bar "|."
  
} %relative   

muineira_chords = \chordmode {
  \jota_sirgar_common
  
  g2.:m c g:m f
  g2.:m c g:m f
  g2.:m c bes f
  g2.:m c bes2 c4 d2.
  
  g4. g g g 
  f4. f f f
  c4. c c d
}


muineira = \score {
  \header { 
    teitl = \muineira_teitl
    tytul = \muineira_tytul
  }
  <<
    \new ChordNames { \muineira_chords }
    \new Staff { \muineira_melody }
  >>
} %score

muineira_in_b = \score {
  \header { 
    teitl = \muineira_teitl
    tytul = \muineira_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \muineira_chords }
      \new Staff { \muineira_melody }
    >>
  }
} %score
