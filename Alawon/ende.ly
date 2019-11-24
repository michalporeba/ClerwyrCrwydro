% 2019-11-11
% Mr Ende
% The Neverending Story

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
  \bar "[|:"
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
  
  c4 bes? a 
  g f es 
  d c bes
  a g8 g a bes
  
  \bar ":|]"
  
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
  d4 r as4

  g4 c d 
  es d c 
  g'2 c,4
  g'2.
  as4 f g 
  as4 c as 
  g2 as8 g 
  f2. 
  
  f4 es f 
  d2 g,4
  es'4 d es 
  c2. 
  
  
  
  g4 as bes
  c d es 
  f g as   
  g a b
  
  c2. ~ 
  c2.
  
  
  \bar "|."
  
}

ende_chords = \chordmode {
  s4.
  
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
  g:m
  bes
  c:m 
  
  f2.:m 
  as
  des 
  g
  
  c:m c:m
  
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

ende_in_b = \score {
  \header { 
    teitl = \ende_teitl
    tytul = \ende_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \ende_chords }
      \new Staff { \ende_melody }
    >>
  }
} %score