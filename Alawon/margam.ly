% written 2019-09-14

margam_teitl = "Margam"
margam_tytul = "Margam"

margam_common =  {
  \time 6/8
  \clef treble 
  \key c \minor
}

margam_melody = \relative c'' {
  \margam_common 

  \repeat volta 2 {
      c2 bes8 c
      f,2 es8 f 
      g4 bes d, 
      c2 bes8 c 
      d4 g bes 
      c f, c' 
      d4. c8 f e
      d2 c8 c 
      es8 g,4 f8 g bes 
      g2 f8 es 
      c'8 a g f f es 
      
  } 
  \alternative {
    { 
      d2 r8 es16 d 
      c2.~ c2. 
    }
    {
      d2 r16 es g d'
      es8 d c~ c4.~
      c2.
    }
  }
  
  \bar "||"
  
  es8 d8. c16 es8 d c 
  bes as? g g4. 
  c8 bes as? g f es 
  g as g g4 g8 
  f8 g f~ f4 a8 
  bes8 c bes~ bes4 bes8 
  c8 d c c4 es8 
  d4. g, 
  
  es'8 d8. c16 g'8 f es 
  d8 c bes g4. 
  c8 bes as g f es 
  g8 as g~ g4 g8
  f8 g f c' d c 
  es8 d c g'4. 
  as8 g f d c bes 
  es8 d c b g g'
  c,2.~ c2.
  
  \bar "|."
  
} %relative   

margam_chords = \chordmode {
  \margam_common
  
  c2.:m
  d:m
  es
  f
  g:m 
  a:m 
  bes
  g
  c:m 
  es4. as 
  f2. 
  g
  c:m
  c:m
  
  g
  c:m
  c:m
  
  \once \set chordChanges = ##f
  c:m 
  g:m 
  as
  es
  f
  bes 
  as
  g
  
  c:m 
  g:m 
  as
  es
  f:m
  c:m 
  as4. 
  bes
  as
  g
  
  c2.:m 
  c:m 
}

margam = \score {
  \header { 
    teitl = \margam_teitl
    tytul = \margam_tytul
  }
  <<
    \new ChordNames { \margam_chords }
    \new Staff { \margam_melody }
  >>
} %score

margam_in_b = \score {
  \header { 
    teitl = \margam_teitl
    tytul = \margam_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \margam_chords }
      \new Staff { \margam_melody }
    >>
  }
} %score