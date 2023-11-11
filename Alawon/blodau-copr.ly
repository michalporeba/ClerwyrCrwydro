% 2023-11-11 


blodau_copr_teitl = "Blodau Copr"
blodau_copr_tytul = "Miedziane kwiaty"

blodau_copr_common =  {
  \time 6/8
  \clef treble 
  \key g \major
}

blodau_copr_melody = \relative g' {
  \blodau_copr_common 

  \repeat volta 2 {
    g4 b8 d4 g8 e4 d8 c4 b8
    a4 a8 g4 a8 b4 d8 e4 d8 
    g,4 b8 d4 g8 e4 d8 c4 b8
    a4 a8 b4 a8 g4. d 

    g4 b8 d4 g8 e4 d8 c4 b8
    a4 a8 g4 a8 b4 d8 e4 d8
    b4 d8 g4 a8 b4 a8 g4 e8
  }
  \alternative {
    { a4 g8 b4 a8 g8 a g d4 b8 }
    { a'4 g8 e4 d8 g,4. g'4 a8 }
  }
  
  b4 b8 a4 g8 a4 a8 g4 fis8 
  g4 g8 fis4 e8 d4 g8 fis g a 

  b4 b8 a4 g8 a4 fis8 d4 a'8 
  g8 a g fis4 e8 d4 b8 

  \bar "||"
  \bar "|."
  
} %relative   

blodau_copr_chords = \chordmode {
  \blodau_copr_common
  s8
  %g4. c d2. 
  
  \once \set chordChanges = ##f
  
  
  %g4.:m c:m d2. 
  %g4.:m c:m d2. 
  %g4.:m c:m d2. 
  %c4.:m d g4.:m g4:m
  
}


blodau_copr = \score {
  \header { 
    teitl = \blodau_copr_teitl
    tytul = \blodau_copr_tytul
  }
  <<
    \new ChordNames { \blodau_copr_chords }
    \new Staff { \blodau_copr_melody }
  >>
} %score
  
blodau_copr_in_b = \score {
  \header { 
    teitl = \blodau_copr_teitl
    tytul = \blodau_copr_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \blodau_copr_chords }
      \new Staff { \blodau_copr_melody }
    >>
  }
} %score