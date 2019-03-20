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
    c2. f r2 g4
    
    a2. g4 fis a 
    g2. d2 f?4
    e2. bes'4 a g
    
    c2 d8 c a4 g f 
    bes2 c4 d2 e4
    f2.~ f4 g f 

  }
  \alternative {
    { 
      a4 g f a g f 
      d4 c bes e2 f4 
      c2.~ c
    }
    { 
      %\break
      a'4 g f c bes a 
      d2. e2 c4 
      f2.~ f-"Fine"
    }
  }
  
  \key f \minor 
  
  \repeat volta 2 {
    c2 f4 g f2 
    es4 des c bes as bes 
    c2 f4 g, f2
    es'4 des c bes as bes
    c2 des4 des c2
    es4 des c bes bes as
  }
  \alternative {
    {
      c2. f,2 g8 as 
      bes4 as g g as bes
    }
    {
      c2. f,2.
      bes2. e,4-"D.C. al Fine" f g
    }
  }
  
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
  g2.:dim7 g:dim7
  
  f2. f 
  bes2. bes
  c2. c 
  
  f2. f 
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
  
  as2. des
  es2. c
  
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
