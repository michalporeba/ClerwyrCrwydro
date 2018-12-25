%variables

bore_mercher_teitl = "Bore Mercher"
bore_mercher_ail_teitl = "Bore Mercher - Ail Lais"
bore_mercher_tytul = "W Środę Rano"
bore_mercher_ail_tytul = "W Środę Rano - Drugi Głos"
bore_mercher_form = "A B A B C A B Coda"

bore_mercher_common =  {
  \time 3/4
  \key g \major
}

bore_mercher_part_a_lh = {
  \repeat volta 2 {
    d4 g g g2 b8 a g4 fis e d g g fis2 g8 a b4 g a
    d,4 g g fis2 g8 a b4 g e c' b a 
  }
  \alternative {
    { g8 b4. g4 fis e fis }
    { g8 b4. b4 a g fis }
  }
}

bore_mercher_part_b_lh = {
  \repeat volta 2 {
    e8 c'4. d4 b a g e'4. c8 a4 d bes g a f c' c b g
    e4 g g g4. a8 fis4 g b d b4. a8 g4 
  }
  \alternative {
    { a fis2 g2 d4 }
    { a'2 fis4 g2 ais8 b }
  }
}

bore_mercher_part_c_lh = {
  g'2 b,8 g' fis4. e8 d a b4 e fis d2 g,4 e'4. d8 c g d'4 b4. a8 b c a4 g a4. b8 d, d'
  g2 b,4 a'16 as g8 fis d b a
  \tuplet 3/2 { a8 ais b } g='4 e e2 fis4
}

bore_mercher_melody = \relative c' {
  \bore_mercher_common 
  \clef treble 
  
  \bar "[|:"
  \bore_mercher_part_a_lh 
  \bar "||"
  %\break
    e8 c'4. d4 b a g e'4. c8 a4 d bes g a f c' c b g
    e4 g g g4. a8 fis4 g b d b4. a8 g4 a fis2 g2.
   
  \bar ":|]"
  %\break
  
  \acciaccatura  { ais8 b }
  
  \bore_mercher_part_c_lh 
  
  
   
  %\bar "||"
  %\break
   
  %e8 c'4. d4 b a g e8 a4. b4 g f e f g a b4. c8 d4
  %e4 g g d2 g4 c,8 d e4 b8 c d4 g,2 a8 b c4 d b4. a8 g d
  %e8 c'4. d4 b a g e8 a4. b4 g f e d8 e f g gis a b a b c cis d
  %e8 d e g a g d4. a'8 g e
  %\tuplet 3/2 { a8 c, d } e4 \tuplet 3/2 { b8 c cis } 
  %d8 e d b g4 a8 b c4 d e2 d4 c2.
  \bar "|."
}

bore_mercher_accordion_rh = \relative c' {
  \bore_mercher_common 
  \clef treble 
  
  \bore_mercher_part_a_lh 
  \bore_mercher_part_b_lh
  
}

bore_mercher_ail_melody = \relative c'' {
  \bore_mercher_common
  \clef treble 
  
  \bar "[|:"
  \repeat volta 2 {
    b2. a2 g8 fis 
    g4 fis e d c b 
    a2 b8 c d4 b a
    b4 g b a2 b8 c
    b4 e fis g2 d'8 c
  } 
  \alternative {
    { b2. d2 c4 }
    { b8 d4. d4 c b a }
  }
  \bar "||"
  e8 c' b a g fis g fis e4 b 
  c8 d e2 d8 es f2 
  e?8 f g4 a g2 e8 d
  e4 c8 g c e fis d a d fis d 
  b8 b' g e a fis g fis e d' b4 
  a2 b4 g2. 
  
  \bar ":|]"
  
  \acciaccatura  { e'8 d }
  e2 d8 e a,4. g8 a fis 
  e4 g a8 c b2 g4
  c4. b8 g e
  b'4 g4. fis8 g8 a b4 c
  a4. d,8 fis a b2 g4
  a2 fis4 e2 g4 a2 d4
  
  \bar "|."
  
}

bore_mercher_chords = \chordmode {
  
  g2. d e:m c d g2 d4 
  g2. d e:m c g d g d
  
  a2.:m e:m f:maj7 c:m9 d:m7 g4:sus4 g2
  c2. d e:m c d g

  e2.:m d c g c b:m 
  a:m7 d e:m d c d
}

bore_mercher_accordion_lh = \relative g, {
  \bore_mercher_common
    \clef bass

  % part a
  g4_"G" <g' b d>^"g" <g b d>
  d,4_"D" <fis' a d>^"d" <fis a d>
  e,4_"E" <e g b>^"em" <e g b>
  c4_"C" <e' g c>^"c" <e g c>
  d,4_"D" <fis' a d>^"d" r
  g,4_"G" <g' b d>^"g" <fis a d>^"d"
  
  g,4_"G" <g' b d>^"g" <g b d>
  d,4_"D" <fis' a d>^"d" <fis a d>
  e,4_"E" <e' g b>^"em" <e g b>
  c4_"C" <e g c>^"c" <e g c>
  g,4_"G" <g' b d>^"g" <g b d>
  d,4_"D" <fis' a d>^"d" <fis a d>
  
  g,4_"G" <g' b d>^"g" <g b d>
  d,4_"D" <fis' a d>^"d" <fis a d>
  
  % part b
  
  a,4_"A" <e' a c>^"am" <e a c>
  e,4_"E" <e' g b>^"em" <e g b>
  f,4_"F" <e' f a c>^"f/am" <e f a c>
  c4_"C" <es g bes c d>^"cm/gm" <es g bes c d>
  d,4_"D" <f' a c d>^"dm/f" <f a c d>
  <g,c>_"G/C" <d' g b>^"g" <d g b>
  
  c4_"C" <e g c>^"c" <e g c>
  d,4_"D" <fis' a d>^"d" <fis a d>
  e,4_"E" <e' g b>^"em" <e g b>
  c4_"C" <e g c>^"c" <e g c>
  d,4_"D" <fis' a d>^"d" <fis a d>
  g,4_"G" <g' b d>^"g" r
  
  d,4_"D" <fis' a d>^"d" <fis a d>
  g,4_"G" <g' b d>^"g" r
  
  % part c
  
  
  % part d
}

bore_mercher = \score {
    \header { 
      teitl = \bore_mercher_teitl
      tytul = \bore_mercher_tytul
      form = \bore_mercher_form
    }
    <<
      \new ChordNames { \bore_mercher_chords }
      \new Staff { \bore_mercher_melody }
    >>
  } %score
  

  
bore_mercher_ail = \score {
    \header { 
      teitl = \bore_mercher_ail_teitl
      tytul = \bore_mercher_ail_tytul
      form = \bore_mercher_form
    }
    <<
      \new ChordNames { \bore_mercher_chords }
      \new Staff { \bore_mercher_ail_melody }
    >>
  } %score

bore_mercher_accordion = \score {
  \header {
      teitl = \bore_mercher_teitl
      tytul = \bore_mercher_tytul
      composer = "Clerwyr Crwydro"
  }
  \new PianoStaff <<
    \new Staff { 
      \bore_mercher_accordion_rh 
    }
    \new Staff {
      \bore_mercher_accordion_lh
    }
  >>
} % score