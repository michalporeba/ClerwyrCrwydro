%variables

nos_da_teitl = "Nos Da"
nos_da_tytul = "Dobranoc"

nos_da_common =  {
  \time 3/4
  \key f \major
}

nos_da_melody = \relative f' {
  \nos_da_common 
  \repeat volta 2 {
    a2.~ a2 bes8 a
    g4 f d  
    c2. f~ f4 r g
    
    a2. g4 fis a 
    g2. d2 f?4
    e2. bes'4 a g
    
    c2 d8 c a4 g f 
    bes2 c4 d2 e4
    f2.~ f4 g f 
    a4 g f
  }
  \alternative {
    { 
      a g f 
      d4 c bes e2 f4 
      c2.~ c4 r bes
    }
    { 
      %\break
      c bes a 
      d2. e2 c4 
      f2.~ f4 r2
    }
  }
  
  \key f \minor 
  
  \repeat volta 2 {
    c2 f4 g f2 
    es4 des c bes as bes 
    c2 f4 g, f2
    es'4 des c bes4. as8 bes4
    c2 des4 des c2
    es4 des c bes bes as
    c2. 
  }
  \alternative {
    {
      f,2 g8 as 
      bes4 as g g as bes
    }
    {
      f2.
      bes2. e,4 f g-"D.C."
    }
  }
  
  \bar "|."
  \key f \major   
  \once \override Score.RehearsalMark.font-size = #5
  \mark \markup { \musicglyph #"scripts.coda" }
  a2. ~ a2 bes8 a 
  g4 f g a2. 
  c,2. ~ c4 f g 
  a2 d4 c a g 
  bes2 a4 d bes a 
  g2. ~ g4 a bes
  
  c2 d8 c a4 g f 
  bes2 c4 d2 e4
  f2.~ f4 g f 
  a4 g f c bes a 
  d2. e2 g4 
  f2.~ f2. ~ f4 r2
  
  \bar "|."
  
  
}

nos_da_chords = \chordmode {
  
  f2. f g:m 
  f2. f g:m 
  f2. d 
  g2.:m g:m 
  c2. c 
  
  f2. es 
  bes2. bes
  bes2.:dim7 bes:dim7
  
  f2. f 
  bes2. bes
  c2. c 
  
  f2. 
  bes2. c
  f2. f
  
  f2.:m f2.:m 
  bes2.:m bes:m 
  f2.:m f2.:m 
  des2. es
  f2.:m f2.:m 
  bes2.:m es 
  as2. des 
  bes2.:m c
  
  des2.
  es2. c
  
  f2. f g:m 
  f2. f g:m 
  d2.:m a:m 
  g2.:m g:m 
  c2. c
  
  f2. es 
  bes2. bes
  bes2.:dim7 bes:dim7
  
  f2. f 
  bes2. c
  f2. f
  
  
}

  
nos_da = \score {
  \header { 
    teitl = \nos_da_teitl
    tytul = \nos_da_tytul
  }
  <<
    \new ChordNames { \nos_da_chords }
    \new Staff { \nos_da_melody }
  >>
} %score

nos_da_in_b = \score {
  \header { 
    teitl = \nos_da_teitl
    tytul = \nos_da_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \nos_da_chords }
      \new Staff { \nos_da_melody }
    >>
  }
} %score