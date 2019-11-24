%variables

dafydd_teitl = "Dafydd Di-Doeth"
dafydd_tytul = "Marcin Małomądry"

dafydd_common =  {
  \numericTimeSignature
  \time 3/4
  \key g \major
}

dafydd_melody = \relative g' {
  \dafydd_common 
  \repeat volta 2 {
    g8 g d d g b 
    a8 a d, d a' c 
    b8 b16 c a8 d, a' d, 
    
    \time 4/4
    g8 g16 a b8 d a d, a' d,
    
    \time 3/4
    
    g8 g16 g d8 d g e 
    \time 4/4 
    fis8 d d d d2

  }
  
  \time 2/4 
  g8 g g16 a b g 
  a8 d d4
  c8 c c16 b a c 
  \time 3/4
  b8 c16 b a8 d, a' d,
  
  g8 g b16 a g e'
  d8 a a8. b16 
  c8 c16 b a8 c
  b8 d16 b a8 d, e fis 
  
  g8 g d d g b 
  c8 c e, e b' g 
  fis8 fis16 g a8 d, a' d, 
  \time 4/4
  b'8 g g g g2
  
  \bar "|."
}

dafydd_chords = \chordmode {
  
  g2. 
  d2. 
  g4 d2
  g2 d 
  c2. 
  d1
  
  g2 
  d2
  c2
  g4 d2
  g2
  d2
  a2:m 
  e4:m d2
  
  g2. 
  a2.:m
  d2.
  g1
  
}

  
dafydd = \score {
  \header { 
    teitl = \dafydd_teitl
    tytul = \dafydd_tytul
  }
  <<
    \new ChordNames { \dafydd_chords }
    \new Staff { \dafydd_melody }
  >>
} %score

dafydd_in_b = \score {
  \header { 
    teitl = \dafydd_teitl
    tytul = \dafydd_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \dafydd_chords }
      \new Staff { \dafydd_melody }
    >>
  }
} %score
