% written 2018-08-15

brenin_jacob_teitl = "Brenin Jacob"
brenin_jacob_tytul = "Dudy Króla Jakuba"

brenin_jacob_common =  {
  \time 2/4
  \clef treble 
  \key e \minor
}

brenin_jacob_melody = \relative b' {
  \brenin_jacob_common 

  \repeat volta 2 {
    b16 e, b' e d b a g 
    fis g a d, b' a g fis 
    g16 e b' e d b a g 
    a g fis d e fis g a
    b16 e, b' e d b a g 
    fis g a d, b' a g fis 
  }
  
  \alternative {
    {
      g16 e g c b a g fis 
      a g fis d e4
    }
    {
      g16 fis g a b a g fis 
      a g fis g e4
    }
  }
  
  \repeat volta 3 {
    c'16 b c a c g fis c'
    b c a c g c fis,8
    b16 a b g b fis e b' 
    a b g b fis b e,8
  }
  
  \alternative {
    {
      c'16 b c a c g fis c'
      b c a c g c fis,8
      d'16 b a b g b a b
      d b a b gis a ais b
    }
    {
      a16 g fis e fis g a c 
      b a g fis g a b d
      c16 b a g b a g fis
      g16 fis e4 a8
    }
    {
      \break
      \set Score.repeatCommands = #`((volta #f) (volta ,#{ \markup \text {"2 (tro olaf | ostatni raz)"} #}) end-repeat)
      a16 g fis e fis g a c 
      b a g fis g a b d
      e16 c b a d b a g 
      c16 a g fis a g fis d
      e4 ~ e8-"Fine" r
      
    }
  }
  
  
  \bar "|."
  
} %relative   

brenin_jacob_chords = \chordmode {
  \brenin_jacob_common
  
  e2:m d4 g 
  c2 d4 a:m
  e2:m d4 g
  c4 a:m b:m e:m
  c4 a:m b:m e:m
  
  a2:m c g e:m
  a2:m c g b4:m e:7
  
  a2:m g c4 d a2:
  a2:m g c4 g a:m b:m e2:m
}

brenin_jacob = \score {
  \header { 
    teitl = \brenin_jacob_teitl
    tytul = \brenin_jacob_tytul
  }
  <<
    \new ChordNames { \brenin_jacob_chords }
    \new Staff { \brenin_jacob_melody }
  >>
} %score

brenin_jacob_in_b = \score {
  \header { 
    teitl = \brenin_jacob_teitl
    tytul = \brenin_jacob_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \brenin_jacob_chords }
      \new Staff { \brenin_jacob_melody }
    >>
  }
} %score
