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

vOneBarCChordBarOne = {  c4 e4 }
cBarCChordBarOne = {   }

vOneBarCChordBarTwo = {  g2 }
cBarCChordBarTwo = {   }


%-----------------------------------------------------------------------
% Lines


%-----------------------------------------------------------------------
% Stanzas

vOneStanzaCChord = { \vOneBarCChordBarOne \vOneBarCChordBarTwo }
cStanzaCChord = { \cBarCChordBarOne \cBarCChordBarTwo }
sStanzaCChord = { r4^"C chord" r4 r4 r4 }


%-----------------------------------------------------------------------
% Scores


%-----------------------------------------------------------------------
% Voices

vOne = {
  
  \vOneStanzaCChord
}


%-----------------------------------------------------------------------
% Stanza Headings

stanzaHeadings = { 
\sStanzaCChord 
}

%-----------------------------------------------------------------------
% Chord Headings

chordHeadings = { \cStanzaCChord }

%-----------------------------------------------------------------------

\score {
  \new StaffGroup <<
    \new Staff <<
      \time 2/4

      
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
