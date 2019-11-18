% written 2018-08-15

farandula_teitl = "Ffarándwla"
farandula_tytul = "Farándula"

farandula_common =  {
  \time 6/8
  \clef treble 
  \key e \minor
  \partial 4
}

farandula_melody = \relative e' {
  \farandula_common 

  s4
  
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
  