% written early 2019-11-05
% a response to long and very political debate
% on welsh folc music, and what trac does to it 
% with gwerin gwallgo and the like 

dagrau_robin_teitl = "Dagrau Robin"
dagrau_robin_tytul = "Robinie Łzy"

dagrau_robin_common =  {
  \time 2/4
  \clef treble 
  \key d \minor
}

dagrau_robin_melody = \relative d' {
  \dagrau_robin_common 
 
  \repeat volta 2 {
    d8 f a d 
    c8 bes16 a g8 f 
    e8 f g e 
    d4 d4
    
    d8 f a d
    c bes16 a g8 f 
    e8 f g a 
    f4 a4
    
    d,8 f a c
    bes8 bes16 a g8 f 
    e8 f g c 
    a4 g4
    
    d8 f a c
    bes8 bes16 a g8 f 
    e8 f g e 
    d4 d 
  }
  
  
  cis8 e g8. e16 
  d8 f a f 
  e8 g c bes
  a4 cis
  
  d8 c16 bes a8 g 
  bes8 a f e 
  f8 e d cis 
  d4 a'
  
  d8 cis16 bes a8 g 
  c16 d c a g8 f 
  a8 g f e 
  d4 d
  
  \repeat volta 2 {
    cis8 e g8. e16 
    d8 f a f 
    e8 g c bes
    a4 cis
  
    d8 c16 bes a8 g 
    bes8 a f e 
    f8 e d cis 
    d2
  }
  
} %relative   


dagrau_robin_chords = \chordmode {
  \dagrau_robin_common
  
  d2:m 
  g2:m 
  a2
  d2:m
  
  d2:m 
  g2:m 
  a2
  d2:m
  
  d2:m 
  g2:m 
  c2
  f4 a:7
  
  d2:m 
  g2:m 
  a2
  d2:m
  
  a2
  d:m 
  c
  f4 a:7
  
  d2:m 
  g:m 
  a 
  d:m 
  
  g2:m 
  f
  a
  d:m
  
  a2
  d:m 
  c
  f4 a:7
  
  d2:m 
  g:m 
  a 
  d:m 
}

dagrau_robin = \score {
  \header { 
    teitl = \dagrau_robin_teitl
    tytul = \dagrau_robin_tytul
  }
  <<
    \new ChordNames { \dagrau_robin_chords }
    \new Staff { \dagrau_robin_melody }
  >>
} %score

dagrau_robin_in_b = \score {
  \header { 
    teitl = \dagrau_robin_teitl
    tytul = \dagrau_robin_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \dagrau_robin_chords }
      \new Staff { \dagrau_robin_melody }
    >>
  }
} %score

dagrau_robin_g = \score {
  \header { 
    teitl = \dagrau_robin_teitl
    tytul = \dagrau_robin_tytul
  }
  
  \transpose c f { 
    <<
      \new ChordNames { \dagrau_robin_chords }
      \new Staff { \dagrau_robin_melody }
    >>
  }
} %score

dagrau_robin_g_in_g = \score {
  \header { 
    teitl = \dagrau_robin_teitl
    tytul = \dagrau_robin_tytul
    key = \markup { "G"  }
  }
  
  \transpose c bes, { 
    <<
      \new ChordNames { \dagrau_robin_chords }
      \new Staff { \dagrau_robin_melody }
    >>
  }
} %score