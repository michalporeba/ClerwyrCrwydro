% written 2020-07-15

gorffenaf_teitl = "Gorffenaf"
gorffenaf_tytul = "Lipiec"

gorffenaf_common =  {
  \time 2/4
  \clef treble 
  \key g \minor
  \partial 8.
}

gorffenaf_melody = \relative d' {
  \gorffenaf_common 

  d16 g a
  \repeat volta 2 {
    bes8. a16 g8 d'
    es8 c4 a16 g 
    f4 f'16 d es c 
    d4 r16 d, g a 
    bes8. a16 g8 d' 
    d8 c4 bes8 
    c8. bes16 a8 g
    a4 r16 d, g a
    bes8. a16 g8 d'
    g8 c,4 bes8 
    a8 a16 g f8 f'16 c 
    d16 es d c bes c bes a 
    g8. d16 bes'8 d 
    d8 c4 bes8 
  }
  \alternative {
    { 
      a8 a16 bes a bes a bes 
      a4 r16 d, g a
    }
    { 
      a8 a16 bes a8 fis 
      g4 r
    }
  }
  
  \bar "||"
    d'8. es16 d8 c
    d g,4.
    c8. d16 c8 bes
    a2
    
    d8. es16 d8 es
    g8 f4 es8
    d8. c16 bes8 g
    f2
  \bar "|."
  
} %relative   

gorffenaf_chords = \chordmode {
  \gorffenaf_common

  s8.
  g2:m c:m
  f bes4 d
  g2:m c:m
  f d
}


gorffenaf = \score {
  \header { 
    teitl = \gorffenaf_teitl
    tytul = \gorffenaf_tytul
  }
  <<
    \new ChordNames { \gorffenaf_chords }
    \new Staff { \gorffenaf_melody }
  >>
} %score
  
gorffenaf_in_b = \score {
  \header { 
    teitl = \gorffenaf_teitl
    tytul = \gorffenaf_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \gorffenaf_chords }
      \new Staff { \gorffenaf_melody }
    >>
  }
} %score