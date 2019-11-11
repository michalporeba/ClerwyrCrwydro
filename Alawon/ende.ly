% 2019-11-11

ende_teitl = "Mr Ende"
ende_tytul = "Pan Ende"

ende_common =  {
  \time 3/4
  \key g \minor
  \partial 4.
}

ende_melody = \relative g' {
  \ende_common 
  
  g8 a bes 
  \repeat volta 2 {
    c4 c8 bes c d 
    es4 es8 d es f 
    es4 d4. c8 
    d4. g,8 a b 
    c4 c8 b c d 
    es4 es8 d es f 
  }
  \alternative {
    { 
      g4 c,4. bes8 
      g4. g8 a bes?
    }
    { 
       g'4 c,4. g'8 
       g2 g4
       
    }
  }
  
  \bar "||"
  c4 bes? a 
  g f es 
  d c bes
  a g fis 
  
  g2. ~ g
  
  \bar "||"
  
  \key c \minor 
  
  g4 c d 
  es d c 
  g'2 c,4
  g'2.
  
  f4 f g 
  as4 c, f
  es4 f es 
  d4 c bes
  
  g4 c d 
  es4 d c 
  g'2 c,4 
  es4 d2
  as4 c d 
  es4 es f 
  d2. ~ 
  d2.

  g,4 c d 
  es d c 
  g'2 c,4
  g'4 c,2
  as'4 f g 
  as4 c as 
  g2 as8 g 
  f2. 
  
  f4 es f 
  d2 g,4
  es'4 d es 
  c2. 
  
  \bar "||"
  
  g4 a bes
  c d es 
  f g as 
  g a b
  
  c2. ~ 
  c2.
  
  
  \bar "|."
  
}

ende_chords = \chordmode {
  c2.:m 
  c:m 
  bes 
  g
  
  c2.:m 
  es
  f
  g:m
  
  f
  g
  c:m 
  es
  f
  d
  g:m 
  g:m 
  
  c2.:m 
  c:m 
  c:m 
  c:m 
  
  f:m 
  f:m 
  as 
  bes
  
  c2.:m 
  c:m 
  c:m 
  c:m 
  
  f:m 
  f:m 
  g
  g
  
  c2.:m 
  c:m 
  c:m 
  c:m 
  
  f:m 
  f:m 
  es
  bes
  
  as
  bes
  es
  c:m 
  
  
}

  
ende = \score {
  \header { 
    teitl = \ende_teitl
    tytul = \ende_tytul
  }
  <<
    \new ChordNames { \ende_chords }
    \new Staff { \ende_melody }
  >>
} %score
