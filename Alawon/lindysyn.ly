% written 2017-11-13
% beddgelert

lindysyn_teitl = "Lindysyn"
lindysyn_tytul = "Stonoga"
lindysyn_form = "A B  |:  A B C B  :|"
lindysyn_common =  {
  \time 2/2
  \clef treble 
  \key a \minor
}

lindysyn_melody = \relative a' {
  \lindysyn_common 

  a8 g a b a g a e 
  a g a b a4 d
  a8 g a b c b a d 
  c b a c b4 e,
  a8 b c e d c b g 
  a8 g a b c d e e,
  a8 g a b a g a e
  c'8 b a b g4 e
  
  \bar "||"
  
  \mark \markup { \musicglyph #"scripts.segno" }
  a8 g a b a g a e
  a8 g a b c4 d 
  e8 c b a d c b g 
  e8 a a c b4 d,8 e
  c'8 b a c b a g b 
  a8 g a b c d e g, 
  g'8 e d c e c b a 
  e8  a a g a2-"Fine"
  
  \bar "||" 
  \key d \major 
  
  e8 a a g a cis e cis 
  d8 cis a c4 g8 d'[ e]
  cis8 a a g a cis e cis 
  d c b a4 g8 e[ g]
  a a a g a cis e cis 
  fis e d c4 b8 a[ g] 
  a8 a a g a cis e cis 
  c8 d b a4 g8 e-\markup {
    \italic "D.S."
    \tiny \raise #0.5
    \musicglyph #"scripts.segno"
  }[ g]
  
  \bar "|."
  
  
} %relative   


lindysyn_chords = \chordmode {
  \lindysyn_common
  
  a1:m a2:m d:m 
  f2 g f e:m
  a2:m g f:7maj e:m7 
  d2:m7 f:7maj g:sus4 g
  
  a1:m a2:m d:m 
  f2 g f e:m
  a2:m g f:7maj e:m7 
  d2:m7 f:7maj g:sus4 g
  
  a1 d4. c4. g4
  a1 d4. c4. g4
  a1 d4. c4. g4
  a1 d4. c4. g4
  
}

lindysyn = \score {
  \header { 
    teitl = \lindysyn_teitl
    tytul = \lindysyn_tytul
    form = \lindysyn_form
  }
  <<
    \new ChordNames { \lindysyn_chords }
    \new Staff { \lindysyn_melody }
  >>
} %score

