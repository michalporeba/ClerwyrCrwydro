% written 2017-10-18
% beddgelert

organ_dro_teitl = "Organ Dro"
organ_dro_tytul = "Katarynka"
organ_dro_ail_teitl = "Organ Dro - y gyfalaw"
organ_dro_ail_tytul = "Katarynka - Drugi Głos"
organ_dro_composer = "Iolo Morgannwg II"

organ_dro_common =  {
  \time 3/4
  \clef treble 
  \key e \minor
}

organ_dro_melody = \relative d' {
  \organ_dro_common 

  \repeat volta 2 {
    e4 b' g 
    e b' g 
    c8 b a4 g 
    d g fis 
    e b' g 
    e b' g
    a8 g fis4 d 
  }
  \alternative {
    { e2. }
    { e2  e8 fis }
  }
  
  
  \repeat volta 2 {
    g4 e8 g a fis
    g4 d g8 a 
    b4 g8 b c a 
    b2 e,8 fis 
    g4 d8 g a fis 
    g4 fis e 
    fis8 g fis d
    e4 ~ e g fis
  }
  
} %relative   

organ_dro_ail_melody = \relative d' {
  \organ_dro_common 

  r2. 
  r4 e2 ~ e4 fis g fis d2
  g2 fis8 g a2 g8 a 
  r4 b d g8 fis e d b a
  b a g fis e d e4 g b
  a8 g fis4 e fis d d'
  c2. d4 e fis 
  e8 fis d a g' fis g fis e4 b8 a
  
  \repeat volta 2 {
    g4 e8 g a fis
    g4 d g8 a 
    b8 g b d e c
    
    b4 g e8 fis 
    g8 d g b c a 
    b4 a g 
  }
  \alternative {
    {
      a8 b a g e d 
      e fis e4 e8 fis
    }
    { 
      a8 b d cis e4 ~ e2. 
    }
  }
  
  \bar "||"
  
  r4 d4. b8 e4 b2
  g'8 a fis4 d c b2
  c2. d2. 
  e4 d a b2. 
  
  r4 d4 b e b2
  g'8 a fis4 d c b2
  a2 b4 g2. 
  a8 g fis4 d e e2
  
  \bar "|."
  
} %relative   


organ_dro_chords = \chordmode {
  \organ_dro_common
  
  e2.:m e:m a:m d 
  c a:m d e:m e:m
  
  \once \set chordChanges = ##f
  e2:m d4 g2.
  g2 c4 g2 a4:m 
  e2:m d4 c2.
  d2 e:m b:m
}

organ_dro_ail_chords = \chordmode {
  \organ_dro_common
  
  \repeat unfold 2 { 
    e2.:m e:m a:m d 
    c a:m d e:m
  }
  
  e2:m d4 g2.
  g2 c4 g2 a4:m 
  e2:m d4 c2.
  d2 e:m b:m
  d2 e:m b:m
  
  \repeat unfold 2 { 
    e2.:m e:m a:m d 
    c a:m d e:m
  }
}

organ_dro = \score {
  \header { 
    teitl = \organ_dro_teitl
    tytul = \organ_dro_tytul
    opus = \organ_dro_composer
  }
  <<
    \new ChordNames { \organ_dro_chords }
    \new Staff { \organ_dro_melody }
  >>
} %score

organ_dro_in_b = \score {
  \header { 
    teitl = \organ_dro_teitl
    tytul = \organ_dro_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \organ_dro_chords }
      \new Staff { \organ_dro_melody }
    >>
  }
} %score

organ_dro_ail = \score {
  \header { 
    teitl = \organ_dro_ail_teitl
    tytul = \organ_dro_ail_tytul
    opus = \organ_dro_composer
  }
  <<
    \new ChordNames { \organ_dro_ail_chords }
    \new Staff { \organ_dro_ail_melody }
  >>
} %score

organ_dro_ail_in_b = \score {
  \header { 
    teitl = \organ_dro_teitl
    tytul = \organ_dro_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \organ_dro_chords }
      \new Staff { \organ_dro_ail_melody }
    >>
  }
} %score