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
  b4 g8 g a b a g fis 
  \bar "|."
  
} %relative   

disgfyd_chords = \chordmode {
  \disgfyd_common
  
  
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