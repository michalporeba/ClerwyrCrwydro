% written 2017-11-16

hen_chwedl_teitl = "Y Hen Chwedl"
hen_chwedl_tytul = "Stara Baśń"

hen_chwedl_common =  {
  \time 2/4
  \clef treble 
  \key e \minor
  \partial 4
}

hen_chwedl_melody = \relative d' {
  \hen_chwedl_common 
  
  e8 fis 
  \repeat volta 2 {
    g8 e b' a16 g 
    d16 e fis4 e16 fis 
    g8 e b' a16 g 
    d'16 e a,8 a \breathe e16 fis
    g8 e b' a16 g 
    fis16 e d4 \breathe e16 fis 
    a16 g fis e b' a fis d 
    e8 e16 d e8 \breathe b'
  }
  
  \repeat volta 2 {
    \once \set chordChanges = ##f
    g8 e b' d16 cis
    a8 fis d4
    a'16 g fis e b' a g a 
    b16 a b d b a a b 
    e8 b e g16 fis 
    d8 a d,4 
    b'16 a g fis a g fis d 
    e8 e16 d e8 b'
  }
  
  \key d \major 
  \time 6/8
  \tempo \markup {
    \concat {
      
      \smaller \general-align #Y #DOWN \note {8} #0.75
      " = "
      \smaller \general-align #Y #DOWN \note {4.} #0.75      
    }
  }
  
  \repeat volta 2 {
    e,8 b' b a fis d 
    \time 5/8
    g8 a b d cis 
    b e, e g fis 
    \time 6/8
    d' cis a e' d cis 
    b e, e g fis d 
    \time 5/8
    d'8 cis a e' g 
    fis b, b e d
    \time 6/8
    cis8 a a g fis d 
  }
  
  \repeat volta 2 {
    e8 b' b a d a 
    \time 5/8 
    b8 a g fis d 
    e b' b a d 
    \time 6/8
    e cis a d cis g 
    e8 b' b a d a 
    \time 5/8 
    b8 a g g fis 
    e8 c' a g b 
    \time 6/8
  }
  \alternative {
    { a8 g fis e4 d8 }
    { g8 fis d e4. }
  }
  \bar "|."
  
} %relative   


hen_chwedl_chords = \chordmode {
  \hen_chwedl_common
  
  s4
  e4:m g d b:m
  c a:m d a:m
  e:m g d b:m
  c d e2:m
  
  \once \set chordChanges = ##f
  e2:m b:m
  c4 d c d 
  e2:m b:m
  c4 d a2:m
  
  e4.:m d g a4
  e4.:m d4 g4. a
  e4.:m d g a4
  b4.:m e4:m a4. c4 d8
  
  e4.:m d g a4
  e4.:m d4 a4. g
  e4.:m d g a4
  c4. g4
  a4:m b8:m c4 d8
  a4:m b8:m e4.:m
}

hen_chwedl = \score {
  \header { 
    teitl = \hen_chwedl_teitl
    tytul = \hen_chwedl_tytul
  }
  <<
    \new ChordNames { \hen_chwedl_chords }
    \new Staff { \hen_chwedl_melody }
  >>
} %score

hen_chwedl_in_b = \score {
  \header { 
    teitl = \hen_chwedl_teitl
    tytul = \hen_chwedl_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \hen_chwedl_chords }
      \new Staff { \hen_chwedl_melody }
    >>
  }
} %score

