% written 2017-11-14

cysgodion_teitl = "Cysgodion"
cysgodion_tytul = "Cienie"

cysgodion_common =  {
  \time 5/4
  \clef treble 
  \key g \major
}

cysgodion_melody = \relative g' {
  \cysgodion_common 

  \repeat volta 2 {
    b8. e16 d4 a b fis 
    b8. e16 d4 a b2
    b8. e16 d4 a b8 a g4 
    fis8. g16 a4 fis g8 a b d 
    
    \tuplet 3/2 { e8 b e } d4 a b d
    b8. e16 d4 \tuplet 3/2 { a8 b c } b4. a8
    g8 b g4 e a8 g e4
  } 
  \alternative { 
    { fis8. g16 a4 fis g g-"Fine" }
    { fis8. g16 a4 fis g8 fis e4 }
  }
  \bar "||"
  \key a \minor 
  
  
    a8. b16 c4. e8 d c b4 
    g8. a16 b4 d e8 d c b 
    c8. b16 a4 d c8 b g d' 
    e8. c16 a4 c8 d e d c b 
  \repeat volta 2 {
    a8. b16 c4 e g8 e d c 
    b8. a16 g4 d' \tuplet 3/2 { e8 g e } \tuplet 3/2 { d c a }
    f?8 a c4 d c8 b g4 
  }
  \alternative {
    { b8 g b4 c b a }
    { b8 g b4 d8 c b4 a }
  }
  \bar "|."
  
} %relative   

cysgodion_chords = \chordmode {
  \cysgodion_common
  
  g2. d2
  e2.:m b2:m 
  c2. a2:m 
  d2. c4 d 
  g2. d2
  e2.:m b2:m 
  c2. a2:m 
  d2. g2 
  d2. e2:m
  
  a2.:m d2:m 
  g2. c2 
  f2. g2 
  f2. e2:m 
  a2.:m d2:m 
  g2. c2 
  f2. g2
  e2.:m f2
  e2.:m d2
}

cysgodion = \score {
  \header { 
    teitl = \cysgodion_teitl
    tytul = \cysgodion_tytul
  }
  <<
    \new ChordNames { \cysgodion_chords }
    \new Staff { \cysgodion_melody }
  >>
} %score

cysgodion_in_b = \score {
  \header { 
    teitl = \cysgodion_teitl
    tytul = \cysgodion_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \cysgodion_chords }
      \new Staff { \cysgodion_melody }
    >>
  }
} %score