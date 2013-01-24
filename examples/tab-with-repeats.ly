\version "2.14.2"
\include "english.ly"

\paper {
 indent = #0
}

\header {
  title = ""
  composer = ""
  arranger = ""
  instrument = ""
}

%-----------------------------------------------------------------------
% Chord Sets


%-----------------------------------------------------------------------
% Bars

vOneBarTabOneLineOneRepeatOneBarOne = {  c4 d e f }
cBarTabOneLineOneRepeatOneBarOne = {   }

vOneBarTabOneLineOneAlternativeOneBarOne = {  d2 e }
cBarTabOneLineOneAlternativeOneBarOne = {   }

vOneBarTabOneLineOneAlternativeOneBarTwo = {  f2 g }
cBarTabOneLineOneAlternativeOneBarTwo = {   }


%-----------------------------------------------------------------------
% Lines

vOneLineTabOneLineOne = { \repeat volta 4 { \vOneBarTabOneLineOneRepeatOneBarOne } \alternative { { \vOneBarTabOneLineOneAlternativeOneBarOne } { \vOneBarTabOneLineOneAlternativeOneBarTwo } } \break }
cLineTabOneLineOne = { \repeat volta 4 { \cBarTabOneLineOneRepeatOneBarOne } \alternative { { \cBarTabOneLineOneAlternativeOneBarOne } { \cBarTabOneLineOneAlternativeOneBarTwo } } }


%-----------------------------------------------------------------------
% Stanzas


%-----------------------------------------------------------------------
% Scores


%-----------------------------------------------------------------------
% Voices

vOne = {
  
  \vOneLineTabOneLineOne
}


%-----------------------------------------------------------------------
% Stanza Headings

stanzaHeadings = { 
}

%-----------------------------------------------------------------------
% Chord Headings

chordHeadings = { \cLineTabOneLineOne }

%-----------------------------------------------------------------------

\score {
  \new StaffGroup <<
    \new Staff <<
      
      
      \clef "treble_8"

      \new ChordNames {
        \chordHeadings
      }

      \new Voice \with { \remove Rest_engraver } {
        \stanzaHeadings
      }

      \new Voice {
        
        \voiceOne
        \vOne
      }
    >>

    \new TabStaff <<
      
      \new TabVoice {
        \slurUp
        \vOne
      }
    >>
  >>

  \layout {
    \context { \Staff
      \override TimeSignature #'style = #'numbered
      \override StringNumber #'transparent = ##t
    }
    \context { \TabStaff
      \override TimeSignature #'style = #'numbered
    }
    \context { \Voice
      \remove Slur_engraver
    }
    \context { \TabVoice
      \remove Dots_engraver
      \remove Stem_engraver
      \remove Rest_engraver
    }
  }
}

% showLastLength = R1*4
\score {
  \new Staff \with {midiInstrument = #"acoustic guitar (nylon)"} <<
    
    \clef "treble_8"

    \new Voice {
      \unfoldRepeats {
        \vOne
      }
    }
  >>

  \midi {}
}
