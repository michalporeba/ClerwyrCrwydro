\version "2.18.2"

\include "Alawon/bore-mercher.ly"

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
   }
  
  \context {
    \Staff
    \override Clef #'font-size = #3
    \override TimeSignature #'font-size = #4
    \override KeySignature #'font-size = #4
  }
  
  #(layout-set-staff-size 12)
  
}

\book {
  \paper {
    print-page-number = ##f
    first-page-number = -1
    
    ragged-bottom = ##t
    
    % two-sided = ##t
    
    % annotate-spacing = ##t
  
    indent = 25\mm
    %system-count = #5
    
    #(set-paper-size "a4portrait")
    
    %#(define fonts (make-pango-font-tree 
    %                      "FoglihtenNo07"
    %                      "Autobus Bold"
    %                      "Truetypewriter"
    %                      (/ staff-height pt 20)))
    
    bookTitleMarkup = \markup {
      \bold
      \fill-line {
        \center-column {
          
          \vspace #7
          % \line { \fontsize #8 \override #'(font-name . "FoglihtenNo07") \fromproperty #'header:title }
          \line { \fontsize #8 \override #'(font-name . "FoglihtenNo07") "Alawon Ffug" }
          \vspace #0.5
          \line { \fontsize #8 \override #'(font-name . "FoglihtenNo07") "Clerwyr Crwydro" }
          \vspace #1.5
          %\line { \fontsize #6 \override #'(font-name . "FoglihtenNo04") \fromproperty #'header:subtitle }
          \line { \fontsize #6 \override #'(font-name . "FoglihtenNo04") "Zbłąkanych Muzykantów" }
          \vspace #0.5
          \line { \fontsize #6 \override #'(font-name . "FoglihtenNo04") "Zmyślone Melodie" }
          \vspace #8
          \line { \fontsize #3 \typewriter { drafft / szkic } }
        }
      }
    }
    
    scoreTitleMarkup = \markup {
      \fill-line {
        \left-column {
          \vspace #0.75
          \left-column { 
            \line{ \fontsize #5 \override #'(font-name . "FoglihtenNo07") \fromproperty #'header:teitl } 
            \line{ \fontsize #4 \override #'(font-name . "FoglihtenNo04") \bold \fromproperty #'header:tytul } }
          \vspace #0.75
        }
        \right-column {  
          \vspace #1
          \typewriter \line { \fromproperty #'header:form }
        }
      }
    }
    
    evenFooterMarkup = \markup {
      \on-the-fly \not-first-page
      \column {
        \fill-line {
          \right-column {
            \vspace #0.5
            \with-color #grey
            \typewriter
            \fromproperty #'header:tagline
          }
          \left-column { 
            \vspace #0.5
            \bold \on-the-fly \not-first-page \skip-page-number-range #'(0 0)
            \vspace #1
          }
          
        }
      }
    }
    oddFooterMarkup = \markup {
      \on-the-fly \not-first-page
      \column {
        \fill-line {
          \left-column {
            \vspace #0.5
            \with-color #grey
            \typewriter
            \fromproperty #'header:tagline
          }
          \right-column { 
            \vspace #0.5
            \bold \on-the-fly \not-first-page \skip-page-number-range #'(0 0)
            \vspace #1
          }
        }
      }
    }
    
  } %paper
  
  \header { 
    title = "Alawon Ffug Clerwyr Crwydro"
    subtitle = "Zmyślone Melodie Zbłąkanych Muzykantów"
    copyright = "copyleft"
    tagline = "Drafft - Accordion Clerwyr Crwydro. Version 2018-12-25"
  }
 
  \bookpart {
    \pageBreak
    
    \bore_mercher_accordion
    
  } %bookpart
} %book