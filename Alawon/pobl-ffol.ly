% written 2017-10-16

pobl_ffol_teitl = "Gorymdaith Pobl Ffôl"
pobl_ffol_tytul = "Marsz Ludzi Beztroskich"

pobl_ffol_common =  {
  \time 6/8
  \clef treble 
  \key e \minor
  \partial 8
}

pobl_ffol_melody = \relative d' {
  \pobl_ffol_common 

  \repeat volta 2 {
    d8
    g4 g8 g a b 
    a4 a8 a b c 
    b8 d b a d, d'
    b8 a g g' fis e
    d8 fis, e' d c b 
    c8 b a d e c 
    
  }
  \alternative {
    { 
      b8 a g fis a d, 
      \set Timing.measureLength = #(ly:make-moment 5/8)
      b' g g g4 
    }
    { 
      \set Timing.measureLength = #(ly:make-moment 6/8)
      b8 a g a g fis g4.-"Fine"  r4
    }
  }
  
  \bar "||"
  
  b8 
  e4 e,8 g' fis e 
  d b d e d c 
  b g b a g fis 
  g a b e fis g 
  e4 e,8 g' fis e 
  d b d e d c 
  b8 g e a fis d
  e8 fis g e g b 
  
  e8 b g' fis e fis 
  g8 b, e d c b 
  c b a a g fis 
  g a b g b d 
  e4 e,8 g' fis e 
  d b d e d c 
  b8 g e a g fis 
  e4.-"D.C. al Fine" ~ e4 s8
  
  \bar "|."
  
} %relative   

pobl_ffol_chords = \chordmode {
  \pobl_ffol_common
  
  s8
  g2. d 
  g4. d g2.
  b2.:m a4.:m d 
  c4. d g2 s8
  c4. d g2.
  
  e2.:m b4.:m a:m 
  c4.:7maj d e2.:m
  e2.:m b4.:m a:m 
  c4.:7maj d e2.:m
  
  c4. d e:m b:m
  c4.:7maj d e:m g
  c4. d e:m a:m
  c4.:7maj d a:m d
}

pobl_ffol = \score {
  \header { 
    teitl = \pobl_ffol_teitl
    tytul = \pobl_ffol_tytul
  }
  <<
    \new ChordNames { \pobl_ffol_chords }
    \new Staff { \pobl_ffol_melody }
  >>
} %score