% written around 1998-1999

cyntaf_teitl = "Chwibanau a Chlochau"
cyntaf_tytul = "Gwizdki Dzwonkami"
cyntaf_form = "|: A B :| A C A*"
cyntaf_common =  {
  \time 6/8
  \clef treble 
  \key a \minor
}

cyntaf_melody = \relative a' {
  \cyntaf_common 
 
  \repeat volta 3 {
    \repeat unfold 2 { a16 e dis e b' g c e, b' g a e }
    b'16 e, dis e b' a d e, c' a b e,
    b'16 e, dis e b' a d b c a b d
    e16 g, fis g d' c
  }
  \alternative {
    {
      f a, e' c d ais 
      b16 d c b e, dis e8. b'16 e8
    }
    { 
      \set Timing.measureLength = #(ly:make-moment 3/8)
      f16 a, b c cis d 
      \set Timing.measureLength = #(ly:make-moment 6/8)
      b d c b c dis e8. e16 e8
    }
    {
      \set Score.repeatCommands = #`((volta #f) (volta ,#{ \markup \text {"2 (tro olaf | ostatni raz)"} #}) end-repeat)
      \set Timing.measureLength = #(ly:make-moment 3/8)
      f16 a, b c cis d 
      \set Timing.measureLength = #(ly:make-moment 4/8)
      e16 dis e fis g gis a8
    }
  }
  
  \bar ".|"
  \set Timing.measureLength = #(ly:make-moment 6/8)
  e4. g8 e g 
  fis4. f,?16 a c f g d
  a'4 cis,16 fis g8 e a,16 c 
  b4 e8 a,16 f g a c f
  g16 a e4 g8 e g
  fis4. f,16 a c f g d
  a'16 b fis d e8 fis16 g e8 c
  d8 b8. g16 c8 a8. c16 
  b16 a gis8 e e'8 e e 
  
  %\bar "||"
  
  \repeat volta 2 {
    f16 e d a g f  d g a b d f
    e16 d c g e d e a b a b c
    d16 c d a b c d c d g, f' d
  }
  \alternative {
    { e16 b cis b cis d e8. g16 a g }
    { e8. d16 cis b a4. }
  }
  
  
  \bar "|."
  
} %relative   


cyntaf_chords = \chordmode {
  \cyntaf_common
  
  a4.:m a:m/e a:m/c a:m
  e4.:7 e:7/b e:7/d e:7
  c4. d:m e2.:7
  d4.:m e2.:7
  d4.:m e4. a8
  
  a4. c d f 
  a4. c g f
  a4. c d f 
  a4. c g f
  e2.
    
  f4. g c a:m
  f4. g a2.
  \once \set chordChanges = ##f
  a2. 
}

cyntaf = \score {
  \header { 
    teitl = \cyntaf_teitl
    tytul = \cyntaf_tytul
    form = \cyntaf_form
  }
  <<
    \new ChordNames { \cyntaf_chords }
    \new Staff { \cyntaf_melody }
  >>
} %score

