% written early 2017?

morladron_teitl = "Môr-Ladron"
morladron_tytul = "Piracka Polka"

morladron_common =  {
  \time 2/4
  \clef treble 
  \key g \major
}

morladron_melody = \relative a' {
  \morladron_common 
 
  \repeat volta 2 {
    g8. a16 b8 d c16 b a8 b g 
    c8. d16 e8 g fis16 e d8 b4
    e8. fis16 g8 e a16 g fis e  fis8 d
    c16 d e c b8 g 
  }
  \alternative {
    {
      fis16 g a d, g4
    }
    { 
      fis16 g a d, b' a g fis 
    }
  }
  
  \bar "||"
  e8 b' \tuplet 3/2 { a g fis } 
  g8 d'16 c b4\fermata
    
  \repeat volta 2 {
    
    e16 fis g e d8 b
    c16 d e g fis4
    e16 fis g e d8 b 
    c16 d e c b8. g'16
    fis8 b, e16 d b g 
  }
  \alternative {
    { 
      fis16 g a d, b' a g fis
      e8 b' \tuplet 3/2 { a g fis } 
      g8 c b4
    }
    { fis16 g a d, g8 fis-"D.C." }
  }
  \bar "|."
  
  \mark "Coda"
  g8. a16 b8 d c16 b a8 g4
  
  \bar "|."
} %relative   


morladron_chords = \chordmode {
  \morladron_common
  
  g2 c4 g 
  c2 d4 e:m
  c4 e:m
  d b:m
  c4 g 
  d g
  d b:7
  
  e4:m d/e
  c8/e c/a g/a g
  e4:m b:m
  c d
  e:m b:m 
  a:m g
  d c 
  d b:7
  
  e4:m d/e
  c/e g
  
  d g

\once \set chordChanges = ##f
  g2 c4 g
}

morladron = \score {
  \header { 
    teitl = \morladron_teitl
    tytul = \morladron_tytul
  }
  <<
    \new ChordNames { \morladron_chords }
    \new Staff { \morladron_melody }
  >>
} %score