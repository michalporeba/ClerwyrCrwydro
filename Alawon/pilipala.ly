%2017-10-17

pilipala_teitl = "Hela'r Pili-Pala"
pilipala_tytul = "Polowanie na Motyle"
pilipala_form = ""

pilipala_common =  {
  \time 21/8
  \clef treble 
  \key g \major  
}

pilipala_melody = \relative g' {
  \pilipala_common 

  \compoundMeter #'((9 12 8))
  \set Score.baseMoment = #(ly:make-moment 1/8)
  \set Score.beatStructure = #'(3 3 3 3 3 3 3)
  
  \repeat unfold 2 {
    d8 g fis g a b a b c
    \bar "!"
    d b g c a fis g b d c b a 
  }
  \alternative {
    { 
      g d g g a b a b c  
      \bar "!"
      d b g c a fis g b a g4 d8 
    }
    { 
      g d g g a b a b c 
      \bar "!"
      d b g c a fis b g e a g fis 
    }
  }
  
  \bar "||" 
  
  e8 b' e d c b a b c 
  \bar "!"
  b e, e' d c b a d, d' c b a 
  b g d' d c b a g fis 
  \bar "!"
  g e b' a g fis g e b' a b c
  d b g d' b g e' fis g 
  \bar "!"
  d b g e' d c d b g c b a 
  b fis d' d c b a g fis 
  \bar "!"
  g b a c a fis d g fis g4.
  
  \bar "|."
  
} %relative   

pilipala_chords = \chordmode {
  \pilipala_common
  
  g2. c4. g d g d 
  g2. c4. g d g2.
  g2. c4. g d g d 
  g2. c4. g d e:m b:m
  
  c4. a:m d e:m b:m a:m d 
  g2. d4. c b:m a:m d
  g2. c4. 
  g4. c g a:m
  b:m c d 
  c a:m d g
}

pilipala = \score {
  \header { 
    teitl = \pilipala_teitl
    tytul = \pilipala_tytul
    form = \pilipala_form
  }
  <<
    \new ChordNames { \pilipala_chords }
    \new Staff { \pilipala_melody }
  >>
} %score