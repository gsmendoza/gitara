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

vOneBarTabOneBarOne = {  <d'\2 fs'\1 >4. <fs'\1 d'\2 >4 <fs'\1 d'\2 >8 \skip 4 }
vTwoBarTabOneBarOne = {  <d,\6>4 <d\4>2 <d\4>8 <a,\5>8 }
cBarTabOneBarOne = {   }


%-----------------------------------------------------------------------
% Lines


%-----------------------------------------------------------------------
% Stanzas


%-----------------------------------------------------------------------
% Scores


%-----------------------------------------------------------------------
% Voices

vOne = {
  \transposition d''
  \vOneBarTabOneBarOne
}

vTwo = {
  \transposition d'
  \vTwoBarTabOneBarOne
}


%-----------------------------------------------------------------------
% Stanza Headings

stanzaHeadings = { 
}

%-----------------------------------------------------------------------
% Chord Headings

chordHeadings = { \cBarTabOneBarOne }

%-----------------------------------------------------------------------

\score {
  \new StaffGroup <<
    \new Staff <<
      
      \tempo 4 = 100

      \clef "treble_8"

      \new ChordNames {
        \chordHeadings
      }

      \new Voice \with { \remove Rest_engraver } {
        \stanzaHeadings
      }

      \new Voice {
        \key d \major
        \voiceOne
        \vOne
      }
      \new Voice {
        \key d \major
        \voiceTwo
        \vTwo
      }
    >>

    \new TabStaff <<
      \set TabStaff.stringTunings = #guitar-drop-d-tuning
      \new TabVoice {
        \slurUp
        \vOne
      }
      \new TabVoice {
        \slurUp
        \vTwo
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
    \tempo 4 = 100

    \clef "treble_8"

    \new Voice {
      \unfoldRepeats {
        \vOne
      }
    }
    \new Voice {
      \unfoldRepeats {
        \vTwo
      }
    }
  >>

  \midi {}
}
