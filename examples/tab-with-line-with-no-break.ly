\version "2.12.3"
\include "english.ly"

\paper {
 indent = #0
}

\header {
  title = "Walking After You"
  composer = "Foo Fighters"
  arranger = "Arranged by George Mendoza"
  instrument = "DADGBE (capo on second fret)"
}

%-----------------------------------------------------------------------
% Chord Sets


%-----------------------------------------------------------------------
% Bars

vOneBarTabOneScoreOneLineOneBarOne = {  <fs'\1>4. <d'\2>4 <a\3>4 <d'~\2>8  }
vTwoBarTabOneScoreOneLineOneBarOne = {  <d,\6>4 <d\4>4 <d,\6>4 <d\4>4  }
cBarTabOneScoreOneLineOneBarOne = {   }
sBarTabOneScoreOneLineOneBarOne = {  r1 }

vOneBarTabOneScoreOneLineOneBarTwo = {  <d'\2>8 <a\3>4 <d'\2>4 <a\3>8 \skip 4  }
vTwoBarTabOneScoreOneLineOneBarTwo = {  <d,\6>4 <d\4>4 <d,\6>4 <d\4>4  }
cBarTabOneScoreOneLineOneBarTwo = {   }
sBarTabOneScoreOneLineOneBarTwo = {  r1 }

vOneBarTabOneScoreOneLineTwoBarOne = {  \skip 4 r8 <d'\2 fs'\1 >4 <d'\2 fs'\1 >4 <d'~\2 fs'~\1 >8  }
vTwoBarTabOneScoreOneLineTwoBarOne = {  <d,\6>4 <d\4>4 r4 <d\4>4  }
cBarTabOneScoreOneLineTwoBarOne = {   }
sBarTabOneScoreOneLineTwoBarOne = {  r1 }

vOneBarTabOneScoreOneLineTwoBarTwo = {  <d'\2 fs'\1 >8 <d'\2 fs'\1 >4 <d'\2>8 <d'\2>8 <e'\1>4.  }
vTwoBarTabOneScoreOneLineTwoBarTwo = {  r4 <d\4>4 r4 r4  }
cBarTabOneScoreOneLineTwoBarTwo = {   }
sBarTabOneScoreOneLineTwoBarTwo = {  r1 }


%-----------------------------------------------------------------------
% Lines

vOneLineTabOneScoreOneLineOne = { \vOneBarTabOneScoreOneLineOneBarOne \vOneBarTabOneScoreOneLineOneBarTwo  }
vTwoLineTabOneScoreOneLineOne = { \vTwoBarTabOneScoreOneLineOneBarOne \vTwoBarTabOneScoreOneLineOneBarTwo  }
cLineTabOneScoreOneLineOne = { \cBarTabOneScoreOneLineOneBarOne \cBarTabOneScoreOneLineOneBarTwo }
sLineTabOneScoreOneLineOne = { \sBarTabOneScoreOneLineOneBarOne \sBarTabOneScoreOneLineOneBarTwo }

vOneLineTabOneScoreOneLineTwo = { \vOneBarTabOneScoreOneLineTwoBarOne \vOneBarTabOneScoreOneLineTwoBarTwo \break }
vTwoLineTabOneScoreOneLineTwo = { \vTwoBarTabOneScoreOneLineTwoBarOne \vTwoBarTabOneScoreOneLineTwoBarTwo \break }
cLineTabOneScoreOneLineTwo = { \cBarTabOneScoreOneLineTwoBarOne \cBarTabOneScoreOneLineTwoBarTwo }
sLineTabOneScoreOneLineTwo = { \sBarTabOneScoreOneLineTwoBarOne \sBarTabOneScoreOneLineTwoBarTwo }


%-----------------------------------------------------------------------
% Stanzas


%-----------------------------------------------------------------------
% Scores

vOneScoreTabOneScoreOne = { \vOneLineTabOneScoreOneLineOne \vOneLineTabOneScoreOneLineTwo }
vTwoScoreTabOneScoreOne = { \vTwoLineTabOneScoreOneLineOne \vTwoLineTabOneScoreOneLineTwo }
cScoreTabOneScoreOne = { \cLineTabOneScoreOneLineOne \cLineTabOneScoreOneLineTwo }
sScoreTabOneScoreOne = { \sLineTabOneScoreOneLineOne \sLineTabOneScoreOneLineTwo }


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
      
      \tempo 4 = 100

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
      \set TabStaff.stringTunings = #guitar-drop-d-tuning
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
    \tempo 4 = 100

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
