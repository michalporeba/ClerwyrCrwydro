\version "2.18.2"

\include "Includes.ly"

\include "LayoutSetup.ly"

\book {
  \include "PaperSetup.ly"
  
  \header { 
    title = "Alawon Ffug Clerwyr Crwydro"
    subtitle = "Zmyślone Melodie Zbłąkanych Muzykantów"
    copyright = "copyleft"
    tagline = "Drafft - Alawon Ffug Clerwyr Crwydro. Fersiwn 2019-11-18."
  }
 
  \bookpart {
    \pageBreak
    
%      \markup { 
 %     
 %       \fill-line {
 %         \center-column {
 %           \vspace #1 \line { "..." }
 %         }
 %       }
 %     }
 %     \markup {
 %       \fill-line {
 %         \left-column {  
 %           \vspace #1
 %           \typewriter \wordwrap { "Ers ganrifoedd mae
%clerwyr yn teithio o dre i dre, 
%drwy'r goroesi gwledydd, traddodiad ac amser. Sawl wedi crwydro." }
 %         }
 %         \left-column {  
 %           \vspace #1
 %           \typewriter \wordwrap { "center" }
 %         }
 %         \left-column {  
 %           \vspace #1
 %           \typewriter \wordwrap { "abcd" }
 %         }
 %       }
%   }
    
    \pageBreak
    
    % 2/4
    \brenin_jacob	\pageBreak
    \bron_llon		\pageBreak
    \dagrau_robin	\pageBreak
    \dwy_gwanwyn	\pageBreak
    \hen_chwedl		\pageBreak 
    \morladron  	\pageBreak
    \ogorek		\pageBreak
    \polcar_haf		\pageBreak	% Tra bo'r haf
    \rwmba		\pageBreak
    
    % 2/2
    \lindysyn 		\pageBreak
    \pibdawns_hydrefol 	\pageBreak 
    
    % 3/4
    \bore_mercher 	\pageBreak
    \bore_mercher_ail 	\pageBreak
    
    \cwiafiac		\pageBreak 
    \ende		\pageBreak
    \nos_da 		\pageBreak
    
    \organ_dro 		\pageBreak
    \organ_dro_ail	\pageBreak
    
    \dafydd		\pageBreak
    
    % 4/4
    \amser		\pageBreak
    \bran		\pageBreak
    \david_davis	\pageBreak 	% Capt. David Davis
    \ffawydden		\pageBreak
    \igam_ogam		\pageBreak
    
    % 5/4
    \cysgodion		\pageBreak
    
    % 6/8
    \antur_newydd 	\pageBreak 	
    \clerwyr_crwydro 	\pageBreak
    \cyntaf 		\pageBreak 	% chwibanau a chlochau
    \farandula		\pageBreak
    \margam		\pageBreak
    \pobl_ffol 		\pageBreak 	% gorymdaith pobl ffol
    
    % 9/8
    \disgfyd		\pageBreak	% y disgfyd 
    
    % 9/8 +
    \pilipala 		\pageBreak 	% hela'r pili pala
    
    \pageBreak
    \markup { " " }
    \pageBreak 
    
    \brenin_jacob_in_b  	\pageBreak
    \bron_llon_in_b 		\pageBreak
    \dagrau_robin_in_b		\pageBreak
    \dwy_gwanwyn_in_b		\pageBreak
    \hen_chwedl_in_b		\pageBreak
    \morladron_in_b		\pageBreak
    \ogorek_in_b		\pageBreak
    \polcar_haf_in_b		\pageBreak
    \rwmba_in_b			\pageBreak
    \lindysyn_in_b		\pageBreak
    \pibdawns_hydrefol_in_b	\pageBreak
    \bore_mercher_in_b		\pageBreak
    \bore_mercher_ail_in_b	\pageBreak
    \farandula_in_b
    
  } %bookpart
} %book