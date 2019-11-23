% written 2019-03-07

dwy_gwanwyn_teitl = "Dwy Gwanwyn"
dwy_gwanwyn_tytul = "Dwie wiosny"

dwy_gwanwyn_common =  {
  \time 2/4
  \clef treble 
  \key d \major
}

dwy_gwanwyn_melody = \relative g'' {
  \dwy_gwanwyn_common 

  \repeat volta 2 {
      a8. fis16 d8 a 
      e'8 cis d a 
      a'8. fis16 d8 a 
      e'8 cis d4
      
      g8. fis16 e8 d 
      a'8 fis d a 
      b16 cis d8 e cis 
  } 
  \alternative {
    { d4 a }
    { d4 d }
  }
  
  \bar "||"
  
  \repeat volta 2 {
    b8 g' fis d 
    e8 fis a,4
    b8. fis'16 a g fis d 
    e8 fis4 a,8
    b8 g' fis d 
  }
  \alternative {
    {
      e8 fis cis a
      b8 g b fis'16 e 
      d4 cis
    }
    { 
      e8 d cis a 
      c4 d8. a16 
      b8 b a4
    }
  }
  
  \bar "||"
  
  a'16 fis d a gis a d fis 
  g8 e fis4
  a16 fis d a gis a d fis 
  e16 fis e cis d4
  a'16 fis d a gis a d fis 
  g16 b a g fis8 e16 d 
  g16 fis e d b cis d fis 
  e8 cis d4
  
  \bar "|."
  
} %relative   

dwy_gwanwyn_chords = \chordmode {
  \dwy_gwanwyn_common
  
  d2 
  a4 d 
  \once \set chordChanges = ##f
  d2 
  a4 d 
  g2 
  d2
  g4 a 
  g4 a 
  g4 d
  
  g2
  a2
  e2:m 
  fis2:m
  g2
  a2
  g2
  a2
  \once \set chordChanges = ##f
  a2
  c4 d 
  e a
  
  d2
  g4 d
  d2
  a4 d
  \once \set chordChanges = ##f
  d2
  g4 d
  e4:m b:m 
  a4 d
}

dwy_gwanwyn = \score {
  \header { 
    teitl = \dwy_gwanwyn_teitl
    tytul = \dwy_gwanwyn_tytul
  }
  <<
    \new ChordNames { \dwy_gwanwyn_chords }
    \new Staff { \dwy_gwanwyn_melody }
  >>
} %score

dwy_gwanwyn_in_b = \score {
  \header { 
    teitl = \dwy_gwanwyn_teitl
    tytul = \dwy_gwanwyn_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \dwy_gwanwyn_chords }
      \new Staff { \dwy_gwanwyn_melody }
    >>
  }
} %score
