% written 2018-08-15

farandula_teitl = "Ffarándwla"
farandula_tytul = "Farándula"

farandula_common =  {
  \time 6/8
  \clef treble 
  \key e \minor
  %\partial 4
}

farandula_melody = \relative g' {
  \farandula_common 

  g8 a bes a bes c 
  d4 d8 g4. 
  
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

  