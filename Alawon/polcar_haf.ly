% 2018-08-13 / 2018-09-02

polcar_haf_teitl = "Tra Bo'r Haf"
polcar_haf_tytul = "Póki Jeszcze Lato"

polcar_haf_common =  {
  \time 2/4
  \clef treble 
  \key d \major
}

polcar_haf_melody = \relative d' {
  \polcar_haf_common 
 
  \repeat volta 3 {
    d8 d a'4 g16 fis e d e4
    d8 d a'4 g16 a b8 a4
    d,8 d a'4 b16 a g e fis8 a 
    
  }
  \alternative {
    {
      b16 cis d b a8 fis 
      g16 a b8 a16 b cis8 
    }
    { 
      b16 cis d b a8 fis 
      g16 fis e8 d4
    }
    { 
      \set Score.repeatCommands = #`((volta #f) (volta ,#{ \markup \text {"2 (tro olaf | ostatni raz)"} #}) end-repeat)
      b'16 cis d b a fis g a 
      b16 cis d8 cis16 d e8
      d8-"Fine" r4.
      
    }
  }
  
  \key e \minor
  
  \repeat volta 2 {
    e,8 e16 fis g fis e b' a8 fis e d 
    g8 g16 a b8 g a d b a
    g16 fis e fis g fis e b' a fis e d e4
    c'?8 b a g
  }
  \alternative {
    { fis16 g a fis d8 g16 fis}
    { fis16 g a fis e a b cis }
  }

  \key d \major
  
  \repeat volta 2 {
    d8 d, fis a b16 a g fis e8 d16 e
    fis8 a d a b16 cis d8 e cis
    d8 d, fis a b16 a g fis a g fis e
    
    d16 e fis8 cis16 fis a8
    g16 a b8 e,16 a b cis-"D.C."
  }
  
  
  
} %relative   


polcar_haf_chords = \chordmode {
  \polcar_haf_common
  
   d2 g4 a 
   d2 g4 a 
   d2 g4 d 
   g4 d e:m a 
   g4 d g8 a d4
   g4 d g4 a d2
   
   e2:m b:m7
   g2 d 
   e2:m b4:m7 c 
   a2:m d
   \once \set chordChanges = ##f
   d4 a:7
   
   d2 g4 a 
   d2 g4 a 
   d2 g4 a
   b4:m fis:m g a:7
}

polcar_haf = \score {
  \header { 
    teitl = \polcar_haf_teitl
    tytul = \polcar_haf_tytul
  }
  <<
    \new ChordNames { \polcar_haf_chords }
    \new Staff { \polcar_haf_melody }
  >>
} %score

polcar_haf_in_b = \score {
  \header { 
    teitl = \polcar_haf_teitl
    tytul = \polcar_haf_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \polcar_haf_chords }
      \new Staff { \polcar_haf_melody }
    >>
  }
} %score
