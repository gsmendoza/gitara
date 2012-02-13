\version "2.12.3"
\include "english.ly"

%-----------------------------------------------------------------------
% Bars

vOneBarIntro = { <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarIntro = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }


%-----------------------------------------------------------------------
% Lines

vOneLineTabOneLineTwo = { \vOneBarIntro \vOneBarIntro \break }
vTwoLineTabOneLineTwo = { \vTwoBarIntro \vTwoBarIntro \break }


%-----------------------------------------------------------------------
% Voices

vOne = { \vOneLineTabOneLineTwo }

vTwo = { \vTwoLineTabOneLineTwo }


\score {
  \new StaffGroup <<
    \new Staff <<
      \tempo 4 = 75
      \clef "treble_8"

      \new Voice {
        \voiceOne
        \vOne
      }
      \new Voice {
        \voiceTwo
        \vTwo
      }
    >>

    \new TabStaff <<
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
    \tempo 4 = 75
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
