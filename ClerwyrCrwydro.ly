\version "2.18.2"

\include "Alawon/bore-mercher.ly"
\include "Alawon/brenin-jacob.ly"
\include "Alawon/clerwyr-crwydro.ly"
\include "Alawon/cwiafiac-cwm-tawe.ly"
\include "Alawon/cyntaf.ly"
\include "Alawon/david-davis.ly"
\include "Alawon/disgfyd.ly"
\include "Alawon/hen-chwedl.ly"
\include "Alawon/lindysyn.ly"
\include "Alawon/mor-ladron.ly"
\include "Alawon/organ-dro.ly"
\include "Alawon/pibdawns-hydrefol.ly"
\include "Alawon/pilipala.ly"
\include "Alawon/pobl-ffol.ly"

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

\book {
  \paper {
    print-page-number = ##f
    first-page-number = -1
    
    ragged-bottom = ##t
    
    % two-sided = ##t
    
    % annotate-spacing = ##t
  
    indent = 25\mm
    %system-count = #5
    
    #(set-paper-size "a5landscape")
    
    %#(define fonts (make-pango-font-tree 
    %                      "FoglihtenNo07"
    %                      "Autobus Bold"
    %                      "Truetypewriter"
    %                      (/ staff-height pt 20)))
    
    bookTitleMarkup = \markup {
      \bold
      \fill-line {
        \center-column {
          
          \vspace #8
          \line { \fontsize #8 \override #'(font-name . "FoglihtenNo07") \fromproperty #'header:title }
          \vspace #1
          \line { \fontsize #6 \override #'(font-name . "FoglihtenNo04") \fromproperty #'header:subtitle }
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
    tagline = "Drafft - Alawon Ffug Clerwyr Crwydro. Version 2018-09-01"
  }
 
  \bookpart {
    \pageBreak
    
    % 2/4
    \brenin_jacob	\pageBreak
    \hen_chwedl		\pageBreak 
    \morladron  	\pageBreak
    
    % 2/2
    \lindysyn 		\pageBreak
    \pibdawns_hydrefol 	\pageBreak 
    
    % 3/4
    \bore_mercher 	\pageBreak
    \bore_mercher_ail 	\pageBreak
    
    \cwiafiac		\pageBreak 
    
    \organ_dro 		\pageBreak
    \organ_dro_ail	\pageBreak
    
    % 4/4
    \david_davis	\pageBreak 	% Capt. David Davis
    
    % 6/8
    \clerwyr_crwydro 	\pageBreak
    \cyntaf 		\pageBreak 	% chwibanau a chlochau
    \pobl_ffol 		\pageBreak 	% gorymdaith pobl ffol
    
    
    % 9/8
    \disgfyd		\pageBreak	% y disgfyd 
    % 9/8 +
  
    \pilipala 		\pageBreak 	% hela'r pili pala
    
    
    
  } %bookpart
} %book