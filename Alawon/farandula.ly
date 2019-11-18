% written 2018-08-15

farandula_teitl = "Ffarándwla"
farandula_tytul = "Farándula"

farandula_common =  {
  \time 6/8
  \clef treble 
  \key g \minor
  %\partial 4
}

farandula_melody = \relative e' {
  \farandula_common 

  g8 a bes a bes c 
  d4 d8 g4. 
  f8 es d c4 bes8
  a8 d a d,4.
  
  d'8 c bes a bes c 
  d4 d8 g,4 a8 
  bes4 g8 bes c bes 
  a4. d4 d,8
  
  g8 a bes a bes c 
  d4 d8 g4. 
  g8 f es d4 bes8 
  es8 d bes a4 c8 
  
  d8 c bes a bes c 
  d4 d8 g,4 a8
  bes8 a g c bes a 
  g2. 
  
  \bar "||"
  
  d'4 d8 f es d
  c4 c8 f4. 
  g8 e a, e' fis g
  fis8 d a d4. 
  
  d8 c bes a bes c 
  d4 d8 g,4 a8 
  bes4 g8 bes c bes 
  a4. d4 d,8
  
  d'4 d8 f es d
  c4 c8 f4. 
  g8 e a, e' fis g
  fis8 d a d4. 
  
  d8 c bes a bes c 
  d4 d8 g,4 a8
  bes8 a g c bes a 
  g2. 
  
  \bar "|."
  
} %relative   

farandula_chords = \chordmode {
  \farandula_common
  
  s4
  
}


farandula = \score {
  \header { 
    teitl = \farandula_teitl
    tytul = \farandula_tytul
  }
  <<
    \new ChordNames { \farandula_chords }
    \new Staff { \farandula_melody }
  >>
} %score

farandula_in_b = \score {
  \header { 
    teitl = \farandula_teitl
    tytul = \farandula_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \farandula_chords }
      \new Staff { \farandula_melody }
    >>
  }
} %score

  