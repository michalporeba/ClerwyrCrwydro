% initial idea 2019-10-20
% put tegether 2019-11-09

bron_llon_teitl = "Bron Llon"
bron_llon_tytul = "Prawie radosny"

bron_llon_common =  {
  \time 2/4
  \clef treble 
  \key d \minor
}

bron_llon_melody = \relative a' {
  \bron_llon_common 
 
  g8 bes d f 
  e8 c d16 c bes8 
  g8 bes d f 
  e4 g
  g,8 bes d f 
  e8 c d16 c bes8 
  a8 bes c a 
  g4 g
  
  g8 bes d f 
  e8 c d16 c bes8 
  g8 bes d f 
  g4 e
  g,8 bes d f 
  e8 c d16 c bes8 
  a8 bes c a 
  g2
  
  \bar "||"
  
  \repeat volta 2 {
    \repeat unfold 2 {
      g8 g16 a bes8 g 
      a8 d d4
    }
    g,8 d'4 g8
    f8 d  e16 d c8 
    bes8 a bes c 
    d4 fis
  }
  \alternative {
    {
      bes,8 a bes c 
      d4 fis
    }
    {
      bes,8 a g fis 
      g4 g
    }
  }
  
  \bar "||"
  
  \repeat volta 2 {
    g16 fis g a bes8 bes 
    a8 d g f 
  }
  \alternative {
    {
      bes,16 a bes c d8 d 
      c16 d c b a g fis a 
    }
    {
      c16 d c bes a bes a g 
      fis16 g a fis g4
    }
  }
  
  \bar "|."
} %relative   


bron_llon_chords = \chordmode {
  \bron_llon_common

}

bron_llon = \score {
  \header { 
    teitl = \bron_llon_teitl
    tytul = \bron_llon_tytul
  }
  <<
    \new ChordNames { \bron_llon_chords }
    \new Staff { \bron_llon_melody }
  >>
} %score