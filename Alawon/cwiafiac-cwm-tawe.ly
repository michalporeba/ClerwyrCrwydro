
cwiafiac_teitl = "Cwiafiac Cwm Tawe"
cwiafiac_tytul = "Kujawiak z Walijskich Dolinek"
cwiafiac_form = "Intro [A B A C A]"
  
cwiafiac_common =  {
  \time 3/4
  \clef treble 
  \key e \minor
}


cwiafiac_melody = \relative e'' {
    
    e8. e16 e4 e
    e4 d dis
    
    \bar ".|:"
    %\once \override Score.RehearsalMark #'font-size = #1
    %\mark \markup { \musicglyph #"scripts.segno" }
    
    %\once \override Score.RehearsalMark #'font-size = #2
    %\mark \markup \smallCaps { "A" }
    
    \repeat volta 2 {
      e8 dis b e d b 
      a8. g16 a8 c b e,
      a8 g fis d g a 
      \tuplet 3/2 { c16 d c } b8 a g fis d'
      e4 b e8 g
      fis8. e16 d8 b a g 
    }
    
    \alternative {
      { 
        fis8 g a d, c' a b4 d dis 
      }
      { 
        fis,8 g a g a fis g4 e-"Fine" \bar "||" a8 cis 
      }
    }
    
    %\break
    \bar ".|:-||"
    
    %\once \override Score.RehearsalMark #'font-size = #2
    %\mark \markup \smallCaps { "B" }
    
    \repeat volta 2 {
      d8 a d fis e d 
      cis fis, cis' e d cis 
      b fis e' d cis b 
      ais8. cis16 fis,4 e 
      g8 d g b a g 
      fis a d fis e d 
      
    }
    \alternative {
      { cis8. ais16 fis4. e'8 d4 fis2 }
      { cis8. ais16 fis4. cis'8 d4 b2 }
      % { cis8. ais16 fis4. cis'8 d4 b2_\markup { \italic \center-align "D.S. al Fine a poi Trio" }  }
    }
    
    \break
    \bar ".|:-||"
    
    %\once \override Score.RehearsalMark #'font-size = #2
    %\mark \markup \smallCaps { "C" }
    
    \repeat volta 2 {
      \time 2/4
      e,8 \tuplet 3/2 {e16 fis d} e8 fis 
      \time 3/4
      g a g fis e c'
      b g d' c b a 
      b4 b8 a g fis
      e8 \tuplet 3/2 {e16 fis d} e8 fis g a
      
    }
    \alternative {
      {
        \break
        \time 2/4
        b g d' c
        \time 3/4 
        b e b a b g
        fis g a d, d' c
      } {
        \time 2/4
        g fis e a 
        \time 3/4
        b b16 b b8 b b a
        b4 cis dis
      }
    }
    
    \bar "|."
    \once \override Score.RehearsalMark #'font-size = #1
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    %\mark \markup{ \italic "D.S. al Fine" } 
}

cwiafiac_chords = \chordmode {
  \cwiafiac_common
  
  e2.:m s2 b4:7
  e2.:m
  a2:m e4:m
  c2 d4
  c2 d4
  e2.:m
  b2.:m
  
  d2. 
  g2 b4:7
  d2 b4:m 
  e2:m a4:7
  
  d2. a
  b2.:m fis
  g2. d 
  fis2.:7 b:m
  fis2.:7 b:m
  
  c2 a2.:m g b:7
  c2. g2 e2.:m d
  a2 b2.b:7
  
}

cwiafiac = \score {
  \header { 
    teitl = \cwiafiac_teitl
    tytul = \cwiafiac_tytul
    form = \cwiafiac_form
  }
  <<
    \new ChordNames { \cwiafiac_chords }
    \new Staff { \cwiafiac_melody }
  >>
} %score

cwiafiac_in_b = \score {
  \header { 
    teitl = \cwiafiac_teitl
    tytul = \cwiafiac_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \cwiafiac_chords }
      \new Staff { \cwiafiac_melody }
    >>
  }
} %score