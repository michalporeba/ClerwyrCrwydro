% written on Clifton Hill probably in 2011. Finished 2018-09-01

antur_newydd_teitl = "Antur Newydd"
antur_newydd_tytul = "Nowa Przygoda"

antur_newydd_common =  {
  \time 6/8
  \clef treble 
  \key g \major
  \partial 4
}

antur_newydd_melody = \relative d' {
  \antur_newydd_common 

  d8 d
  \repeat volta 2 {
    d'4 b8 c4 a8 
    g8 a b d,4.
    e8 fis g a b c 
    d8 b g a \breathe d, d
    d'4 b8 c4 a8 
    g8 a b fis4.
    e8 fis g a d, c'
    b4 c16 b a8 \breathe d, d
    
    \bar "||"
    
    %\compoundMeter #'((5 6 8))
    \time 11/8
    \set Score.baseMoment = #(ly:make-moment 1/8)
    \set Score.beatStructure = #'(3 2 3 3)
  
    d'4 b8 c e 
    \bar "!"
    d4 b8 c8 a4
    d4 b8 c e 
    \bar "!" 
    d8 b g d \breathe e d 
    e8 fis g a d, 
    \bar "!"
    b'4. a
  }
  \alternative {
    {
      g8 a b a fis 
      \bar "!"
      e fis g d \breathe d d
    } 
    {
      g8 a b a d, 
      \bar "!"
      g4.~ g8-"Fine" r8 g16 a 
    }
  }
  
  \time 6/8
  
  \repeat volta 2 {
    b8 d b a d, d' 
    c4 d16 c b8 \breathe g a
    b8 d b a d, a'
    c4 b8 a16 \breathe d, e fis g a 
    b8 d b a d, d' 
    e8. fis16 e d b8 \breathe a g
    a8. b16 a e a8. b16 a fis 
  }
  \alternative { 
    {
      g8. a16 g e fis \breathe d e fis g a
    }
    {
      g8. a16 b d, g8 \breathe d d-"D.C."
    }
  }
  
  \bar "|."
  
} %relative   

antur_newydd_chords = \chordmode {
  \antur_newydd_common
  
  s4
  g4. d e:m d 
  c4. d g d 
  g d e:m b:m 
  c4. d g d
  
  g4. c4 g4. d 
  g4. a4:m b4.:m d
  c4.  d4 g4. d 
  c4. d4 c4. d
  c4. d4 g2.
  
  \once \set chordChanges = ##f
  g4. d c g 
  e4.:m b:m a:m d
  g4. d c g 
  a4.:m b:m c d 
  c4 d8 g
}


antur_newydd = \score {
  \header { 
    teitl = \antur_newydd_teitl
    tytul = \antur_newydd_tytul
  }
  <<
    \new ChordNames { \antur_newydd_chords }
    \new Staff { \antur_newydd_melody }
  >>
} %score
  
antur_newydd_in_b = \score {
  \header { 
    teitl = \antur_newydd_teitl
    tytul = \antur_newydd_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \antur_newydd_chords }
      \new Staff { \antur_newydd_melody }
    >>
  }
} %score