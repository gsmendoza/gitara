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
sBarVerseLineOneBarOne = { \partial 8 r8 }

vOneBarVerseLineOneBarTwo = {  <a\3>16\glissando <b\3>16 <b\3>4 r16 <a\3>16\glissando <b\3>4. <a\3>16( <g\3>16) }
vTwoBarVerseLineOneBarTwo = {  r1 }
cBarVerseLineOneBarTwo = {  \cChordSetG }
sBarVerseLineOneBarTwo = {  r1 }


%-----------------------------------------------------------------------
% Lines

vOneLineVerseLineOne = { \vOneBarVerseLineOneBarOne \vOneBarVerseLineOneBarTwo \break }
vTwoLineVerseLineOne = { \vTwoBarVerseLineOneBarOne \vTwoBarVerseLineOneBarTwo \break }
cLineVerseLineOne = { \cBarVerseLineOneBarOne \cBarVerseLineOneBarTwo }
sLineVerseLineOne = { \sBarVerseLineOneBarOne \sBarVerseLineOneBarTwo }


%-----------------------------------------------------------------------
% Stanzas

vOneStanzaVerse = { \vOneLineVerseLineOne }
vTwoStanzaVerse = { \vTwoLineVerseLineOne }
cStanzaVerse = { \cLineVerseLineOne }
sStanzaVerse = { r8^"Verse" r1 }


%-----------------------------------------------------------------------
% Scores

vOneScoreTabOneScoreOne = { \vOneStanzaVerse }
vTwoScoreTabOneScoreOne = { \vTwoStanzaVerse }
cScoreTabOneScoreOne = { \cStanzaVerse }
sScoreTabOneScoreOne = { \sStanzaVerse }


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
