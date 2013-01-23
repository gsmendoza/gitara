\version "2.12.3"
\include "english.ly"

\paper {
 indent = #0
}

\header {
  title = "Wise Up"
  composer = "Aimee Mann"
  arranger = "Arranged by George Mendoza"
  instrument = "Guitar (capo on second fret)"
}

%-----------------------------------------------------------------------
% Chord Sets

cChordSetAm = { r4-"Am" r r r }
cChordSetAmC = { r4-"Am" r r-"C" r }
cChordSetBbF = { r4-"Bb" r r-"F" r }
cChordSetCCGE = { r4-"C" r r-"G" r-"E" }
cChordSetD = { r4-"D" r r r }
cChordSetFC = { r4-"F" r r-"C" r }
cChordSetFD = { r4-"F" r r-"D" r }

%-----------------------------------------------------------------------
% Bars

vOneBarBeforeYouSign = {  r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8 }
vTwoBarBeforeYouSign = {  <d\4>4 <d\4>4 <d\4>4 <d\4>4 }
cBarBeforeYouSign = {  \cChordSetD }
sBarBeforeYouSign = {  r1 }

vOneBarBeganIt = {  \skip 4 <a\3 c'\2 >8 <g\3>8 \skip 4 <g\3 c'\2 >8 <g\3>8 }
vTwoBarBeganIt = {  <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarBeganIt = {  \cChordSetFC }
sBarBeganIt = {  r1 }

vOneBarItThough = {  r8 <d'\2>16( <c'\2>16) r8 <a\3>16 <c'\2>16 r8 <d'\2>16( <c'\2>16) r8 <a\3>8 }
vTwoBarItThough = {  <f\4>4 <f\4>4 <d\4>4 <d\4>4 }
cBarItThough = {  \cChordSetFD }
sBarItThough = {  r1 }

vOneBarFDm = {  r8 <a\3>8 <c'\2>8 <a\3>8 r8 <d'\2>8 <a\3>8 <e'\1>8 }
vTwoBarFDm = {  <f\4>4 <f\4>4 <d\4>2 }
cBarFDm = {  \cChordSetFD }
sBarFDm = {  r1 }

vOneBarIntro = {  <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarIntro = {  <f\4>4 <f\4>4 <c\5>4  <e\4>4 }
cBarIntro = {  \cChordSetFC }
sBarIntro = {  r1 }

vOneBarItsNot = {  r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>16( <a\3>16) }
vTwoBarItsNot = {  <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarItsNot = {  \cChordSetFC }
sBarItsNot = {  r1 }

vOneBarItsNotGoingToStop = {  <g'\1>8 <a\3>8 <g'\1>16 <g'\1>16\glissando <a'\1>4 <e'\2>4 <d'\2>16( <c'\2>16) }
vTwoBarItsNotGoingToStop = {  <f\4>4 <f\4>4 <d\4>4 <d\4>4 }
cBarItsNotGoingToStop = {  \cChordSetFD }
sBarItsNotGoingToStop = {  r1 }

vOneBarItsNotGoingToStopCcge = {  <g'\1>8 <g\3>8 <g'\1>16 <g'\1>16\glissando <a'\1>4 <d'\2>4 <c'\2>8 }
vTwoBarItsNotGoingToStopCcge = {  <c\5>4 <c\5>4 <g,\6>4 <e,\6>4 }
cBarItsNotGoingToStopCcge = {  \cChordSetCCGE }
sBarItsNotGoingToStopCcge = {  r1 }

vOneBarItsNotGoingToStopCcgeTwo = {  r8 <g\3>8 <e'\1>8 <g'\1>8 r8 <d'\2>4 <c'\2>8 }
vTwoBarItsNotGoingToStopCcgeTwo = {  <c\5>4 <e\4>4 <g,\6>4 <e,\6>4 }
cBarItsNotGoingToStopCcgeTwo = {  \cChordSetCCGE }
sBarItsNotGoingToStopCcgeTwo = {  r1 }

vOneBarOutro = {  <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarOutro = {  <a,\5>4 <a,\5>4 <c\5>4  <c\5>4 }
cBarOutro = {  \cChordSetAmC }
sBarOutro = {  r1 }

vOneBarPrepareAList = {  <e'\1>8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <a\3>16 <e'\1>16 }
vTwoBarPrepareAList = {  <a,\5>4 <a,\5>4 <a,\5>4 <a,\5>4 }
cBarPrepareAList = {  \cChordSetAm }
sBarPrepareAList = {  r1 }

vOneBarSoJustGiveUp = {  r8 <g\3>8 <c'\2>8 <a\3>8 <a\3 c'\2 g'\1 f\4 >4 <c'\3 e'\2 a'\1 >4 }
vTwoBarSoJustGiveUp = {  <as,\5>4 <d\4>4 \skip 2 }
cBarSoJustGiveUp = {  \cChordSetBbF }
sBarSoJustGiveUp = {  r1 }

vOneBarTheresACure = {  r8 <d'\2>16( <c'\2>8.) <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarTheresACure = {  <f\4>4 <f\4>4 <c\5>4 <c\5>4 }
cBarTheresACure = {  \cChordSetFC }
sBarTheresACure = {  r1 }

vOneBarTilYouWiseUp = {  r8 <g\3>8 <c'\2>8 <g\3>8 <d'\2>4 <a\3>4 }
vTwoBarTilYouWiseUp = {  <as,\5>4 <d\4>4 <f\4>4 <f\4>4 }
cBarTilYouWiseUp = {  \cChordSetBbF }
sBarTilYouWiseUp = {  r1 }

vOneBarTilYouWiseUpTwo = {  r8 <g\3>8 <c'\2>8 <g\3>8 <d'\2>8 <a\3>8 r8 <c'\2>8 }
vTwoBarTilYouWiseUpTwo = {  <as,\5>4 <d\4>4 <f\4>4 <f\4>4 }
cBarTilYouWiseUpTwo = {  \cChordSetBbF }
sBarTilYouWiseUpTwo = {  r1 }

vOneBarTilYouWiseUpThree = {  r8 <g\3>8 <c'\2>8 <a\3>8 <d'\2>8 <e'\1>8 r8 <e'\1>8 }
vTwoBarTilYouWiseUpThree = {  <as,\5>4 <d\4>4 <f\4>4 <f\4>4 }
cBarTilYouWiseUpThree = {  \cChordSetBbF }
sBarTilYouWiseUpThree = {  r1 }

vOneBarWhatYouThought = {  r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarWhatYouThought = {  <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarWhatYouThought = {  \cChordSetFC }
sBarWhatYouThought = {  r1 }

vOneBarWhenYouFirst = {  <e'\1>8 <d'\2>16( <c'\2>8) <a\3>8. <c'\2>4 <a\3>8 <c'\2>8 }
vTwoBarWhenYouFirst = {  <a,\5>4 <a,\5>8 <e\4>4 <a,\5>4 \skip 8 }
cBarWhenYouFirst = {  \cChordSetAm }
sBarWhenYouFirst = {  r1 }

vOneBarYouGot = {  <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>16( <a\3>16) }
vTwoBarYouGot = {  <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarYouGot = {  \cChordSetFC }
sBarYouGot = {  r1 }

vOneBarYoureSure = {  r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <e'\1>8 }
vTwoBarYoureSure = {  <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarYoureSure = {  \cChordSetFC }
sBarYoureSure = {  r1 }


%-----------------------------------------------------------------------
% Lines

vOneLineChorusOneLineOne = { \vOneBarItsNotGoingToStop \vOneBarFDm \vOneBarItsNotGoingToStop \vOneBarFDm \break }
vTwoLineChorusOneLineOne = { \vTwoBarItsNotGoingToStop \vTwoBarFDm \vTwoBarItsNotGoingToStop \vTwoBarFDm \break }
cLineChorusOneLineOne = { \cBarItsNotGoingToStop \cBarFDm \cBarItsNotGoingToStop \cBarFDm }
sLineChorusOneLineOne = { \sBarItsNotGoingToStop \sBarFDm \sBarItsNotGoingToStop \sBarFDm }

vOneLineIntroLineOne = { \vOneBarIntro \vOneBarIntro \vOneBarIntro \vOneBarIntro \break }
vTwoLineIntroLineOne = { \vTwoBarIntro \vTwoBarIntro \vTwoBarIntro \vTwoBarIntro \break }
cLineIntroLineOne = { \cBarIntro \cBarIntro \cBarIntro \cBarIntro }
sLineIntroLineOne = { \sBarIntro \sBarIntro \sBarIntro \sBarIntro }

vOneLineVerseOneLineTwo = { \vOneBarYouGot \vOneBarWhatYouThought \vOneBarWhenYouFirst \vOneBarItThough \break }
vTwoLineVerseOneLineTwo = { \vTwoBarYouGot \vTwoBarWhatYouThought \vTwoBarWhenYouFirst \vTwoBarItThough \break }
cLineVerseOneLineTwo = { \cBarYouGot \cBarWhatYouThought \cBarWhenYouFirst \cBarItThough }
sLineVerseOneLineTwo = { \sBarYouGot \sBarWhatYouThought \sBarWhenYouFirst \sBarItThough }

vOneLineVerseOneLineOne = { \vOneBarItsNot \vOneBarWhatYouThought \vOneBarWhenYouFirst \vOneBarBeganIt \break }
vTwoLineVerseOneLineOne = { \vTwoBarItsNot \vTwoBarWhatYouThought \vTwoBarWhenYouFirst \vTwoBarBeganIt \break }
cLineVerseOneLineOne = { \cBarItsNot \cBarWhatYouThought \cBarWhenYouFirst \cBarBeganIt }
sLineVerseOneLineOne = { \sBarItsNot \sBarWhatYouThought \sBarWhenYouFirst \sBarBeganIt }

vOneLineChorusOneLineTwo = { \vOneBarItsNotGoingToStopCcge \vOneBarTilYouWiseUp \vOneBarIntro \vOneBarIntro \break }
vTwoLineChorusOneLineTwo = { \vTwoBarItsNotGoingToStopCcge \vTwoBarTilYouWiseUp \vTwoBarIntro \vTwoBarIntro \break }
cLineChorusOneLineTwo = { \cBarItsNotGoingToStopCcge \cBarTilYouWiseUp \cBarIntro \cBarIntro }
sLineChorusOneLineTwo = { \sBarItsNotGoingToStopCcge \sBarTilYouWiseUp \sBarIntro \sBarIntro }

vOneLineVerseTwoLineOne = { \vOneBarYoureSure \vOneBarTheresACure \vOneBarWhenYouFirst \vOneBarBeganIt \break }
vTwoLineVerseTwoLineOne = { \vTwoBarYoureSure \vTwoBarTheresACure \vTwoBarWhenYouFirst \vTwoBarBeganIt \break }
cLineVerseTwoLineOne = { \cBarYoureSure \cBarTheresACure \cBarWhenYouFirst \cBarBeganIt }
sLineVerseTwoLineOne = { \sBarYoureSure \sBarTheresACure \sBarWhenYouFirst \sBarBeganIt }

vOneLineChorusTwoLineTwo = { \vOneBarItsNotGoingToStopCcge \vOneBarTilYouWiseUpTwo \vOneBarIntro \vOneBarIntro \break }
vTwoLineChorusTwoLineTwo = { \vTwoBarItsNotGoingToStopCcge \vTwoBarTilYouWiseUpTwo \vTwoBarIntro \vTwoBarIntro \break }
cLineChorusTwoLineTwo = { \cBarItsNotGoingToStopCcge \cBarTilYouWiseUpTwo \cBarIntro \cBarIntro }
sLineChorusTwoLineTwo = { \sBarItsNotGoingToStopCcge \sBarTilYouWiseUpTwo \sBarIntro \sBarIntro }

vOneLineBridgeLineOne = { \vOneBarPrepareAList \vOneBarBeforeYouSign \break }
vTwoLineBridgeLineOne = { \vTwoBarPrepareAList \vTwoBarBeforeYouSign \break }
cLineBridgeLineOne = { \cBarPrepareAList \cBarBeforeYouSign }
sLineBridgeLineOne = { \sBarPrepareAList \sBarBeforeYouSign }

vOneLineChorusThreeLineTwo = { \vOneBarItsNotGoingToStopCcge \vOneBarTilYouWiseUpThree \vOneBarItsNotGoingToStopCcgeTwo \vOneBarTilYouWiseUpThree \break }
vTwoLineChorusThreeLineTwo = { \vTwoBarItsNotGoingToStopCcge \vTwoBarTilYouWiseUpThree \vTwoBarItsNotGoingToStopCcgeTwo \vTwoBarTilYouWiseUpThree \break }
cLineChorusThreeLineTwo = { \cBarItsNotGoingToStopCcge \cBarTilYouWiseUpThree \cBarItsNotGoingToStopCcgeTwo \cBarTilYouWiseUpThree }
sLineChorusThreeLineTwo = { \sBarItsNotGoingToStopCcge \sBarTilYouWiseUpThree \sBarItsNotGoingToStopCcgeTwo \sBarTilYouWiseUpThree }

vOneLineChorusThreeLineThree = { \vOneBarItsNotGoingToStopCcgeTwo \vOneBarTilYouWiseUpThree \vOneBarItsNotGoingToStopCcgeTwo \vOneBarSoJustGiveUp \break }
vTwoLineChorusThreeLineThree = { \vTwoBarItsNotGoingToStopCcgeTwo \vTwoBarTilYouWiseUpThree \vTwoBarItsNotGoingToStopCcgeTwo \vTwoBarSoJustGiveUp \break }
cLineChorusThreeLineThree = { \cBarItsNotGoingToStopCcgeTwo \cBarTilYouWiseUpThree \cBarItsNotGoingToStopCcgeTwo \cBarSoJustGiveUp }
sLineChorusThreeLineThree = { \sBarItsNotGoingToStopCcgeTwo \sBarTilYouWiseUpThree \sBarItsNotGoingToStopCcgeTwo \sBarSoJustGiveUp }

vOneLineOutroLineTwo = { \vOneBarOutro \vOneBarOutro \vOneBarOutro \vOneBarOutro \break }
vTwoLineOutroLineTwo = { \vTwoBarOutro \vTwoBarOutro \vTwoBarOutro \vTwoBarOutro \break }
cLineOutroLineTwo = { \cBarOutro \cBarOutro \cBarOutro \cBarOutro }
sLineOutroLineTwo = { \sBarOutro \sBarOutro \sBarOutro \sBarOutro }


%-----------------------------------------------------------------------
% Stanzas

vOneStanzaIntro = { \vOneLineIntroLineOne }
vTwoStanzaIntro = { \vTwoLineIntroLineOne }
cStanzaIntro = { \cLineIntroLineOne }
sStanzaIntro = { r1^"Intro" r1 r1 r1 }

vOneStanzaVerseOne = { \vOneLineVerseOneLineOne \vOneLineVerseOneLineTwo }
vTwoStanzaVerseOne = { \vTwoLineVerseOneLineOne \vTwoLineVerseOneLineTwo }
cStanzaVerseOne = { \cLineVerseOneLineOne \cLineVerseOneLineTwo }
sStanzaVerseOne = { r1^"Verse 1" r1 r1 r1 r1 r1 r1 r1 }

vOneStanzaChorusOne = { \vOneLineChorusOneLineOne \vOneLineChorusOneLineTwo }
vTwoStanzaChorusOne = { \vTwoLineChorusOneLineOne \vTwoLineChorusOneLineTwo }
cStanzaChorusOne = { \cLineChorusOneLineOne \cLineChorusOneLineTwo }
sStanzaChorusOne = { r1^"Chorus 1" r1 r1 r1 r1 r1 r1 r1 }

vOneStanzaVerseTwo = { \vOneLineVerseTwoLineOne \vOneLineVerseOneLineTwo }
vTwoStanzaVerseTwo = { \vTwoLineVerseTwoLineOne \vTwoLineVerseOneLineTwo }
cStanzaVerseTwo = { \cLineVerseTwoLineOne \cLineVerseOneLineTwo }
sStanzaVerseTwo = { r1^"Verse 2" r1 r1 r1 r1 r1 r1 r1 }

vOneStanzaChorusTwo = { \vOneLineChorusOneLineOne \vOneLineChorusTwoLineTwo }
vTwoStanzaChorusTwo = { \vTwoLineChorusOneLineOne \vTwoLineChorusTwoLineTwo }
cStanzaChorusTwo = { \cLineChorusOneLineOne \cLineChorusTwoLineTwo }
sStanzaChorusTwo = { r1^"Chorus 2" r1 r1 r1 r1 r1 r1 r1 }

vOneStanzaBridge = { \vOneLineBridgeLineOne }
vTwoStanzaBridge = { \vTwoLineBridgeLineOne }
cStanzaBridge = { \cLineBridgeLineOne }
sStanzaBridge = { r1^"Bridge" r1 }

vOneStanzaChorusThree = { \vOneLineChorusOneLineOne \vOneLineChorusThreeLineTwo \vOneLineChorusThreeLineThree }
vTwoStanzaChorusThree = { \vTwoLineChorusOneLineOne \vTwoLineChorusThreeLineTwo \vTwoLineChorusThreeLineThree }
cStanzaChorusThree = { \cLineChorusOneLineOne \cLineChorusThreeLineTwo \cLineChorusThreeLineThree }
sStanzaChorusThree = { r1^"Chorus 3" r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 }

vOneStanzaOutro = { \vOneLineIntroLineOne \vOneLineOutroLineTwo }
vTwoStanzaOutro = { \vTwoLineIntroLineOne \vTwoLineOutroLineTwo }
cStanzaOutro = { \cLineIntroLineOne \cLineOutroLineTwo }
sStanzaOutro = { r1^"Outro" r1 r1 r1 r1 r1 r1 r1 }


%-----------------------------------------------------------------------
% Scores

vOneScoreTabOneScoreOne = { \vOneStanzaIntro \vOneStanzaVerseOne \vOneStanzaChorusOne \vOneStanzaVerseTwo \vOneStanzaChorusTwo \vOneStanzaBridge \vOneStanzaChorusThree \vOneStanzaOutro }
vTwoScoreTabOneScoreOne = { \vTwoStanzaIntro \vTwoStanzaVerseOne \vTwoStanzaChorusOne \vTwoStanzaVerseTwo \vTwoStanzaChorusTwo \vTwoStanzaBridge \vTwoStanzaChorusThree \vTwoStanzaOutro }
cScoreTabOneScoreOne = { \cStanzaIntro \cStanzaVerseOne \cStanzaChorusOne \cStanzaVerseTwo \cStanzaChorusTwo \cStanzaBridge \cStanzaChorusThree \cStanzaOutro }
sScoreTabOneScoreOne = { \sStanzaIntro \sStanzaVerseOne \sStanzaChorusOne \sStanzaVerseTwo \sStanzaChorusTwo \sStanzaBridge \sStanzaChorusThree \sStanzaOutro }


%-----------------------------------------------------------------------
% Voices

vOne = {
  \transposition d''
  \vOneScoreTabOneScoreOne
}

vTwo = {
  \transposition d'
  \vTwoScoreTabOneScoreOne
}


%-----------------------------------------------------------------------
% Stanza Headings

stanzaHeadings = { \sScoreTabOneScoreOne }

%-----------------------------------------------------------------------
% Chord Headings

chordHeadings = { \cScoreTabOneScoreOne }

%-----------------------------------------------------------------------

\score {
  \new StaffGroup <<
    \new Staff <<
      
      \tempo 4 = 75

      \clef "treble_8"

      \new Voice \with { \remove Rest_engraver } {
        \stanzaHeadings
      }

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