% written 2017-11-16
% beddgelert

pibdawns_hydrefol_teitl = "Pibdawns Hydrefol"
pibdawns_hydrefol_tytul = "Dudziarz Jesienny"

pibdawns_hydrefol_common =  {
  \time 2/2
  \clef treble 
  \key d \major
}

pibdawns_hydrefol_melody = \relative d' {
  \pibdawns_hydrefol_common 

  \tempo \markup {
    \concat {
      
      \smaller \general-align #Y #DOWN \note #"8" #0.75
      " "
      \smaller \general-align #Y #DOWN \note #"8" #0.75
      " = "
      \smaller \general-align #Y #DOWN \note #"8." #0.75
      " "
      \smaller \general-align #Y #DOWN \note #"16" #0.75
      
    }
  }
  
  \repeat volta 2 {
    d8 fis a d fis e d cis 
    b4 a8 b fis4 e
    b'4 a8 b d4 e
    b4 a8 b fis4 e
  }
  \alternative {
    { 
      d8 fis a d fis e d cis 
      d2 a4 fis
    }
    {
      d8 fis a d e4 e8 fis 
      d2-"Fine" r4 d8 e
    }
  }
  \break
  \repeat volta 2 {
    fis8 b, b a b4 d8 e 
    fis8 a, a fis' e4 d8 e 
    fis8 b, b fis' e d b a 
    fis8 a b d cis4 b8 e
  }
  \alternative {
    {
      d8 b b d cis b a fis 
      b2. d8 e
    }
    {
      d8 b b d cis d e a,
      fis'8 d d b e-"D.C. al Fine" fis g a
    }
  }
  \bar "|."
  
  
} %relative   


pibdawns_hydrefol_chords = \chordmode {
  \pibdawns_hydrefol_common
  
  d2 a g a 
  g2:7maj a e:m7 a
  g2 a d1
  g2 a d1
  
  b2:m g d a 
  b:m g d a 
  g a b1:m 
  g2 a g a
  
}

pibdawns_hydrefol = \score {
  \header { 
    teitl = \pibdawns_hydrefol_teitl
    tytul = \pibdawns_hydrefol_tytul
  }
  <<
    \new ChordNames { \pibdawns_hydrefol_chords }
    \new Staff { \pibdawns_hydrefol_melody }
  >>
} %score

pibdawns_hydrefol_in_b = \score {
  \header { 
    teitl = \pibdawns_hydrefol_teitl
    tytul = \pibdawns_hydrefol_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \pibdawns_hydrefol_chords }
      \new Staff { \pibdawns_hydrefol_melody }
    >>
  }
} %score
