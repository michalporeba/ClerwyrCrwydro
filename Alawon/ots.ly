% pomysl z 2019-05-08, 
% rozwiniety podczas etnologicznej podrozy samochodem
% ze Swansea do Lublina, w hotelu pod Berlinem 2019-12-16

ots_teitl = "Oes ots?"
ots_tytul = "No i co?"

ots_common =  {
  \time 4/4
  \set Score.beatStructure = #'(3 3 2)
  \clef treble 
  \key g \minor

}
ots_melody = \relative g'' {
  \ots_common 
 
  g4. d bes8 d 
  c4. g ~ g4
  g'4. c, bes8 d
  c4. ~ c ~ c4
  g'4. c, f8 e
  c4. g a4
  bes4. c a4 
  g4. ~ g ~ g4
  
  g'4. d f4
  e4. c a4
  g8 d' g  f4 bes,8 f' e
  c4. g c4
  g'4. c, f8 e
  c8 g c, g'4. a4
  bes8 c bes c4 a8 bes a 
  g4. ~ g ~ g4
  bes8 c bes d4 c8 a f
  g4. ~ g ~ g4
  
  d'8 c bes g'4 f8 g f
  c8 g c d g, d' bes4
  d8 c bes g'4 f8 g f 
  g4. ~ g ~ g4
  
  \bar "|." 
  
  
} %relative   


ots_chords = \chordmode {
  \ots_common

  
  
  
}

ots = \score {
  \header { 
    teitl = \ots_teitl
    tytul = \ots_tytul
  }
  <<
    \new ChordNames { \ots_chords }
    \new Staff { \ots_melody }
  >>
} %score

ots_in_b = \score {
  \header { 
    teitl = \ots_teitl
    tytul = \ots_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \ots_chords }
      \new Staff { \ots_melody }
    >>
  }
} %score
