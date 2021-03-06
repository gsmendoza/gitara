\version "2.14.2"
\include "english.ly"

\paper {
 indent = #0
}

\header {
  title = ""
  composer = ""
  arranger = ""
  instrument = ""
}

%-----------------------------------------------------------------------
% Chord Sets


%-----------------------------------------------------------------------
% Bars

vOneBarIntro = {  <g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8 }
vTwoBarIntro = {  <f\4>4 <f\4>4 <c\5>4  <e\4>4 }
cBarIntro = {   }


%-----------------------------------------------------------------------
% Lines

vOneLineIntroLineOne = { \vOneBarIntro \vOneBarIntro \vOneBarIntro \vOneBarIntro \break }
vTwoLineIntroLineOne = { \vTwoBarIntro \vTwoBarIntro \vTwoBarIntro \vTwoBarIntro \break }
cLineIntroLineOne = { \cBarIntro \cBarIntro \cBarIntro \cBarIntro }


%-----------------------------------------------------------------------
% Stanzas

vOneStanzaIntro = { \vOneLineIntroLineOne }
vTwoStanzaIntro = { \vTwoLineIntroLineOne }
cStanzaIntro = { \cLineIntroLineOne }
sStanzaIntro = { r1^"Intro" r1 r1 r1 }


%-----------------------------------------------------------------------
% Scores


%-----------------------------------------------------------------------
% Voices

vOne = {
  
  \vOneStanzaIntro
}

vTwo = {
  
  \vTwoStanzaIntro
}


%-----------------------------------------------------------------------
% Stanza Headings

stanzaHeadings = { 
\sStanzaIntro 
}

%-----------------------------------------------------------------------
% Chord Headings

chordHeadings = { \cStanzaIntro }

%-----------------------------------------------------------------------

\score {
  \new StaffGroup <<
    \new Staff <<
      
      
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
