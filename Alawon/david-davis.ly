% written 2018-08-26
% Capt. David Davis built a motor boat which he called Cambria and sailed it on the Salt Lake

david_davis_teitl = "Capt. David L. Davis"
david_davis_tytul = "Kpt. David L. Davis"

david_davis_common =  {
  \time 4/4
  \clef treble 
  \key d \major
  \partial 8
}

david_davis_melody = \relative d' {
  \david_davis_common 
  \numericTimeSignature
  
  \repeat volta 2 {
    d16 e
    fis8 a a8. a16 d8 d, d16 cis d e 
    fis8 a a8. b16 a4. g16 a
    b8 d d8. b16 e8 d cis b16 a
    b8 d d8. b16 d4. d,16 e
     
    fis8 a a8. fis16 e8 d d16 cis d e 
    fis8 a a8. fis16 a4. g'16 fis
    e8 b b16 a b8 g16 fis e8 r16 g d e
    fis8 a fis8. e16 d4.
  }
  \repeat volta 2 {
    g16 a b8 d d8. b16 e8 d d, e 
    fis4. g8 fis4. g16 a 
    b8 d g fis e b d16 cis b a 
    b4. fis8 a8 r d,16 e fis g 
    
    fis8 a a8. fis16 b8 a b cis
    
    d4. b8 a r d16 cis b a
    g8 b a8. fis16 e8 d d16 cis d e 
  }
  \alternative {
     { 
       \set Timing.measureLength = #(ly:make-moment 7/8)
       fis8 a fis8. e16 d4. 
     }
     { 
       \set Timing.measureLength = #(ly:make-moment 7/8)
       d2 ~ d8 r4 
     }
  }
  
  \bar "|."
  
} %relative   

david_davis_chords = \chordmode {
  \david_davis_common
  
  
}

david_davis = \score {
  \header { 
    teitl = \david_davis_teitl
    tytul = \david_davis_tytul
  }
  <<
    \new ChordNames { \david_davis_chords }
    \new Staff { \david_davis_melody }
  >>
} %score

david_davis_in_b = \score {
  \header { 
    teitl = \david_davis_teitl
    tytul = \david_davis_tytul
    key = \markup { "B" \flat }
  }
  
  \transpose c d { 
    <<
      \new ChordNames { \david_davis_chords }
      \new Staff { \david_davis_melody }
    >>
  }
} %score