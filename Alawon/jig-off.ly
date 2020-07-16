% written 2020-04-23 - 06-07


jig_off_teitl = "Cer i jigio"
jig_off_tytul = "Weź się odtańcuj"

jig_off_common =  {
  \time 6/8
  \clef treble 
  \key g \major
  \partial 8
}

jig_off_melody = \relative b' {
  \jig_off_common 

  b16 c
  \repeat volta 2 {
    d8 b g e' c g 
    d'8 a fis d \breathe e fis
    g8 d' b e c g'
    fis8 g fis d\breathe b c
  }
  \alternative {
    { 
      d8 b g e' c g 
      d'8 a fis d\breathe e fis
      g8 c b a4 g8
      g4.~ g4 b16 c 
    }
    { 
      d8 b g e' c g'
      fis8 g fis d4\breathe b16 c 
      d8 c b a4 g8 
      g4.~ g8 fis g 
    }
  }
  
  \bar "||"
  \key g \minor
  
  a8 fis d c' bes a
  a4 g8~ g4 fis16 g 
  a8 fis d d' c bes
  a4 g8~ g4 fis16 g
  a8 fis d c' bes a
  a4 g8~ g4 fis16 g 
  a8 fis d c' d bes
  a4.~ a4\breathe bes16 c
  
  d8 bes g es' c bes
  a8 g fis d \breathe es fis
  g8 d' bes es c g'
  fis8 g fis d\breathe bes c 
  d8 bes g es' c bes
  a8 g fis d\breathe es fis
  g8 c bes a4 g8 
  g4.~ g4
  \bar "|."
  
} %relative   

jig_off_chords = \chordmode {
  \jig_off_common
  s8
  g4. c d2. 
  g4. c d2. 
  g4. c d2. 
  c4. d g2. 
  
  \once \set chordChanges = ##f
  g4. c a:m b:m
  c4. d g2. 
  
  d4. bes f/a c/g
  d4. bes f/a c/g
  d4. bes f/a c/g
  
  g4.:m g:m/bes d/a d/fis
  
  g4.:m c:m d2. 
  g4.:m c:m d2. 
  g4.:m c:m d2. 
  c4.:m d g4.:m g4:m
  
}


jig_off = \score {
  \header { 
    teitl = \jig_off_teitl
    tytul = \jig_off_tytul
  }
  <<
    \new ChordNames { \jig_off_chords }
    \new Staff { \jig_off_melody }
  >>
} %score
  
jig_off_in_b = \score {
  \header { 
    teitl = \jig_off_teitl
    tytul = \jig_off_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \jig_off_chords }
      \new Staff { \jig_off_melody }
    >>
  }
} %score