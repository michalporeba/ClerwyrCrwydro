% written 2017-05-17 - 2019-03-11

bran_teitl = "Y Frân a'i Marchog"
bran_tytul = "Kruk i jego rycerz"

bran_common =  {
  \time 4/4
  \clef treble 
  \key b \minor
}

bran_melody = \relative g' {
  \bran_common 
  \numericTimeSignature
  
  \repeat volta 2 {
      g16 b d e cis8 a cis a16 cis b8 g
      d16 g b d e cis a cis d cis b a b8 d
      d,16 g b d e8 cis fis16 e d cis d cis b a
      \once \override Score.RehearsalMark.font-size = #4
      \mark \markup { \musicglyph #"scripts.coda" }      
      b16 g b d cis8 a cis16 d cis a b4
  } 
  
  fis16 b d fis e d cis8 d16 cis b a b a fis e 
  fis16 b d fis e d cis8 a16 b cis a b8 cis 
  d16 fis, b fis' e fis e d cis d cis b a b a g 
  fis16 b d fis e fis b, cis d e d e cis8 a
 
  
  \bar "|."
  
  \once \override Score.RehearsalMark.font-size = #4
  \mark \markup { \musicglyph #"scripts.coda" }
  b16 g b d cis8 a16 cis d b d fis e8 a, 
  b1
  
  \bar "|."
  
} %relative   

bran_chords = \chordmode {
  \bran_common
  
  e4:m a fis:m g
  e4:m a fis:m g
  e4:m a fis:m g
  e4:m a fis:m b:m
  
  \once \set chordChanges = ##f
  b4:m fis:m a g
  b4:m fis:m a g
  b4:m g a g 
  b4:m e:m g a
  
  e4:m a g a 
  b1:m
}

bran = \score {
  \header { 
    teitl = \bran_teitl
    tytul = \bran_tytul
  }
  <<
    \new ChordNames { \bran_chords }
    \new Staff { \bran_melody }
  >>
} %score