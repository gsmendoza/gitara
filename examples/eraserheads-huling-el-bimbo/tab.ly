\version "2.12.3"
\include "english.ly"

\paper {
 indent = #0
}

\header {
  title = "Huling El Bimbo"
  composer = "Eraserheads"
  arranger = "Arranged by George Mendoza"
  instrument = "Guitar (capo on first fret)"
}

%-----------------------------------------------------------------------
% Chord Sets

cChordSetG = { r1-"G" }
cChordSetGEight = { r8-"G" }
cChordSetC = { r1-"C" }
cChordSetASeven = { r1-"A7" }
cChordSetEm = { r1-"Em" }
cChordSetD = { r1-"D" }

%-----------------------------------------------------------------------
% Bars

vOneBarVerseLineOneBarOne = { \partial 8 <g\3>8 }
vTwoBarVerseLineOneBarOne = { \partial 8 r8 }
cBarVerseLineOneBarOne = { \partial 8 \cChordSetGEight }
sBarVerseLineOneBarOne = { \partial 8 r8^"Verse" }

vOneBarVerseLineOneBarTwo = {  <a\3>16\glissando <b\3>16 <b\3>4 r16 <a\3>16\glissando <b\3>4. <a\3>16( <g\3>16) }
vTwoBarVerseLineOneBarTwo = {  r1 }
cBarVerseLineOneBarTwo = {  \cChordSetG }
sBarVerseLineOneBarTwo = {  r1 }

