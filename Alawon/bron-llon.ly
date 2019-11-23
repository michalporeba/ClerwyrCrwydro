% initial idea 2019-10-20
% put tegether 2019-11-09

bron_llon_teitl = "Bron Llon (Polca Pogo)"
bron_llon_tytul = "Prawie radosny (Polka Pogo)"
bron_llon_form = "A B A B C B A B A Coda"

bron_llon_common =  {
  \time 2/4
  \clef treble 
  \key d \minor
  \set Score.markFormatter = #format-mark-box-alphabet
}

bron_llon_melody = \relative a' {
  \bron_llon_common 
  \mark \default
  g8 bes d f 
  e8 c d16 c bes8 
  g8 bes d f 
  e4 g
  g,8 bes d f 
  e8 c d16 c bes8 
  a8 bes c a 
  g4 g
  
  g8 bes d f 
  e8 c d16 c bes8 
  g8 bes d f 
  g4 e
  g,8 bes d f 
  e8 c d16 c bes8 
  a8 bes c a 
  g2
  
  \bar "||"
  \break
  \mark \default
  \bar ".|:-||"
  \repeat volta 2 {
    \repeat unfold 2 {
      g8 g16 a bes8 g 
      a8 d d4
    }
    bes8 d4 g8
    f8 d  e16 d c8 
  }
  \alternative {
    {
      bes8 a bes c 
      d4 fis
    }
    {
      bes,8 a g fis 
      g4 g
    }
  }
  
  \bar "||"
  \break
  \mark \default
  \bar ".|:-||"
  \repeat volta 2 {
    g16 fis g a bes8 bes 
    a8 d g f 
  }
  \alternative {
    {
      bes,16 a bes c d8 d 
      c16 d c bes a g fis a 
    }
    {
      c16 d c bes a bes a g 
      fis16 g a fis g4
    }
  }
  
  \bar "|."
  \break
  \once \override Score.RehearsalMark.font-size = #4
  \mark \markup { \musicglyph #"scripts.coda" }  
  \bar ".|:-||"
  \repeat volta 2 {  
    g8 bes d bes
    c16 bes a8 bes16 a g fis 
  }
  \repeat volta 2 {  
    g8 bes d g
    f16 es d c bes a g fis 
  }
  c'16 bes a es' d c bes a 
  g4 g'
  
  \bar "|."
  
  
} %relative   


bron_llon_chords = \chordmode {
  \bron_llon_common

  g2:m c g:m c g:m c d g
  g2:m c g:m c g:m c d g
  
  g2:m d:m 
  es f4 d
  g2:m  bes4 c 
  bes4 f d d:7
  bes4 d:7 g2:m 
  
  g2:m d bes f4 d c2 d4 g:m
  
  g2:m c4:m d
  g2:m f4 d c4:m d g2:m
  
}

bron_llon = \score {
  \header { 
    teitl = \bron_llon_teitl
    tytul = \bron_llon_tytul
    form = \bron_llon_form
  }
  <<
    \new ChordNames { \bron_llon_chords }
    \new Staff { \bron_llon_melody }
  >>
} %score

bron_llon_in_b = \score {
  \header { 
    teitl = \bron_llon_teitl
    tytul = \bron_llon_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \bron_llon_chords }
      \new Staff { \bron_llon_melody }
    >>
  }
} %score
