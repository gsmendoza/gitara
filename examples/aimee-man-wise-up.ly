\version "2.22.1"
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

cChordSetAm = { \chordmode { a1:m } }

cChordSetAmC = { \chordmode { a2:m c2 } }

cChordSetBbF = { \chordmode { bf2 f2 } }

cChordSetCCGE = { \chordmode { c2 g4 e4 } }

cChordSetD = { \chordmode { d1 } }

cChordSetFC = { \chordmode { f2 c2 } }

cChordSetFD = { \chordmode { f2 d2 } }


%-----------------------------------------------------------------------
% Bars

vOneBarBeforeYouSign = {  r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8 }
vTwoBarBeforeYouSign = {  <d\4>4 <d\4>4 <d\4>4 <d\4>4 }
cBarBeforeYouSign = {  \cChordSetD }

vOneBarBeganIt = {  \skip 4 <a\3 c'\2 >8 <g\3>8 \skip 4 <g\3 c'\2 >8 <g\3>8 }
vTwoBarBeganIt = {  <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarBeganIt = {  \cChordSetFC }

vOneBarItThough = {  r8 <d'\2>16( <c'\2>16) r8 <a\3>16 <c'\2>16 r8 <d'\2>16( <c'\2>16) r8 <a\3>8 }
vTwoBarItThough = {  <f\4>4 <f\4>4 <d\4>4 <d\4>4 }
cBarItThough = {  \cChordSetFD }

vOneBarFDm = {  r8 <a\3>8 <c'\2>8 <a\3>8 r8 <d'\2>8 <a\3>8 <e'\1>8 }
vTwoBarFDm = {  <f\4>4 <f\4>4 <d\4>2 }
cBarFDm = {  \cChordSetFD }

vOneBarIntro = {  <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarIntro = {  <f\4>4 <f\4>4 <c\5>4  <e\4>4 }
cBarIntro = {  \cChordSetFC }

vOneBarItsNot = {  r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>16( <a\3>16) }
vTwoBarItsNot = {  <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarItsNot = {  \cChordSetFC }

vOneBarItsNotGoingToStop = {  <g'\1>8 <a\3>8 <g'\1>16 <g'\1>16\glissando <a'\1>4 <e'\2>4 <d'\2>16( <c'\2>16) }
vTwoBarItsNotGoingToStop = {  <f\4>4 <f\4>4 <d\4>4 <d\4>4 }
cBarItsNotGoingToStop = {  \cChordSetFD }

vOneBarItsNotGoingToStopCcge = {  <g'\1>8 <g\3>8 <g'\1>16 <g'\1>16\glissando <a'\1>4 <d'\2>4 <c'\2>8 }
vTwoBarItsNotGoingToStopCcge = {  <c\5>4 <c\5>4 <g,\6>4 <e,\6>4 }
cBarItsNotGoingToStopCcge = {  \cChordSetCCGE }

vOneBarItsNotGoingToStopCcgeTwo = {  r8 <g\3>8 <e'\1>8 <g'\1>8 r8 <d'\2>4 <c'\2>8 }
vTwoBarItsNotGoingToStopCcgeTwo = {  <c\5>4 <e\4>4 <g,\6>4 <e,\6>4 }
cBarItsNotGoingToStopCcgeTwo = {  \cChordSetCCGE }

vOneBarOutro = {  <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarOutro = {  <a,\5>4 <a,\5>4 <c\5>4  <c\5>4 }
cBarOutro = {  \cChordSetAmC }

vOneBarPrepareAList = {  <e'\1>8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <a\3>16 <e'\1>16 }
vTwoBarPrepareAList = {  <a,\5>4 <a,\5>4 <a,\5>4 <a,\5>4 }
cBarPrepareAList = {  \cChordSetAm }

vOneBarSoJustGiveUp = {  r8 <g\3>8 <c'\2>8 <a\3>8 <a\3 c'\2 g'\1 f\4 >4 <c'\3 e'\2 a'\1 >4 }
vTwoBarSoJustGiveUp = {  <as,\5>4 <d\4>4 \skip 2 }
cBarSoJustGiveUp = {  \cChordSetBbF }

vOneBarTheresACure = {  r8 <d'\2>16( <c'\2>8.) <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarTheresACure = {  <f\4>4 <f\4>4 <c\5>4 <c\5>4 }
cBarTheresACure = {  \cChordSetFC }

vOneBarTilYouWiseUp = {  r8 <g\3>8 <c'\2>8 <g\3>8 <d'\2>4 <a\3>4 }
vTwoBarTilYouWiseUp = {  <as,\5>4 <d\4>4 <f\4>4 <f\4>4 }
cBarTilYouWiseUp = {  \cChordSetBbF }

vOneBarTilYouWiseUpTwo = {  r8 <g\3>8 <c'\2>8 <g\3>8 <d'\2>8 <a\3>8 r8 <c'\2>8 }
vTwoBarTilYouWiseUpTwo = {  <as,\5>4 <d\4>4 <f\4>4 <f\4>4 }
cBarTilYouWiseUpTwo = {  \cChordSetBbF }

vOneBarTilYouWiseUpThree = {  r8 <g\3>8 <c'\2>8 <a\3>8 <d'\2>8 <e'\1>8 r8 <e'\1>8 }
vTwoBarTilYouWiseUpThree = {  <as,\5>4 <d\4>4 <f\4>4 <f\4>4 }
cBarTilYouWiseUpThree = {  \cChordSetBbF }

vOneBarWhatYouThought = {  r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarWhatYouThought = {  <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarWhatYouThought = {  \cChordSetFC }

vOneBarWhenYouFirst = {  <e'\1>8 <d'\2>16( <c'\2>8) <a\3>8. <c'\2>4 <a\3>8 <c'\2>8 }
vTwoBarWhenYouFirst = {  <a,\5>4 <a,\5>8 <e\4>4 <a,\5>4 \skip 8 }
cBarWhenYouFirst = {  \cChordSetAm }

vOneBarYouGot = {  <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>16( <a\3>16) }
vTwoBarYouGot = {  <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarYouGot = {  \cChordSetFC }

vOneBarYoureSure = {  r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <e'\1>8 }
vTwoBarYoureSure = {  <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarYoureSure = {  \cChordSetFC }


%-----------------------------------------------------------------------
% Lines

vOneLineChorusOneLineOne = { \vOneBarItsNotGoingToStop \vOneBarFDm \vOneBarItsNotGoingToStop \vOneBarFDm \break }
vTwoLineChorusOneLineOne = { \vTwoBarItsNotGoingToStop \vTwoBarFDm \vTwoBarItsNotGoingToStop \vTwoBarFDm \break }
cLineChorusOneLineOne = { \cBarItsNotGoingToStop \cBarFDm \cBarItsNotGoingToStop \cBarFDm }

vOneLineIntroLineOne = { \vOneBarIntro \vOneBarIntro \vOneBarIntro \vOneBarIntro \break }
vTwoLineIntroLineOne = { \vTwoBarIntro \vTwoBarIntro \vTwoBarIntro \vTwoBarIntro \break }
cLineIntroLineOne = { \cBarIntro \cBarIntro \cBarIntro \cBarIntro }

vOneLineVerseOneLineTwo = { \vOneBarYouGot \vOneBarWhatYouThought \vOneBarWhenYouFirst \vOneBarItThough \break }
vTwoLineVerseOneLineTwo = { \vTwoBarYouGot \vTwoBarWhatYouThought \vTwoBarWhenYouFirst \vTwoBarItThough \break }
cLineVerseOneLineTwo = { \cBarYouGot \cBarWhatYouThought \cBarWhenYouFirst \cBarItThough }

vOneLineVerseOneLineOne = { \vOneBarItsNot \vOneBarWhatYouThought \vOneBarWhenYouFirst \vOneBarBeganIt \break }
vTwoLineVerseOneLineOne = { \vTwoBarItsNot \vTwoBarWhatYouThought \vTwoBarWhenYouFirst \vTwoBarBeganIt \break }
cLineVerseOneLineOne = { \cBarItsNot \cBarWhatYouThought \cBarWhenYouFirst \cBarBeganIt }

vOneLineChorusOneLineTwo = { \vOneBarItsNotGoingToStopCcge \vOneBarTilYouWiseUp \vOneBarIntro \vOneBarIntro \break }
vTwoLineChorusOneLineTwo = { \vTwoBarItsNotGoingToStopCcge \vTwoBarTilYouWiseUp \vTwoBarIntro \vTwoBarIntro \break }
cLineChorusOneLineTwo = { \cBarItsNotGoingToStopCcge \cBarTilYouWiseUp \cBarIntro \cBarIntro }

vOneLineVerseTwoLineOne = { \vOneBarYoureSure \vOneBarTheresACure \vOneBarWhenYouFirst \vOneBarBeganIt \break }
vTwoLineVerseTwoLineOne = { \vTwoBarYoureSure \vTwoBarTheresACure \vTwoBarWhenYouFirst \vTwoBarBeganIt \break }
cLineVerseTwoLineOne = { \cBarYoureSure \cBarTheresACure \cBarWhenYouFirst \cBarBeganIt }

vOneLineChorusTwoLineTwo = { \vOneBarItsNotGoingToStopCcge \vOneBarTilYouWiseUpTwo \vOneBarIntro \vOneBarIntro \break }
vTwoLineChorusTwoLineTwo = { \vTwoBarItsNotGoingToStopCcge \vTwoBarTilYouWiseUpTwo \vTwoBarIntro \vTwoBarIntro \break }
cLineChorusTwoLineTwo = { \cBarItsNotGoingToStopCcge \cBarTilYouWiseUpTwo \cBarIntro \cBarIntro }

vOneLineBridgeLineOne = { \vOneBarPrepareAList \vOneBarBeforeYouSign \break }
vTwoLineBridgeLineOne = { \vTwoBarPrepareAList \vTwoBarBeforeYouSign \break }
cLineBridgeLineOne = { \cBarPrepareAList \cBarBeforeYouSign }

vOneLineChorusThreeLineTwo = { \vOneBarItsNotGoingToStopCcge \vOneBarTilYouWiseUpThree \vOneBarItsNotGoingToStopCcgeTwo \vOneBarTilYouWiseUpThree \break }
vTwoLineChorusThreeLineTwo = { \vTwoBarItsNotGoingToStopCcge \vTwoBarTilYouWiseUpThree \vTwoBarItsNotGoingToStopCcgeTwo \vTwoBarTilYouWiseUpThree \break }
cLineChorusThreeLineTwo = { \cBarItsNotGoingToStopCcge \cBarTilYouWiseUpThree \cBarItsNotGoingToStopCcgeTwo \cBarTilYouWiseUpThree }

vOneLineChorusThreeLineThree = { \vOneBarItsNotGoingToStopCcgeTwo \vOneBarTilYouWiseUpThree \vOneBarItsNotGoingToStopCcgeTwo \vOneBarSoJustGiveUp \break }
vTwoLineChorusThreeLineThree = { \vTwoBarItsNotGoingToStopCcgeTwo \vTwoBarTilYouWiseUpThree \vTwoBarItsNotGoingToStopCcgeTwo \vTwoBarSoJustGiveUp \break }
cLineChorusThreeLineThree = { \cBarItsNotGoingToStopCcgeTwo \cBarTilYouWiseUpThree \cBarItsNotGoingToStopCcgeTwo \cBarSoJustGiveUp }

vOneLineOutroLineTwo = { \vOneBarOutro \vOneBarOutro \vOneBarOutro \vOneBarOutro \break }
vTwoLineOutroLineTwo = { \vTwoBarOutro \vTwoBarOutro \vTwoBarOutro \vTwoBarOutro \break }
cLineOutroLineTwo = { \cBarOutro \cBarOutro \cBarOutro \cBarOutro }


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

stanzaHeadings = { 
\sScoreTabOneScoreOne 
}

%-----------------------------------------------------------------------
% Chord Headings

chordHeadings = { \cScoreTabOneScoreOne }

%-----------------------------------------------------------------------

\score {
  \new StaffGroup <<
    \new Staff <<
      
      \tempo 4 = 75

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
