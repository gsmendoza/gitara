\version "2.12.3"
\include "english.ly"

%-----------------------------------------------------------------------
% Bars

vOneBarBeganIt = { \skip 4 <a\3 c'\2 >8 <g\3>8 \skip 4 <g\3 c'\2 >8 <g\3>8 }
vTwoBarBeganIt = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }

vOneBarItsNot = { r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>16( <a\3>16) }
vTwoBarItsNot = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }

vOneBarItThough = { r8 <d'\2>16( <c'\2>16) r8 <a\3>16 <c'\2>16 r8 <d'\2>16( <c'\2>16) r8 <a\3>8 }
vTwoBarItThough = { <f\4>4 <f\4>4 <d\4>4 <d\4>4 }

vOneBarWhatYouThought = { r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarWhatYouThought = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }

vOneBarWhenYouFirst = { <e'\1>8 <d'\2>16( <c'\2>8) <a\3>8. <c'\2>4 <a\3>8 <c'\2>8 }
vTwoBarWhenYouFirst = { <a,\5>4 <a,\5>8 <e\4>4 <a,\5>4 \skip 8 }

vOneBarYouGot = { <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>16( <a\3>16) }
vTwoBarYouGot = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }


%-----------------------------------------------------------------------
% Lines

vOneLineVerseOneLineTwo = { \vOneBarYouGot \vOneBarWhatYouThought \vOneBarWhenYouFirst \vOneBarItThough \break }
vTwoLineVerseOneLineTwo = { \vTwoBarYouGot \vTwoBarWhatYouThought \vTwoBarWhenYouFirst \vTwoBarItThough \break }

vOneLineVerseOneLineOne = { \vOneBarItsNot \vOneBarWhatYouThought \vOneBarWhenYouFirst \vOneBarBeganIt \break }
vTwoLineVerseOneLineOne = { \vTwoBarItsNot \vTwoBarWhatYouThought \vTwoBarWhenYouFirst \vTwoBarBeganIt \break }


%-----------------------------------------------------------------------
% Stanzas

vOneStanzaVerseOne = { \vOneLineVerseOneLineOne \vOneLineVerseOneLineTwo }
vTwoStanzaVerseOne = { \vTwoLineVerseOneLineOne \vTwoLineVerseOneLineTwo }


%-----------------------------------------------------------------------
% Scores

vOneScoreTabOneScoreOne = { \vOneStanzaVerseOne }
vTwoScoreTabOneScoreOne = { \vTwoStanzaVerseOne }


%-----------------------------------------------------------------------
% Voices

vOne = { \vOneScoreTabOneScoreOne }

vTwo = { \vTwoScoreTabOneScoreOne }


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
