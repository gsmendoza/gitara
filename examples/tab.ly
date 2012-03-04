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

vOneBarBeganIt = { \skip 4 <a\3 c'\2 >8 <g\3>8 \skip 4 <g\3 c'\2 >8 <g\3>8 }
vTwoBarBeganIt = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarBeganIt = { \cChordSetFC }
sBarBeganIt = { r1 }

vOneBarItsNot = { r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>16( <a\3>16) }
vTwoBarItsNot = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarItsNot = { \cChordSetFC }
sBarItsNot = { r1 }

vOneBarItThough = { r8 <d'\2>16( <c'\2>16) r8 <a\3>16 <c'\2>16 r8 <d'\2>16( <c'\2>16) r8 <a\3>8 }
vTwoBarItThough = { <f\4>4 <f\4>4 <d\4>4 <d\4>4 }
cBarItThough = { \cChordSetFD }
sBarItThough = { r1 }

vOneBarWhatYouThought = { r8 <g'\1>4 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarWhatYouThought = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarWhatYouThought = { \cChordSetFC }
sBarWhatYouThought = { r1 }

vOneBarWhenYouFirst = { <e'\1>8 <d'\2>16( <c'\2>8) <a\3>8. <c'\2>4 <a\3>8 <c'\2>8 }
vTwoBarWhenYouFirst = { <a,\5>4 <a,\5>8 <e\4>4 <a,\5>4 \skip 8 }
cBarWhenYouFirst = { \cChordSetAm }
sBarWhenYouFirst = { r1 }

vOneBarYouGot = { <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>16( <a\3>16) }
vTwoBarYouGot = { <f\4>4 <f\4>4 <c\5>4 <e\4>4 }
cBarYouGot = { \cChordSetFC }
sBarYouGot = { r1 }


%-----------------------------------------------------------------------
% Lines

vOneLineVerseOneLineTwo = { \vOneBarYouGot \vOneBarWhatYouThought \vOneBarWhenYouFirst \vOneBarItThough \break }
vTwoLineVerseOneLineTwo = { \vTwoBarYouGot \vTwoBarWhatYouThought \vTwoBarWhenYouFirst \vTwoBarItThough \break }
cLineVerseOneLineTwo = { \cBarYouGot \cBarWhatYouThought \cBarWhenYouFirst \cBarItThough }
sLineVerseOneLineTwo = { \sBarYouGot \sBarWhatYouThought \sBarWhenYouFirst \sBarItThough }

vOneLineVerseOneLineOne = { \vOneBarItsNot \vOneBarWhatYouThought \vOneBarWhenYouFirst \vOneBarBeganIt \break }
vTwoLineVerseOneLineOne = { \vTwoBarItsNot \vTwoBarWhatYouThought \vTwoBarWhenYouFirst \vTwoBarBeganIt \break }
cLineVerseOneLineOne = { \cBarItsNot \cBarWhatYouThought \cBarWhenYouFirst \cBarBeganIt }
sLineVerseOneLineOne = { \sBarItsNot \sBarWhatYouThought \sBarWhenYouFirst \sBarBeganIt }


%-----------------------------------------------------------------------
% Stanzas

vOneStanzaVerseOne = { \vOneLineVerseOneLineOne \vOneLineVerseOneLineTwo }
vTwoStanzaVerseOne = { \vTwoLineVerseOneLineOne \vTwoLineVerseOneLineTwo }
cStanzaVerseOne = { \cLineVerseOneLineOne \cLineVerseOneLineTwo }
sStanzaVerseOne = { \sLineVerseOneLineOne \sLineVerseOneLineTwo }


%-----------------------------------------------------------------------
% Scores

vOneScoreTabOneScoreOne = { \vOneStanzaVerseOne }
vTwoScoreTabOneScoreOne = { \vTwoStanzaVerseOne }
cScoreTabOneScoreOne = { \cStanzaVerseOne }
sScoreTabOneScoreOne = { \sStanzaVerseOne }


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
