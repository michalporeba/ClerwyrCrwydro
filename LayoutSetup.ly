#(define-markup-command (skip-page-number-range layout props arg) (number-list?)
  (let ((page-number (chain-assoc-get 'page:page-number props -1)))
    (interpret-markup layout props
      (if (>= page-number (car arg))
          (number->string (+ page-number (1+ (- (cadr arg) (car arg)))))
          (chain-assoc-get 'page:page-number-string props -1)))))

\layout {
  \context {
    \ChordNames
    \override ChordName #'font-size = #2
    %\override ChordName #'font-series = #'bold 
   
    chordChanges = ##t
   
    \remove "Clef_engraver"
    \remove "Bar_engraver"
    \remove "Bar_number_engraver"
  }
  
  \context {
    \Voice
    \consists "Ambitus_engraver"
  }
  
  \context {
    \Staff
    \override Clef #'font-size = #3
    \override TimeSignature #'font-size = #4
    \override KeySignature #'font-size = #4
  }
  
  #(layout-set-staff-size 12)
  
}