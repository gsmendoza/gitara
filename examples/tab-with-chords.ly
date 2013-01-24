\version "2.12.3"
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

cChordSetCG = { \chordmode { c2 g:sus4 } }

cChordSetFE = { \chordmode { f2 e } }


%-----------------------------------------------------------------------
% Bars

vOneBarTabOneLineOneBarOne = {  a4 e c8 e r4 }
cBarTabOneLineOneBarOne = {  \cChordSetCG }

vOneBarTabOneLineOneBarTwo = {  b2 c4( d) }
cBarTabOneLineOneBarTwo = {  \cChordSetFE }


%-----------------------------------------------------------------------
% Lines

vOneLineTabOneLineOne = { \vOneBarTabOneLineOneBarOne \vOneBarTabOneLineOneBarTwo \break }
cLineTabOneLineOne = { \cBarTabOneLineOneBarOne \cBarTabOneLineOneBarTwo }


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
