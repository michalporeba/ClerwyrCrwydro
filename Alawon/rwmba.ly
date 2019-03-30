% written early 2017?

rwmba_teitl = "Rwmba"
rwmba_tytul = "Rumba"

rwmba_common =  {
  \time 2/4
  \clef treble 
  \key g \major
  \partial 8.
}

rwmba_melody = \relative g' {
  \rwmba_common 
 
  d16 g a 
  \repeat volta 2 {
    b8. a16 g8 d'16 c 
    b16 c b a g \breathe d a' b
    c8. b16 b a a g 
    a8 c16 b~ b a g a 
    
    b8. a16 g8 d'16 c 
    b16 c b a g8 e'16 d 
    c16 b b a a g g fis 
  }
  \alternative {
    {
      g4 ~ g16 \breathe d16 g a
    }
    { 
      g4 ~ g16 \breathe g16 a b
    }
  }
  
  \bar "||"
  
  \repeat volta 2 {
    c8. a16 fis'16 e8 d16 
    b8 d ~ d16 g, a b 
    c8 c16 b \tuplet 3/2 { a8 b c } 
    cis8. d16 ~ d \breathe g, b d 
    e8. c16 g'16 fis8 e16 
    d8 c b d 
  }
  \alternative {
    { 
      e16 g g e fis a a fis 
      d4 ~ d16 \breathe g,16 a b 
    }
    {
      e16 g g e fis a a b 
      g4 ~ g16 \breathe g16 g fis  
    }
  }
  
  \bar "||"
  
  \repeat volta 3 {
    g8 b,16 g'~ g g, a b 
    d8 e16 d~ d4
    e16 g g e d c b a 
    d4 ~ d16 \breathe gis, a b 
    c16 e g e fis a a d, 
    
  }
  \alternative {
    { 
      b'16 g fis e b' c b g 
      e8. g16 ~ g fis d a
      b4~ b16 \breathe g'16 g fis 
    }
    { 
      b16 g fis e d c b c 
      a16 b c d b a g fis
      g4 ~g16 \breathe d16 g a 
    }
    {
      \set Score.repeatCommands = #`((volta #f) (volta ,#{ \markup \text {"2 (tro olaf | ostatni raz)"} #}) end-repeat)
      b'16 g fis e d c b c 
      a16 b c d d e fis a 
      g8. g,16 g'
    }
  }
  
  
  
  \bar "|." 
  
  
} %relative   


rwmba_chords = \chordmode {
  \rwmba_common
  
  s8. 
  g2
  g
  c
  f4 d 
  g2 
  e:m 
  c4 d 
  g2
  \once \set chordChanges = ##f
  g
  
  a4:m d 
  g2 
  a4:m d 
  g2 
  a4:m d 
  g4 e
  a4:m d 
  g2 
  a4:m d 
  g2 
  
  e2:m 
  b2:m 
  a4:m d 
  g4 e:7
  a4:m d 
  g4 c
  a4:m d 
  g2
  
  \once \set chordChanges = ##f
  g4 c 
  a4:m d 
  g2
  
  \once \set chordChanges = ##f
  g4 c 
  a4:m d 
  g4 g16
  
}

rwmba = \score {
  \header { 
    teitl = \rwmba_teitl
    tytul = \rwmba_tytul
  }
  <<
    \new ChordNames { \rwmba_chords }
    \new Staff { \rwmba_melody }
  >>
} %score