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
%-----------------------------------------------------------------------
% Bars

vOneBarTabOneLineOneRepeatOneBarOne = {  c4 d e f }
cBarTabOneLineOneRepeatOneBarOne = {   }
sBarTabOneLineOneRepeatOneBarOne = {  r1 }

vOneBarTabOneLineOneAlternativeOneBarOne = {  d2 e }
cBarTabOneLineOneAlternativeOneBarOne = {   }
sBarTabOneLineOneAlternativeOneBarOne = {  r1 }

vOneBarTabOneLineOneAlternativeOneBarTwo = {  f2 g }
cBarTabOneLineOneAlternativeOneBarTwo = {   }
sBarTabOneLineOneAlternativeOneBarTwo = {  r1 }
%-----------------------------------------------------------------------
% Lines

vOneLineTabOneLineOne = { \repeat volta 4 { \vOneBarTabOneLineOneRepeatOneBarOne } \alternative { { \vOneBarTabOneLineOneAlternativeOneBarOne } { \vOneBarTabOneLineOneAlternativeOneBarTwo } } \break }
cLineTabOneLineOne = { \repeat volta 4 { \cBarTabOneLineOneRepeatOneBarOne } \alternative { { \cBarTabOneLineOneAlternativeOneBarOne } { \cBarTabOneLineOneAlternativeOneBarTwo } } }
sLineTabOneLineOne = { \repeat volta 4 { \sBarTabOneLineOneRepeatOneBarOne } \alternative { { \sBarTabOneLineOneAlternativeOneBarOne } { \sBarTabOneLineOneAlternativeOneBarTwo } } }
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

stanzaHeadings = { \sLineTabOneLineOne }

%-----------------------------------------------------------------------
% Chord Headings

chordHeadings = { \cLineTabOneLineOne }

%-----------------------------------------------------------------------

\score {
  \new StaffGroup <<
    \new Staff <<
      \clef "treble_8"

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
      \new TabVoice {
        \chordHeadings
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
