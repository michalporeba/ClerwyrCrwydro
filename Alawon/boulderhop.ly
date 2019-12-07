% written 2019-11-19
% a boulder hop is a dance discovered during a weekend 
% music retreat Ysgolan with Ceri Rhys Mathews and Julie Murphy
% the idea to write one has to be attributed to Imogen Gunner
% and the extra challange to make it reflect both wading and hopping
% to Jason Lowday

boulderhop_teitl = "Clogfaenydd"
boulderhop_tytul = "Głazowiec"

boulderhop_common =  {
  %\compoundMeter #'(10 9 8)
  \time 19/8
  \clef treble 
  \key g \major
  \set Score.beatStructure = #'(3 3 2 2 3 3 3)
  %\partial 4
}

boulderhop_melody = \relative e' {
  \boulderhop_common 

  \repeat volta 2 {
    g8 g d a' a d, b' g c4
    b8 b g a a c b g d
    g8 g e a a d, b' g d'4
    b8 b c a a g fis g a 
    
    g8 g d a' a d, b' g c4
    b8 b g a a c b g d8
    g8 g e a a d, b' g d' e
    d8 c b a a c b16 c b a g8
  }
  
  b8 b a c c a b g d4
  b'8 b a c c a b d4
  \bar "|."
  
} %relative   

boulderhop_chords = \chordmode {
  \boulderhop_common
  
  s4
  
}


boulderhop = \score {
  \header { 
    teitl = \boulderhop_teitl
    tytul = \boulderhop_tytul
  }
  <<
    \new ChordNames { \boulderhop_chords }
    \new Staff { \boulderhop_melody }
  >>
} %score

boulderhop_in_b = \score {
  \header { 
    teitl = \boulderhop_teitl
    tytul = \boulderhop_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \boulderhop_chords }
      \new Staff { \boulderhop_melody }
    >>
  }
} %score

  