vOneBarVerseLineOneBarThree = {  <a\3>8( <g\3>4) <cs'\2>4 <g\3>4. }
vTwoBarVerseLineOneBarThree = {  \skip 8 r8 <e\4>4 <a,\5>4 <e\4>8 <b,\5>8 }
cBarVerseLineOneBarThree = {  \cChordSetASeven }
sBarVerseLineOneBarThree = {  r1 }

vOneBarVerseLineOneBarFour = {  r4 <g\3>8 <g\3>8 <g\3>8 <a\3>8 <c'\2>8 <b~\2>8 }
vTwoBarVerseLineOneBarFour = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarVerseLineOneBarFour = {  \cChordSetC }
sBarVerseLineOneBarFour = {  r1 }

vOneBarVerseLineOneBarFive = {  <b\2>8 <g\3>8 <b\2>8 <b\2>16 <g\3>16 \skip 16 <b\2>16 <g\3>16 \skip 16 <b\2>16 <g\3>16 \skip 8 }
vTwoBarVerseLineOneBarFive = {  <g,\6>4 <d\4>4 <d\4>16 \skip 16 \skip 16 <d\4>16 \skip 16 \skip 16 <d\4>8 }
cBarVerseLineOneBarFive = {  \cChordSetG }
sBarVerseLineOneBarFive = {  r1 }

vOneBarVerseLineTwoBarOne = {  r8 <g\3>8 <b\2>8 <b\2>16 <b\2>8 <b\2>16( <d'\2>8) <e'\1>4 }
vTwoBarVerseLineTwoBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarVerseLineTwoBarOne = {  \cChordSetG }
sBarVerseLineTwoBarOne = {  r1 }

vOneBarVerseLineTwoBarTwo = {  <a\3>16( <g\3>16)( <a\3>4) <cs'\2>4 <a\3>4 <b\2>8 }
vTwoBarVerseLineTwoBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4 }
cBarVerseLineTwoBarTwo = {  \cChordSetASeven }
sBarVerseLineTwoBarTwo = {  r1 }

vOneBarVerseLineTwoBarThree = {  <c'\2>4. <d'\2>4 <c'\2>4 <b~\2>8 }
vTwoBarVerseLineTwoBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarVerseLineTwoBarThree = {  \cChordSetC }
sBarVerseLineTwoBarThree = {  r1 }

vOneBarVerseLineTwoBarFour = {  <b\2>8 <g\3>4 <g\3>4 <b\2>8 <b\2>8 <c'\2>8 }
vTwoBarVerseLineTwoBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarVerseLineTwoBarFour = {  \cChordSetG }
sBarVerseLineTwoBarFour = {  r1 }

vOneBarVerseLineThreeBarOne = {  <d'\2>4. <d'\2>4 <d'\2>4 <cs'~\2>8 }
vTwoBarVerseLineThreeBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarVerseLineThreeBarOne = {  \cChordSetG }
sBarVerseLineThreeBarOne = {  r1 }

vOneBarVerseLineThreeBarTwo = {  <cs'\2>8 <a\3>4 <a\3>4 <a\3>4 <b\2>8 }
vTwoBarVerseLineThreeBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4 }
cBarVerseLineThreeBarTwo = {  \cChordSetASeven }
sBarVerseLineThreeBarTwo = {  r1 }

vOneBarVerseLineThreeBarThree = {  <c'\2>4 <c'\2>8 <d'\2>4 <e'\1>4 <b~\2>8 }
vTwoBarVerseLineThreeBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarVerseLineThreeBarThree = {  \cChordSetC }
sBarVerseLineThreeBarThree = {  r1 }

vOneBarVerseLineThreeBarFour = {  <b\2>8 <d'\2>4 <d'\2>4 <b\2>16 <a\3>8 <g\3>16( <a\3>8) }
vTwoBarVerseLineThreeBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarVerseLineThreeBarFour = {  \cChordSetG }
sBarVerseLineThreeBarFour = {  r1 }

vOneBarVerseLineFourBarOne = {  <b\2>4. <b\2>4 <b\2>16 <b\2>16 r16 <a\3>16 <b\2>8 }
vTwoBarVerseLineFourBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarVerseLineFourBarOne = {  \cChordSetG }
sBarVerseLineFourBarOne = {  r1 }

vOneBarVerseLineFourBarTwo = {  <a\3>16( <g\3>16) <e\4>4 <cs'\2>4 <g\3>16 <g\3>16 r16 <g\3>16 <g\3>8 }
vTwoBarVerseLineFourBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4 }
cBarVerseLineFourBarTwo = {  \cChordSetASeven }
sBarVerseLineFourBarTwo = {  r1 }

vOneBarVerseLineFourBarThree = {  <g\3>4. <g\3>4 <a\3>8 <c'\2>8 <b~\2>8 }
vTwoBarVerseLineFourBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarVerseLineFourBarThree = {  \cChordSetC }
sBarVerseLineFourBarThree = {  r1 }

vOneBarVerseLineFourBarFour = {  <b\2>8 <g\3>4 <g\3>4 <g\3>4. }
vTwoBarVerseLineFourBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <g,\6>8 <fs,\6>8 }
cBarVerseLineFourBarFour = {  \cChordSetG }
sBarVerseLineFourBarFour = {  r1 }

vOneBarRefrainLineOneBarOne = {  r4 <g\3>8 <g\3>8 <g\3>8 <g\3>8 <e'\1>8 <d'~\2>8 }
vTwoBarRefrainLineOneBarOne = {  <e,\6>4 <e\4>4 <e,\6>4 <e\4>4 }
cBarRefrainLineOneBarOne = {  \cChordSetEm }
sBarRefrainLineOneBarOne = {  r1^"Refrain" }

vOneBarRefrainLineOneBarTwo = {  <d'\2>8 <b\2>4 <a\3>4 <a\3>4 <b\2>8 }
vTwoBarRefrainLineOneBarTwo = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarRefrainLineOneBarTwo = {  \cChordSetG }
sBarRefrainLineOneBarTwo = {  r1 }

vOneBarRefrainLineOneBarThree = {  <c'\2>4 <c'\2>8 <d'\2>4 <g\3>8( <a\3>8) <b~\2>8 }
vTwoBarRefrainLineOneBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarRefrainLineOneBarThree = {  \cChordSetC }
sBarRefrainLineOneBarThree = {  r1 }

vOneBarRefrainLineOneBarFour = {  <b\2>8 <a\3>4 <a\3>4 <a\3>4. }
vTwoBarRefrainLineOneBarFour = {  <a,\5>4 <d\4>4 <a,\5>4 <g,\6>8 <fs,\6>8 }
cBarRefrainLineOneBarFour = {  \cChordSetD }
sBarRefrainLineOneBarFour = {  r1 }

vOneBarRefrainLineTwoBarOne = {  r4 <g\3>8 <g\3>8 <g\3>8 <g\3>8 <e'\1>8 <d'~\2>8 }
vTwoBarRefrainLineTwoBarOne = {  <e,\6>4 <e\4>4 <e,\6>4 <e\4>4 }
cBarRefrainLineTwoBarOne = {  \cChordSetEm }
sBarRefrainLineTwoBarOne = {  r1 }

vOneBarRefrainLineTwoBarTwo = {  <d'\2>8 <b\2>4 <a\3>4 <a\3>4 <b\2>8 }
vTwoBarRefrainLineTwoBarTwo = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarRefrainLineTwoBarTwo = {  \cChordSetG }
sBarRefrainLineTwoBarTwo = {  r1 }

vOneBarRefrainLineTwoBarThree = {  <c'\2>4 <c'\2>8 <d'\2>4 <e'\1>4 <e'~\1>8 }
vTwoBarRefrainLineTwoBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarRefrainLineTwoBarThree = {  \cChordSetC }
sBarRefrainLineTwoBarThree = {  r1 }

vOneBarRefrainLineTwoBarFour = {  <e'\1>8 <d'\2>4 <d'\2>4 <d'\2>4 <d'\2>8 }
vTwoBarRefrainLineTwoBarFour = {  <a,\5>4 <d\4>4 <a,\5>4 <d\4>4 }
cBarRefrainLineTwoBarFour = {  \cChordSetD }
sBarRefrainLineTwoBarFour = {  r1 }

vOneBarRefrainLineTwoBarFive = {  <a\3 d'\2 >8 <a\3 d'\2 >8 <a\3 d'\2 >8 <a\3 d'\2 >8 <a\3 d'\2 >8 <b\2>8 <b\2>8 <c'\2>8 }
vTwoBarRefrainLineTwoBarFive = {  <d\4>8 <d\4>8 <d\4>8 <d\4>8 <d\4>8 \skip 8 \skip 8 \skip 8 }
cBarRefrainLineTwoBarFive = {  \cChordSetD }
sBarRefrainLineTwoBarFive = {  r1 }

vOneBarChorusLineOneBarOne = {  <d'\2>4. <g'\1>4 <d'\2>4 <cs'~\2>8 }
vTwoBarChorusLineOneBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarChorusLineOneBarOne = {  \cChordSetG }
sBarChorusLineOneBarOne = {  r1^"Chorus" }

vOneBarChorusLineOneBarTwo = {  <cs'\2>4 <g'\1>8 <g'\1>4 <cs'\2>4 <c'~\2>8 }
vTwoBarChorusLineOneBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4 }
cBarChorusLineOneBarTwo = {  \cChordSetASeven }
sBarChorusLineOneBarTwo = {  r1 }

vOneBarChorusLineOneBarThree = {  <c'\2>4. <d'\2>4 <e'\1>4 <b~\2>8 }
vTwoBarChorusLineOneBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarChorusLineOneBarThree = {  \cChordSetC }
sBarChorusLineOneBarThree = {  r1 }

vOneBarChorusLineOneBarFour = {  <b\2>8 <d'\2>4 <d'\2>4 <b\2>8 <b\2>8 <c'\2>8 }
vTwoBarChorusLineOneBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarChorusLineOneBarFour = {  \cChordSetG }
sBarChorusLineOneBarFour = {  r1 }

vOneBarChorusLineTwoBarOne = {  <d'\2>4. <g'\1>4 <d'\2>4 <cs'~\2>8 }
vTwoBarChorusLineTwoBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarChorusLineTwoBarOne = {  \cChordSetG }
sBarChorusLineTwoBarOne = {  r1 }

vOneBarChorusLineTwoBarTwo = {  <cs'\2>4 <g'\1>8 <g'\1>4 <cs'\2>4 <c'~\2>8 }
vTwoBarChorusLineTwoBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4 }
cBarChorusLineTwoBarTwo = {  \cChordSetASeven }
sBarChorusLineTwoBarTwo = {  r1 }

vOneBarChorusLineTwoBarThree = {  <c'\2>4. <d'\2>4 <c'\2>4 <b~\2>8 }
vTwoBarChorusLineTwoBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarChorusLineTwoBarThree = {  \cChordSetC }
sBarChorusLineTwoBarThree = {  r1 }

vOneBarChorusLineTwoBarFour = {  <b\2>8 <g\3>4 <g\3>4 <g\3>4 <g\3>8 }
vTwoBarChorusLineTwoBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarChorusLineTwoBarFour = {  \cChordSetG }
sBarChorusLineTwoBarFour = {  r1 }

vOneBarChorusLineTwoBarFive = {  <g\3 d'\2 g'\1 >1 }
vTwoBarChorusLineTwoBarFive = {  <g,\6 b,\5 d\4 >1 }
cBarChorusLineTwoBarFive = {  \cChordSetG }
sBarChorusLineTwoBarFive = {  r1 }


%-----------------------------------------------------------------------
% Lines

vOneLineVerseLineOne = { \vOneBarVerseLineOneBarOne \vOneBarVerseLineOneBarTwo \vOneBarVerseLineOneBarThree \vOneBarVerseLineOneBarFour \vOneBarVerseLineOneBarFive \break }
vTwoLineVerseLineOne = { \vTwoBarVerseLineOneBarOne \vTwoBarVerseLineOneBarTwo \vTwoBarVerseLineOneBarThree \vTwoBarVerseLineOneBarFour \vTwoBarVerseLineOneBarFive \break }
cLineVerseLineOne = { \cBarVerseLineOneBarOne \cBarVerseLineOneBarTwo \cBarVerseLineOneBarThree \cBarVerseLineOneBarFour \cBarVerseLineOneBarFive }
sLineVerseLineOne = { \sBarVerseLineOneBarOne \sBarVerseLineOneBarTwo \sBarVerseLineOneBarThree \sBarVerseLineOneBarFour \sBarVerseLineOneBarFive }

vOneLineVerseLineTwo = { \vOneBarVerseLineTwoBarOne \vOneBarVerseLineTwoBarTwo \vOneBarVerseLineTwoBarThree \vOneBarVerseLineTwoBarFour \break }
vTwoLineVerseLineTwo = { \vTwoBarVerseLineTwoBarOne \vTwoBarVerseLineTwoBarTwo \vTwoBarVerseLineTwoBarThree \vTwoBarVerseLineTwoBarFour \break }
cLineVerseLineTwo = { \cBarVerseLineTwoBarOne \cBarVerseLineTwoBarTwo \cBarVerseLineTwoBarThree \cBarVerseLineTwoBarFour }
sLineVerseLineTwo = { \sBarVerseLineTwoBarOne \sBarVerseLineTwoBarTwo \sBarVerseLineTwoBarThree \sBarVerseLineTwoBarFour }

vOneLineVerseLineThree = { \vOneBarVerseLineThreeBarOne \vOneBarVerseLineThreeBarTwo \vOneBarVerseLineThreeBarThree \vOneBarVerseLineThreeBarFour \break }
vTwoLineVerseLineThree = { \vTwoBarVerseLineThreeBarOne \vTwoBarVerseLineThreeBarTwo \vTwoBarVerseLineThreeBarThree \vTwoBarVerseLineThreeBarFour \break }
cLineVerseLineThree = { \cBarVerseLineThreeBarOne \cBarVerseLineThreeBarTwo \cBarVerseLineThreeBarThree \cBarVerseLineThreeBarFour }
sLineVerseLineThree = { \sBarVerseLineThreeBarOne \sBarVerseLineThreeBarTwo \sBarVerseLineThreeBarThree \sBarVerseLineThreeBarFour }

vOneLineVerseLineFour = { \vOneBarVerseLineFourBarOne \vOneBarVerseLineFourBarTwo \vOneBarVerseLineFourBarThree \vOneBarVerseLineFourBarFour \break }
vTwoLineVerseLineFour = { \vTwoBarVerseLineFourBarOne \vTwoBarVerseLineFourBarTwo \vTwoBarVerseLineFourBarThree \vTwoBarVerseLineFourBarFour \break }
cLineVerseLineFour = { \cBarVerseLineFourBarOne \cBarVerseLineFourBarTwo \cBarVerseLineFourBarThree \cBarVerseLineFourBarFour }
sLineVerseLineFour = { \sBarVerseLineFourBarOne \sBarVerseLineFourBarTwo \sBarVerseLineFourBarThree \sBarVerseLineFourBarFour }

vOneLineRefrainLineOne = { \vOneBarRefrainLineOneBarOne \vOneBarRefrainLineOneBarTwo \vOneBarRefrainLineOneBarThree \vOneBarRefrainLineOneBarFour \break }
vTwoLineRefrainLineOne = { \vTwoBarRefrainLineOneBarOne \vTwoBarRefrainLineOneBarTwo \vTwoBarRefrainLineOneBarThree \vTwoBarRefrainLineOneBarFour \break }
cLineRefrainLineOne = { \cBarRefrainLineOneBarOne \cBarRefrainLineOneBarTwo \cBarRefrainLineOneBarThree \cBarRefrainLineOneBarFour }
sLineRefrainLineOne = { \sBarRefrainLineOneBarOne \sBarRefrainLineOneBarTwo \sBarRefrainLineOneBarThree \sBarRefrainLineOneBarFour }

vOneLineRefrainLineTwo = { \vOneBarRefrainLineTwoBarOne \vOneBarRefrainLineTwoBarTwo \vOneBarRefrainLineTwoBarThree \vOneBarRefrainLineTwoBarFour \vOneBarRefrainLineTwoBarFive \break }
vTwoLineRefrainLineTwo = { \vTwoBarRefrainLineTwoBarOne \vTwoBarRefrainLineTwoBarTwo \vTwoBarRefrainLineTwoBarThree \vTwoBarRefrainLineTwoBarFour \vTwoBarRefrainLineTwoBarFive \break }
cLineRefrainLineTwo = { \cBarRefrainLineTwoBarOne \cBarRefrainLineTwoBarTwo \cBarRefrainLineTwoBarThree \cBarRefrainLineTwoBarFour \cBarRefrainLineTwoBarFive }
sLineRefrainLineTwo = { \sBarRefrainLineTwoBarOne \sBarRefrainLineTwoBarTwo \sBarRefrainLineTwoBarThree \sBarRefrainLineTwoBarFour \sBarRefrainLineTwoBarFive }

vOneLineChorusLineOne = { \vOneBarChorusLineOneBarOne \vOneBarChorusLineOneBarTwo \vOneBarChorusLineOneBarThree \vOneBarChorusLineOneBarFour \break }
vTwoLineChorusLineOne = { \vTwoBarChorusLineOneBarOne \vTwoBarChorusLineOneBarTwo \vTwoBarChorusLineOneBarThree \vTwoBarChorusLineOneBarFour \break }
cLineChorusLineOne = { \cBarChorusLineOneBarOne \cBarChorusLineOneBarTwo \cBarChorusLineOneBarThree \cBarChorusLineOneBarFour }
sLineChorusLineOne = { \sBarChorusLineOneBarOne \sBarChorusLineOneBarTwo \sBarChorusLineOneBarThree \sBarChorusLineOneBarFour }

vOneLineChorusLineTwo = { \vOneBarChorusLineTwoBarOne \vOneBarChorusLineTwoBarTwo \vOneBarChorusLineTwoBarThree \vOneBarChorusLineTwoBarFour \vOneBarChorusLineTwoBarFive \break }
vTwoLineChorusLineTwo = { \vTwoBarChorusLineTwoBarOne \vTwoBarChorusLineTwoBarTwo \vTwoBarChorusLineTwoBarThree \vTwoBarChorusLineTwoBarFour \vTwoBarChorusLineTwoBarFive \break }
cLineChorusLineTwo = { \cBarChorusLineTwoBarOne \cBarChorusLineTwoBarTwo \cBarChorusLineTwoBarThree \cBarChorusLineTwoBarFour \cBarChorusLineTwoBarFive }
sLineChorusLineTwo = { \sBarChorusLineTwoBarOne \sBarChorusLineTwoBarTwo \sBarChorusLineTwoBarThree \sBarChorusLineTwoBarFour \sBarChorusLineTwoBarFive }


%-----------------------------------------------------------------------
% Stanzas

vOneStanzaVerse = { \vOneLineVerseLineOne \vOneLineVerseLineTwo \vOneLineVerseLineThree \vOneLineVerseLineFour }
vTwoStanzaVerse = { \vTwoLineVerseLineOne \vTwoLineVerseLineTwo \vTwoLineVerseLineThree \vTwoLineVerseLineFour }
cStanzaVerse = { \cLineVerseLineOne \cLineVerseLineTwo \cLineVerseLineThree \cLineVerseLineFour }
sStanzaVerse = { \sLineVerseLineOne \sLineVerseLineTwo \sLineVerseLineThree \sLineVerseLineFour }

vOneStanzaRefrain = { \vOneLineRefrainLineOne \vOneLineRefrainLineTwo }
vTwoStanzaRefrain = { \vTwoLineRefrainLineOne \vTwoLineRefrainLineTwo }
cStanzaRefrain = { \cLineRefrainLineOne \cLineRefrainLineTwo }
sStanzaRefrain = { \sLineRefrainLineOne \sLineRefrainLineTwo }

vOneStanzaChorus = { \vOneLineChorusLineOne \vOneLineChorusLineTwo }
vTwoStanzaChorus = { \vTwoLineChorusLineOne \vTwoLineChorusLineTwo }
cStanzaChorus = { \cLineChorusLineOne \cLineChorusLineTwo }
sStanzaChorus = { \sLineChorusLineOne \sLineChorusLineTwo }


%-----------------------------------------------------------------------
% Scores

vOneScoreTabOneScoreOne = { \vOneStanzaVerse \vOneStanzaRefrain \vOneStanzaChorus }
vTwoScoreTabOneScoreOne = { \vTwoStanzaVerse \vTwoStanzaRefrain \vTwoStanzaChorus }
cScoreTabOneScoreOne = { \cStanzaVerse \cStanzaRefrain \cStanzaChorus }
sScoreTabOneScoreOne = { \sStanzaVerse \sStanzaRefrain \sStanzaChorus }


%-----------------------------------------------------------------------
% Voices

vOne = {
  \transposition cs''
  \vOneScoreTabOneScoreOne
}

vTwo = {
  \transposition cs'
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
      \tempo 4 = 90

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
    \tempo 4 = 90

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
