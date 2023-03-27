% written 2020-04-23 - 06-07


plygur_hadau_teitl = "Plygu'r Hadau"
plygur_hadau_tytul = "Pokręcone Ziarna"

plygur_hadau_common =  {
  \time 6/8
  \clef treble 
  \key d \major
  \partial 8
}

plygur_hadau_melody = \relative d' {
  \plygur_hadau_common 

  e8
  \repeat volta 2 {
    d4 d8 d'4 d8 
    cis8 b a~ a4 a8  
    b4 b8 e4 d8 
    cis8 d e~ e d e 
    fis4 a,8 d4 fis8
    a8 e d d cis d   
    \break
  }
  \alternative {
    { 
      d8 b d d b d
      cis8 b a g fis e
    }
    { 
      d'8 b d b cis d 
      e4.~ e8 d e 
    }
  }
  
  \repeat volta 2 {
    fis8 g fis a fis fis 
    e8 fis e a4 a,8
    b8 cis d a'4 fis8 
    e4. a, 
    b8 a b b g b
    cis8 a cis cis a cis 
  }
  \alternative {
    {
      d8 cis d b cis d 
      e8 cis d e fis g 
    }
    {
      d8 cis d fis e d 
      e8 d cis cis b a
    }
  }

  \repeat volta 2 {
    b4 b8 fis4 fis8 
    fis'8 g fis e4 d8 
    cis4 cis8 fis,4 fis8 
    e'8 fis e d4 cis8 
    d4 d8 g,4 fis8 
    e'4 d8 cis4 b8 
    a4 b8 cis b a 
  }
  \alternative {
    {
      b4. fis 
    }
    {
      bes8 a g g f e
    }
  }

  \bar "|."
  
} %relative   

plygur_hadau_chords = \chordmode {
  \plygur_hadau_common
  s8
  
  \once \set chordChanges = ##f
  d2. 
  fis:m 
  g 
  a
  d
  a
  g
  a4. a:7
  g2.
  a4. a:7

  d2.
  a
  g
  a
  g
  fis:m 
  e:m
  a4. a:7
  g4. e:m
  a fis:m7

  b2.:m
  b:m
  fis:m 
  fis:m 
  g
  e:m  
  a 
  b:m 
  g4.:m7 a:7 
  %g4. c a:m b:m
  
}


plygur_hadau = \score {
  \header { 
    teitl = \plygur_hadau_teitl
    tytul = \plygur_hadau_tytul
  }
  <<
    \new ChordNames { \plygur_hadau_chords }
    \new Staff { \plygur_hadau_melody }
  >>
} %score
  
plygur_hadau_in_b = \score {
  \header { 
    teitl = \plygur_hadau_teitl
    tytul = \plygur_hadau_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \plygur_hadau_chords }
      \new Staff { \plygur_hadau_melody }
    >>
  }
} %score