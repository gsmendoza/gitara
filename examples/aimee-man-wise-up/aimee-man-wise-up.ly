\version "2.12.3"
\include "english.ly"

%-----------------------------------------------------------------------
% Bars

vOneBarBeforeYouSign = { r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8 }
vTwoBarBeforeYouSign = { <d\4>4 <d\4>4 <d\4>4 <d\4>4 }

vOneBarBeganIt = { \skip 4 <a\3 c'\2 >8 <g\3>8 \skip 4 <g\3 c'\2 >8 <g\3>8 }
vTwoBarBeganIt = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }

vOneBarItThough = { r8 <d'\2>16( <c'\2>16) r8 <a\3>16 <c'\2>16 r8 <d'\2>16( <c'\2>16) r8 <a\3>8 }
vTwoBarItThough = { <f\4>4 <f\4>4 <d\4>4 <d\4>4 }

vOneBarFDm = { r8 <a\3>8 <c'\2>8 <a\3>8 r8 <d'\2>8 <a\3>8 <e'\1>8 }
vTwoBarFDm = { <f\4>4 <f\4>4 <d\4>2 }

vOneBarIntro = { <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarIntro = { <f\4>4 <f\4>4 <c\5>4  <e\4>4 }

vOneBarItsNot = { r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>16( <a\3>16) }
vTwoBarItsNot = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }

vOneBarItsNotGoingToStop = { <g'\1>8 <a\3>8 <g'\1>16 <g'\1>16\glissando <a'\1>4 <e'\2>4 <d'\2>16( <c'\2>16) }
vTwoBarItsNotGoingToStop = { <f\4>4 <f\4>4 <d\4>4 <d\4>4 }

vOneBarItsNotGoingToStopCcge = { <g'\1>8 <g\3>8 <g'\1>16 <g'\1>16\glissando <a'\1>4 <d'\2>4 <c'\2>8 }
vTwoBarItsNotGoingToStopCcge = { <c\5>4 <c\5>4 <g,\6>4 <e,\6>4 }

vOneBarItsNotGoingToStopCcgeTwo = { r8 <g\3>8 <e'\1>8 <g'\1>8 r8 <d'\2>4 <c'\2>8 }
vTwoBarItsNotGoingToStopCcgeTwo = { <c\5>4 <e\4>4 <g,\6>4 <e,\6>4 }

vOneBarOutro = { <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarOutro = { <a,\5>4 <a,\5>4 <c\5>4  <c\5>4 }

vOneBarPrepareAList = { <e'\1>8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <a\3>16 <e'\1>16 }
vTwoBarPrepareAList = { <a,\5>4 <a,\5>4 <a,\5>4 <a,\5>4 }

vOneBarSoJustGiveUp = { r8 <g\3>8 <c'\2>8 <a\3>8 <a\3 c'\2 g'\1 f\4 >4 <c'\3 e'\2 a'\1 >4 }
vTwoBarSoJustGiveUp = { <as,\5>4 <d\4>4 \skip 2 }

vOneBarTheresACure = { r8 <d'\2>16( <c'\2>8.) <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarTheresACure = { <f\4>4 <f\4>4 <c\5>4 <c\5>4 }

vOneBarTilYouWiseUp = { r8 <g\3>8 <c'\2>8 <g\3>8 <d'\2>4 <a\3>4 }
vTwoBarTilYouWiseUp = { <as,\5>4 <d\4>4 <f\4>4 <f\4>4 }

vOneBarTilYouWiseUpTwo = { r8 <g\3>8 <c'\2>8 <g\3>8 <d'\2>8 <a\3>8 r8 <c'\2>8 }
vTwoBarTilYouWiseUpTwo = { <as,\5>4 <d\4>4 <f\4>4 <f\4>4 }

vOneBarTilYouWiseUpThree = { r8 <g\3>8 <c'\2>8 <a\3>8 <d'\2>8 <e'\1>8 r8 <e'\1>8 }
vTwoBarTilYouWiseUpThree = { <as,\5>4 <d\4>4 <f\4>4 <f\4>4 }

vOneBarWhatYouThought = { r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarWhatYouThought = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }

vOneBarWhenYouFirst = { <e'\1>8 <d'\2>16( <c'\2>8) <a\3>8. <c'\2>4 <a\3>8 <c'\2>8 }
vTwoBarWhenYouFirst = { <a,\5>4 <a,\5>8 <e\4>4 <a,\5>4 \skip 8 }

vOneBarYouGot = { <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>16( <a\3>16) }
vTwoBarYouGot = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }

vOneBarYoureSure = { r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <e'\1>8 }
vTwoBarYoureSure = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }


%-----------------------------------------------------------------------
% Lines

vOneLineChorusOneLineOne = { \vOneBarItsNotGoingToStop \vOneBarFDm \vOneBarItsNotGoingToStop \vOneBarFDm \break }
vTwoLineChorusOneLineOne = { \vTwoBarItsNotGoingToStop \vTwoBarFDm \vTwoBarItsNotGoingToStop \vTwoBarFDm \break }

vOneLineIntroLineOne = { \vOneBarIntro \vOneBarIntro \vOneBarIntro \vOneBarIntro \break }
vTwoLineIntroLineOne = { \vTwoBarIntro \vTwoBarIntro \vTwoBarIntro \vTwoBarIntro \break }

vOneLineVerseOneLineTwo = { \vOneBarYouGot \vOneBarWhatYouThought \vOneBarWhenYouFirst \vOneBarItThough \break }
vTwoLineVerseOneLineTwo = { \vTwoBarYouGot \vTwoBarWhatYouThought \vTwoBarWhenYouFirst \vTwoBarItThough \break }

vOneLineTabOneScoreOneLineTwo = { \vOneBarItsNot \vOneBarWhatYouThought \vOneBarWhenYouFirst \vOneBarBeganIt \break }
vTwoLineTabOneScoreOneLineTwo = { \vTwoBarItsNot \vTwoBarWhatYouThought \vTwoBarWhenYouFirst \vTwoBarBeganIt \break }

vOneLineTabOneScoreOneLineFive = { \vOneBarItsNotGoingToStopCcge \vOneBarTilYouWiseUp \vOneBarIntro \vOneBarIntro \break }
vTwoLineTabOneScoreOneLineFive = { \vTwoBarItsNotGoingToStopCcge \vTwoBarTilYouWiseUp \vTwoBarIntro \vTwoBarIntro \break }

vOneLineTabOneScoreOneLineSix = { \vOneBarYoureSure \vOneBarTheresACure \vOneBarWhenYouFirst \vOneBarBeganIt \break }
vTwoLineTabOneScoreOneLineSix = { \vTwoBarYoureSure \vTwoBarTheresACure \vTwoBarWhenYouFirst \vTwoBarBeganIt \break }

vOneLineTabOneScoreOneLineNine = { \vOneBarItsNotGoingToStopCcge \vOneBarTilYouWiseUpTwo \vOneBarIntro \vOneBarIntro \break }
vTwoLineTabOneScoreOneLineNine = { \vTwoBarItsNotGoingToStopCcge \vTwoBarTilYouWiseUpTwo \vTwoBarIntro \vTwoBarIntro \break }

vOneLineTabOneScoreOneLineTen = { \vOneBarPrepareAList \vOneBarBeforeYouSign \break }
vTwoLineTabOneScoreOneLineTen = { \vTwoBarPrepareAList \vTwoBarBeforeYouSign \break }

vOneLineTabOneScoreOneLineTwelve = { \vOneBarItsNotGoingToStopCcge \vOneBarTilYouWiseUpThree \vOneBarItsNotGoingToStopCcgeTwo \vOneBarTilYouWiseUpThree \break }
vTwoLineTabOneScoreOneLineTwelve = { \vTwoBarItsNotGoingToStopCcge \vTwoBarTilYouWiseUpThree \vTwoBarItsNotGoingToStopCcgeTwo \vTwoBarTilYouWiseUpThree \break }

vOneLineTabOneScoreOneLineThirteen = { \vOneBarItsNotGoingToStopCcgeTwo \vOneBarTilYouWiseUpThree \vOneBarItsNotGoingToStopCcgeTwo \vOneBarSoJustGiveUp \break }
vTwoLineTabOneScoreOneLineThirteen = { \vTwoBarItsNotGoingToStopCcgeTwo \vTwoBarTilYouWiseUpThree \vTwoBarItsNotGoingToStopCcgeTwo \vTwoBarSoJustGiveUp \break }

vOneLineTabOneScoreOneLineFifteen = { \vOneBarOutro \vOneBarOutro \vOneBarOutro \vOneBarOutro \break }
vTwoLineTabOneScoreOneLineFifteen = { \vTwoBarOutro \vTwoBarOutro \vTwoBarOutro \vTwoBarOutro \break }


%-----------------------------------------------------------------------
% Scores

vOneScoreTabOneScoreOne = { \vOneLineIntroLineOne \vOneLineTabOneScoreOneLineTwo \vOneLineVerseOneLineTwo \vOneLineChorusOneLineOne \vOneLineTabOneScoreOneLineFive \vOneLineTabOneScoreOneLineSix \vOneLineVerseOneLineTwo \vOneLineChorusOneLineOne \vOneLineTabOneScoreOneLineNine \vOneLineTabOneScoreOneLineTen \vOneLineChorusOneLineOne \vOneLineTabOneScoreOneLineTwelve \vOneLineTabOneScoreOneLineThirteen \vOneLineIntroLineOne \vOneLineTabOneScoreOneLineFifteen }
vTwoScoreTabOneScoreOne = { \vTwoLineIntroLineOne \vTwoLineTabOneScoreOneLineTwo \vTwoLineVerseOneLineTwo \vTwoLineChorusOneLineOne \vTwoLineTabOneScoreOneLineFive \vTwoLineTabOneScoreOneLineSix \vTwoLineVerseOneLineTwo \vTwoLineChorusOneLineOne \vTwoLineTabOneScoreOneLineNine \vTwoLineTabOneScoreOneLineTen \vTwoLineChorusOneLineOne \vTwoLineTabOneScoreOneLineTwelve \vTwoLineTabOneScoreOneLineThirteen \vTwoLineIntroLineOne \vTwoLineTabOneScoreOneLineFifteen }


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
