\version "2.14.2"
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

cChordSetG = { \chordmode { g1 } }

cChordSetGEight = { \chordmode { g8 } }

cChordSetC = { \chordmode { c1 } }

cChordSetASeven = { \chordmode { a1:7 } }

cChordSetEm = { \chordmode { e1:m } }

cChordSetD = { \chordmode { d1 } }


%-----------------------------------------------------------------------
% Bars

vOneBarVerseLineOneBarOne = { \partial 8 <g\3>8 }
vTwoBarVerseLineOneBarOne = { \partial 8 r8 }
cBarVerseLineOneBarOne = { \partial 8 \cChordSetGEight }

vOneBarVerseLineOneBarTwo = {  <a\3>16\glissando <b\3>16 <b\3>4 r16 <a\3>16\glissando <b\3>4. <a\3>16( <g\3>16) }
vTwoBarVerseLineOneBarTwo = {  r1 }
cBarVerseLineOneBarTwo = {  \cChordSetG }

vOneBarVerseLineOneBarThree = {  <a\3>8( <g\3>4) <cs'\2>4 <g\3>4. }
vTwoBarVerseLineOneBarThree = {  \skip 8 r8 <e\4>4 <a,\5>4 <e\4>8 <b,\5>8 }
cBarVerseLineOneBarThree = {  \cChordSetASeven }

vOneBarVerseLineOneBarFour = {  r4 <g\3>8 <g\3>8 <g\3>8 <a\3>8 <c'\2>8 <b~\2>8 }
vTwoBarVerseLineOneBarFour = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarVerseLineOneBarFour = {  \cChordSetC }

vOneBarVerseLineOneBarFive = {  <b\2>8 <g\3>8 <b\2>8 <b\2>16 <g\3>16 \skip 16 <b\2>16 <g\3>16 \skip 16 <b\2>16 <g\3>16 \skip 8 }
vTwoBarVerseLineOneBarFive = {  <g,\6>4 <d\4>4 <d\4>16 \skip 16 \skip 16 <d\4>16 \skip 16 \skip 16 <d\4>8 }
cBarVerseLineOneBarFive = {  \cChordSetG }

vOneBarVerseLineTwoBarOne = {  r8 <g\3>8 <b\2>8 <b\2>16 <b\2>8 <b\2>16( <d'\2>8) <e'\1>4 }
vTwoBarVerseLineTwoBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarVerseLineTwoBarOne = {  \cChordSetG }

vOneBarVerseLineTwoBarTwo = {  <a\3>16( <g\3>16)( <a\3>4) <cs'\2>4 <a\3>4 <b\2>8 }
vTwoBarVerseLineTwoBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4 }
cBarVerseLineTwoBarTwo = {  \cChordSetASeven }

vOneBarVerseLineTwoBarThree = {  <c'\2>4. <d'\2>4 <c'\2>4 <b~\2>8 }
vTwoBarVerseLineTwoBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarVerseLineTwoBarThree = {  \cChordSetC }

vOneBarVerseLineTwoBarFour = {  <b\2>8 <g\3>4 <g\3>4 <b\2>8 <b\2>8 <c'\2>8 }
vTwoBarVerseLineTwoBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarVerseLineTwoBarFour = {  \cChordSetG }

vOneBarVerseLineThreeBarOne = {  <d'\2>4. <d'\2>4 <d'\2>4 <cs'~\2>8 }
vTwoBarVerseLineThreeBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarVerseLineThreeBarOne = {  \cChordSetG }

vOneBarVerseLineThreeBarTwo = {  <cs'\2>8 <a\3>4 <a\3>4 <a\3>4 <b\2>8 }
vTwoBarVerseLineThreeBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4 }
cBarVerseLineThreeBarTwo = {  \cChordSetASeven }

vOneBarVerseLineThreeBarThree = {  <c'\2>4 <c'\2>8 <d'\2>4 <e'\1>4 <b~\2>8 }
vTwoBarVerseLineThreeBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarVerseLineThreeBarThree = {  \cChordSetC }

vOneBarVerseLineThreeBarFour = {  <b\2>8 <d'\2>4 <d'\2>4 <b\2>16 <a\3>8 <g\3>16( <a\3>8) }
vTwoBarVerseLineThreeBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarVerseLineThreeBarFour = {  \cChordSetG }

vOneBarVerseLineFourBarOne = {  <b\2>4. <b\2>4 <b\2>16 <b\2>16 r16 <a\3>16 <b\2>8 }
vTwoBarVerseLineFourBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarVerseLineFourBarOne = {  \cChordSetG }

vOneBarVerseLineFourBarTwo = {  <a\3>16( <g\3>16) <e\4>4 <cs'\2>4 <g\3>16 <g\3>16 r16 <g\3>16 <g\3>8 }
vTwoBarVerseLineFourBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4 }
cBarVerseLineFourBarTwo = {  \cChordSetASeven }

vOneBarVerseLineFourBarThree = {  <g\3>4. <g\3>4 <a\3>8 <c'\2>8 <b~\2>8 }
vTwoBarVerseLineFourBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarVerseLineFourBarThree = {  \cChordSetC }

vOneBarVerseLineFourBarFour = {  <b\2>8 <g\3>4 <g\3>4 <g\3>4. }
vTwoBarVerseLineFourBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <g,\6>8 <fs,\6>8 }
cBarVerseLineFourBarFour = {  \cChordSetG }

vOneBarRefrainLineOneBarOne = {  r4 <g\3>8 <g\3>8 <g\3>8 <g\3>8 <e'\1>8 <d'~\2>8 }
vTwoBarRefrainLineOneBarOne = {  <e,\6>4 <e\4>4 <e,\6>4 <e\4>4 }
cBarRefrainLineOneBarOne = {  \cChordSetEm }

vOneBarRefrainLineOneBarTwo = {  <d'\2>8 <b\2>4 <a\3>4 <a\3>4 <b\2>8 }
vTwoBarRefrainLineOneBarTwo = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarRefrainLineOneBarTwo = {  \cChordSetG }

vOneBarRefrainLineOneBarThree = {  <c'\2>4 <c'\2>8 <d'\2>4 <g\3>8( <a\3>8) <b~\2>8 }
vTwoBarRefrainLineOneBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarRefrainLineOneBarThree = {  \cChordSetC }

vOneBarRefrainLineOneBarFour = {  <b\2>8 <a\3>4 <a\3>4 <a\3>4. }
vTwoBarRefrainLineOneBarFour = {  <a,\5>4 <d\4>4 <a,\5>4 <g,\6>8 <fs,\6>8 }
cBarRefrainLineOneBarFour = {  \cChordSetD }

vOneBarRefrainLineTwoBarOne = {  r4 <g\3>8 <g\3>8 <g\3>8 <g\3>8 <e'\1>8 <d'~\2>8 }
vTwoBarRefrainLineTwoBarOne = {  <e,\6>4 <e\4>4 <e,\6>4 <e\4>4 }
cBarRefrainLineTwoBarOne = {  \cChordSetEm }

vOneBarRefrainLineTwoBarTwo = {  <d'\2>8 <b\2>4 <a\3>4 <a\3>4 <b\2>8 }
vTwoBarRefrainLineTwoBarTwo = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarRefrainLineTwoBarTwo = {  \cChordSetG }

vOneBarRefrainLineTwoBarThree = {  <c'\2>4 <c'\2>8 <d'\2>4 <e'\1>4 <e'~\1>8 }
vTwoBarRefrainLineTwoBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarRefrainLineTwoBarThree = {  \cChordSetC }

vOneBarRefrainLineTwoBarFour = {  <e'\1>8 <d'\2>4 <d'\2>4 <d'\2>4 <d'\2>8 }
vTwoBarRefrainLineTwoBarFour = {  <a,\5>4 <d\4>4 <a,\5>4 <d\4>4 }
cBarRefrainLineTwoBarFour = {  \cChordSetD }

vOneBarRefrainLineTwoBarFive = {  <a\3 d'\2 >8 <a\3 d'\2 >8 <a\3 d'\2 >8 <a\3 d'\2 >8 <a\3 d'\2 >8 <b\2>8 <b\2>8 <c'\2>8 }
vTwoBarRefrainLineTwoBarFive = {  <d\4>8 <d\4>8 <d\4>8 <d\4>8 <d\4>8 \skip 8 \skip 8 \skip 8 }
cBarRefrainLineTwoBarFive = {  \cChordSetD }

vOneBarChorusLineOneBarOne = {  <d'\2>4. <g'\1>4 <d'\2>4 <cs'~\2>8 }
vTwoBarChorusLineOneBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarChorusLineOneBarOne = {  \cChordSetG }

vOneBarChorusLineOneBarTwo = {  <cs'\2>4 <g'\1>8 <g'\1>4 <cs'\2>4 <c'~\2>8 }
vTwoBarChorusLineOneBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4 }
cBarChorusLineOneBarTwo = {  \cChordSetASeven }

vOneBarChorusLineOneBarThree = {  <c'\2>4. <d'\2>4 <e'\1>4 <b~\2>8 }
vTwoBarChorusLineOneBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarChorusLineOneBarThree = {  \cChordSetC }

vOneBarChorusLineOneBarFour = {  <b\2>8 <d'\2>4 <d'\2>4 <b\2>8 <b\2>8 <c'\2>8 }
vTwoBarChorusLineOneBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarChorusLineOneBarFour = {  \cChordSetG }

vOneBarChorusLineTwoBarOne = {  <d'\2>4. <g'\1>4 <d'\2>4 <cs'~\2>8 }
vTwoBarChorusLineTwoBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarChorusLineTwoBarOne = {  \cChordSetG }

vOneBarChorusLineTwoBarTwo = {  <cs'\2>4 <g'\1>8 <g'\1>4 <cs'\2>4 <c'~\2>8 }
vTwoBarChorusLineTwoBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4 }
cBarChorusLineTwoBarTwo = {  \cChordSetASeven }

vOneBarChorusLineTwoBarThree = {  <c'\2>4. <d'\2>4 <c'\2>4 <b~\2>8 }
vTwoBarChorusLineTwoBarThree = {  <c\5>4 <e\4>4 <c\5>4 <e\4>4 }
cBarChorusLineTwoBarThree = {  \cChordSetC }

vOneBarChorusLineTwoBarFour = {  <b\2>8 <g\3>4 <g\3>4 <g\3>4 <g\3>8 }
vTwoBarChorusLineTwoBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4 }
cBarChorusLineTwoBarFour = {  \cChordSetG }

vOneBarChorusLineTwoBarFive = {  <g\3 d'\2 g'\1 >1 }
vTwoBarChorusLineTwoBarFive = {  <g,\6 b,\5 d\4 >1 }
cBarChorusLineTwoBarFive = {  \cChordSetG }


%-----------------------------------------------------------------------
% Lines

vOneLineVerseLineOne = { \vOneBarVerseLineOneBarOne \vOneBarVerseLineOneBarTwo \vOneBarVerseLineOneBarThree \vOneBarVerseLineOneBarFour \vOneBarVerseLineOneBarFive \break }
vTwoLineVerseLineOne = { \vTwoBarVerseLineOneBarOne \vTwoBarVerseLineOneBarTwo \vTwoBarVerseLineOneBarThree \vTwoBarVerseLineOneBarFour \vTwoBarVerseLineOneBarFive \break }
cLineVerseLineOne = { \cBarVerseLineOneBarOne \cBarVerseLineOneBarTwo \cBarVerseLineOneBarThree \cBarVerseLineOneBarFour \cBarVerseLineOneBarFive }

vOneLineVerseLineTwo = { \vOneBarVerseLineTwoBarOne \vOneBarVerseLineTwoBarTwo \vOneBarVerseLineTwoBarThree \vOneBarVerseLineTwoBarFour \break }
vTwoLineVerseLineTwo = { \vTwoBarVerseLineTwoBarOne \vTwoBarVerseLineTwoBarTwo \vTwoBarVerseLineTwoBarThree \vTwoBarVerseLineTwoBarFour \break }
cLineVerseLineTwo = { \cBarVerseLineTwoBarOne \cBarVerseLineTwoBarTwo \cBarVerseLineTwoBarThree \cBarVerseLineTwoBarFour }

vOneLineVerseLineThree = { \vOneBarVerseLineThreeBarOne \vOneBarVerseLineThreeBarTwo \vOneBarVerseLineThreeBarThree \vOneBarVerseLineThreeBarFour \break }
vTwoLineVerseLineThree = { \vTwoBarVerseLineThreeBarOne \vTwoBarVerseLineThreeBarTwo \vTwoBarVerseLineThreeBarThree \vTwoBarVerseLineThreeBarFour \break }
cLineVerseLineThree = { \cBarVerseLineThreeBarOne \cBarVerseLineThreeBarTwo \cBarVerseLineThreeBarThree \cBarVerseLineThreeBarFour }

vOneLineVerseLineFour = { \vOneBarVerseLineFourBarOne \vOneBarVerseLineFourBarTwo \vOneBarVerseLineFourBarThree \vOneBarVerseLineFourBarFour \break }
vTwoLineVerseLineFour = { \vTwoBarVerseLineFourBarOne \vTwoBarVerseLineFourBarTwo \vTwoBarVerseLineFourBarThree \vTwoBarVerseLineFourBarFour \break }
cLineVerseLineFour = { \cBarVerseLineFourBarOne \cBarVerseLineFourBarTwo \cBarVerseLineFourBarThree \cBarVerseLineFourBarFour }

vOneLineRefrainLineOne = { \vOneBarRefrainLineOneBarOne \vOneBarRefrainLineOneBarTwo \vOneBarRefrainLineOneBarThree \vOneBarRefrainLineOneBarFour \break }
vTwoLineRefrainLineOne = { \vTwoBarRefrainLineOneBarOne \vTwoBarRefrainLineOneBarTwo \vTwoBarRefrainLineOneBarThree \vTwoBarRefrainLineOneBarFour \break }
cLineRefrainLineOne = { \cBarRefrainLineOneBarOne \cBarRefrainLineOneBarTwo \cBarRefrainLineOneBarThree \cBarRefrainLineOneBarFour }

vOneLineRefrainLineTwo = { \vOneBarRefrainLineTwoBarOne \vOneBarRefrainLineTwoBarTwo \vOneBarRefrainLineTwoBarThree \vOneBarRefrainLineTwoBarFour \vOneBarRefrainLineTwoBarFive \break }
vTwoLineRefrainLineTwo = { \vTwoBarRefrainLineTwoBarOne \vTwoBarRefrainLineTwoBarTwo \vTwoBarRefrainLineTwoBarThree \vTwoBarRefrainLineTwoBarFour \vTwoBarRefrainLineTwoBarFive \break }
cLineRefrainLineTwo = { \cBarRefrainLineTwoBarOne \cBarRefrainLineTwoBarTwo \cBarRefrainLineTwoBarThree \cBarRefrainLineTwoBarFour \cBarRefrainLineTwoBarFive }

vOneLineChorusLineOne = { \vOneBarChorusLineOneBarOne \vOneBarChorusLineOneBarTwo \vOneBarChorusLineOneBarThree \vOneBarChorusLineOneBarFour \break }
vTwoLineChorusLineOne = { \vTwoBarChorusLineOneBarOne \vTwoBarChorusLineOneBarTwo \vTwoBarChorusLineOneBarThree \vTwoBarChorusLineOneBarFour \break }
cLineChorusLineOne = { \cBarChorusLineOneBarOne \cBarChorusLineOneBarTwo \cBarChorusLineOneBarThree \cBarChorusLineOneBarFour }

vOneLineChorusLineTwo = { \vOneBarChorusLineTwoBarOne \vOneBarChorusLineTwoBarTwo \vOneBarChorusLineTwoBarThree \vOneBarChorusLineTwoBarFour \vOneBarChorusLineTwoBarFive \break }
vTwoLineChorusLineTwo = { \vTwoBarChorusLineTwoBarOne \vTwoBarChorusLineTwoBarTwo \vTwoBarChorusLineTwoBarThree \vTwoBarChorusLineTwoBarFour \vTwoBarChorusLineTwoBarFive \break }
cLineChorusLineTwo = { \cBarChorusLineTwoBarOne \cBarChorusLineTwoBarTwo \cBarChorusLineTwoBarThree \cBarChorusLineTwoBarFour \cBarChorusLineTwoBarFive }


%-----------------------------------------------------------------------
% Stanzas

vOneStanzaVerse = { \vOneLineVerseLineOne \vOneLineVerseLineTwo \vOneLineVerseLineThree \vOneLineVerseLineFour }
vTwoStanzaVerse = { \vTwoLineVerseLineOne \vTwoLineVerseLineTwo \vTwoLineVerseLineThree \vTwoLineVerseLineFour }
cStanzaVerse = { \cLineVerseLineOne \cLineVerseLineTwo \cLineVerseLineThree \cLineVerseLineFour }
sStanzaVerse = { r8^"Verse" r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 }

vOneStanzaRefrain = { \vOneLineRefrainLineOne \vOneLineRefrainLineTwo }
vTwoStanzaRefrain = { \vTwoLineRefrainLineOne \vTwoLineRefrainLineTwo }
cStanzaRefrain = { \cLineRefrainLineOne \cLineRefrainLineTwo }
sStanzaRefrain = { r1^"Refrain" r1 r1 r1 r1 r1 r1 r1 r1 }

vOneStanzaChorus = { \vOneLineChorusLineOne \vOneLineChorusLineTwo }
vTwoStanzaChorus = { \vTwoLineChorusLineOne \vTwoLineChorusLineTwo }
cStanzaChorus = { \cLineChorusLineOne \cLineChorusLineTwo }
sStanzaChorus = { r1^"Chorus" r1 r1 r1 r1 r1 r1 r1 r1 }


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
      
      \tempo 4 = 90

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
