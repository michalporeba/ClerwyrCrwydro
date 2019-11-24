% written 2018-08-24

disgfyd_teitl = "Y Disgfyd"
disgfyd_tytul = "Świat Dysku"

disgfyd_common =  {
  \time 9/8
  \clef treble 
  \key d \major
}

disgfyd_melody = \relative a'' {
  \disgfyd_common 

  \repeat volta 2 {
    a4 fis8 g fis e fis4 d8
    a'4 fis8 g fis e d4.
    a'4 fis8 g fis e fis4 d8
    a'4 fis8 g fis e fis e d
    
    e4 a,8 b cis d cis4 a8
    a'8 g fis e d cis b cis d 
    e4 a,8 b cis d cis4 a8
    a'8 g fis e d cis d4. 
    
    
    a'4 fis8 g a b a4 fis8
    a4 fis8 g a b a4.
    a4 fis8 g a b a4 fis8
    g4 e8 e fis g fis4.
    
    g4 e8 a,4 g'8 fis e d
    e4 cis8 a4 g'8 fis4.
    \time 6/8
    g4 e8 a,4 g'8 fis4 d8 
    a4 fis'8 e fis e e fis e
  } 
  \alternative { 
    { b cis d e fis g }
    { e d cis d4.-"Fine." }
  }
  
  \bar "||"
  
  {
    \time 9/8
    fis4 b,8 e d cis d4 b8
    fis'4 b,8 cis d e fis4. 
    a4 fis8 g fis e fis e b
    
    \time 6/8
    a8 b cis d4 cis8 
    b4. a
  }
  
  \bar "|."
  
} %relative   

disgfyd_chords = \chordmode {
  \disgfyd_common
  
  d4. a d 
  d g d
  d a b:m
  fis:m g d
  
  a g a
  g a g
  a g a
  c a d
  
  d g d 
  d g d
  d g d 
  e:m a d
  
  g a d
  g a d
  g a 
  b:m fis:m
  e:m a g a
  g4 a8 d4.
  
  b4.:m a g 
  e:m a d
  b4.:m a g 
  
  e4.:m a 
  g a
  
  
}

disgfyd = \score {
  \header { 
    teitl = \disgfyd_teitl
    tytul = \disgfyd_tytul
  }
  <<
    \new ChordNames { \disgfyd_chords }
    \new Staff { \disgfyd_melody }
  >>
} %score

disgfyd_in_b = \score {
  \header { 
    teitl = \disgfyd_teitl
    tytul = \disgfyd_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \disgfyd_chords }
      \new Staff { \disgfyd_melody }
    >>
  }
} %score