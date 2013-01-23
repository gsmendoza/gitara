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

vOneBarIntroLineOneBarOne = {  \skip 4 r8 <d'\2 fs'\1 >4 <fs'\1 d'\2 >4 \skip 8  }
vTwoBarIntroLineOneBarOne = {  <fs'\1 d'\2 a\3 d\4 a,\5 d,\6 >4\arpeggio <d\4>4 r4 <d\4>8 <a,\5>8  }
cBarIntroLineOneBarOne = {   }
sBarIntroLineOneBarOne = {  r1 }

vOneBarIntroLineOneBarTwo = {  r8 r8 r8 <d'\2 fs'\1 >4 <fs'\1 d'\2 >4 \skip 8  }
vTwoBarIntroLineOneBarTwo = {  <d,\6>4 <d\4>4 r4 <d\4>8 <a,\5>8  }
cBarIntroLineOneBarTwo = {   }
sBarIntroLineOneBarTwo = {  r1 }

vOneBarIntroLineOneBarThree = {  <d'\2>4 <e'\2>4 <fs'\2>4 <d'\2>4  }
vTwoBarIntroLineOneBarThree = {  <d,\6>4 <g\4>4 <a\4>4 <fs\4>4  }
cBarIntroLineOneBarThree = {   }
sBarIntroLineOneBarThree = {  r1 }

vOneBarIntroLineOneBarFour = {  <g'\2>4 <fs'\2>4 <e'\2>4 <d'\2>4  }
vTwoBarIntroLineOneBarFour = {  <d,\6>4 <a\4>4 <g\4>4 <fs\4>4  }
cBarIntroLineOneBarFour = {   }
sBarIntroLineOneBarFour = {  r1 }

vOneBarVerseRepeatOneLineOneBarOne = {  <d'\2 fs'\1 >4. <fs'\1 d'\2 >4 <fs'\1 d'\2 >8 \skip 8 \skip 8  }
vTwoBarVerseRepeatOneLineOneBarOne = {  <d,\6>4 <d\4>4 r4 <d\4>8 <a,\5>8  }
cBarVerseRepeatOneLineOneBarOne = {   }
sBarVerseRepeatOneLineOneBarOne = {  r1 }

vOneBarVerseRepeatOneLineOneBarTwo = {  <fs'\1>4 <e'\1>8 <d'\2>4 <b~\2>8 <b\2>4  }
vTwoBarVerseRepeatOneLineOneBarTwo = {  <fs,\6>4 <d\4>4 <fs,\6>4 <d\4>4  }
cBarVerseRepeatOneLineOneBarTwo = {   }
sBarVerseRepeatOneLineOneBarTwo = {  r1 }

vOneBarVerseRepeatOneLineOneBarThree = {  <b\2>4 <d'\2>8 <b\2>4 <e'~\1>8 <e'\1>4  }
vTwoBarVerseRepeatOneLineOneBarThree = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarVerseRepeatOneLineOneBarThree = {   }
sBarVerseRepeatOneLineOneBarThree = {  r1 }

vOneBarVerseRepeatOneLineOneBarFour = {  <b\2>4. <b\2>8 <e'\1>8 <fs'\2>8 <e'\1>8 <d'\2>8  }
vTwoBarVerseRepeatOneLineOneBarFour = {  <gs,\6>4 <d\4>4 <gs,\6>4 <d\4>4  }
cBarVerseRepeatOneLineOneBarFour = {   }
sBarVerseRepeatOneLineOneBarFour = {  r1 }

vOneBarVerseRepeatOneLineOneBarFive = {  <d'\2>4. <b\2>4 <b\2>4 <b\2>8  }
vTwoBarVerseRepeatOneLineOneBarFive = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarVerseRepeatOneLineOneBarFive = {   }
sBarVerseRepeatOneLineOneBarFive = {  r1 }

vOneBarVerseRepeatOneLineOneBarSix = {  <cs'\2>4 <cs'\2>4 <cs'\2>8 <d'~\2>8 <d'\2>4  }
vTwoBarVerseRepeatOneLineOneBarSix = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4  }
cBarVerseRepeatOneLineOneBarSix = {   }
sBarVerseRepeatOneLineOneBarSix = {  r1 }

vOneBarVerseToChorusLineOneBarOne = {  r4. <d'\2 e'\1 >4 <d'\2 e'\1 >4 \skip 8  }
vTwoBarVerseToChorusLineOneBarOne = {  <d,\6>4 <d\4>4 r4 <d\4>8 <a,\5>8  }
cBarVerseToChorusLineOneBarOne = {   }
sBarVerseToChorusLineOneBarOne = {  r1 }

vOneBarVerseToChorusLineOneBarTwo = {  <cs'\2>4 <cs'\2>4 <cs'\2>8 <d'\2>4 <e'~\1>8  }
vTwoBarVerseToChorusLineOneBarTwo = {  <fs,\6>4 <d\4>4 <fs,\6>4 <d\4>4  }
cBarVerseToChorusLineOneBarTwo = {   }
sBarVerseToChorusLineOneBarTwo = {  r1 }

vOneBarVerseToChorusLineOneBarThree = {  <e'\1>4. <b\2 e'\1 >4 <b\2 e'~\1 >8 <e'\1>4  }
vTwoBarVerseToChorusLineOneBarThree = {  <g,\6>4 <d\4>4 r4 <d\4>8 <g,\6>8  }
cBarVerseToChorusLineOneBarThree = {   }
sBarVerseToChorusLineOneBarThree = {  r1 }

vOneBarVerseToChorusLineOneBarFour = {  <b\2>4. <b\2>8 <e'\1>8 <fs'\2>8 <e'\1>8 <d'\2>8  }
vTwoBarVerseToChorusLineOneBarFour = {  <gs,\6>4 <d\4>4 <gs,\6>4 <d\4>4  }
cBarVerseToChorusLineOneBarFour = {   }
sBarVerseToChorusLineOneBarFour = {  r1 }

vOneBarVerseToChorusLineTwoBarOne = {  <d'\2>4. <b\2>4 <b\2>4 <b\2>8  }
vTwoBarVerseToChorusLineTwoBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarVerseToChorusLineTwoBarOne = {   }
sBarVerseToChorusLineTwoBarOne = {  r1 }

vOneBarVerseToChorusLineTwoBarTwo = {  <cs'\2>4 <cs'\2>4 <cs'\2>8 <d'~\2>8 <d'\2>4  }
vTwoBarVerseToChorusLineTwoBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4  }
cBarVerseToChorusLineTwoBarTwo = {   }
sBarVerseToChorusLineTwoBarTwo = {  r1 }

vOneBarVerseToChorusLineTwoBarThree = {  <d'\2>4 <e'\2>4 <fs'\2>4 <d'\2>4  }
vTwoBarVerseToChorusLineTwoBarThree = {  <d,\6>4 <g\4>4 <a\4>4 <fs\4>4  }
cBarVerseToChorusLineTwoBarThree = {   }
sBarVerseToChorusLineTwoBarThree = {  r1 }

vOneBarVerseToChorusLineTwoBarFour = {  <g'\2>4 <fs'\2>4 <e'\2>4 <d'\2>4  }
vTwoBarVerseToChorusLineTwoBarFour = {  <d,\6>4 <a\4>4 <g\4>4 <fs\4>4  }
cBarVerseToChorusLineTwoBarFour = {   }
sBarVerseToChorusLineTwoBarFour = {  r1 }

vOneBarChorusRepeatOneLineOneBarOne = {  <b\2 gs\3 >2 <fs'\1>4 <fs'\1>4  }
vTwoBarChorusRepeatOneLineOneBarOne = {  <e,\6>4 <d\4>4 <e,\6>4 <d\4>4  }
cBarChorusRepeatOneLineOneBarOne = {   }
sBarChorusRepeatOneLineOneBarOne = {  r1 }

vOneBarChorusRepeatOneLineOneBarTwo = {  <fs'\1>4 <e'\1>8 <d'\2>4 <b\2>4 <g'~\1>8  }
vTwoBarChorusRepeatOneLineOneBarTwo = {  <e,\6>4 <d\4>4 <e,\6>4 <d\4>4  }
cBarChorusRepeatOneLineOneBarTwo = {   }
sBarChorusRepeatOneLineOneBarTwo = {  r1 }

vOneBarChorusRepeatOneLineOneBarThree = {  <g'\1>2. r8 <b\2>8  }
vTwoBarChorusRepeatOneLineOneBarThree = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarChorusRepeatOneLineOneBarThree = {   }
sBarChorusRepeatOneLineOneBarThree = {  r1 }

vOneBarChorusRepeatOneLineOneBarFour = {  <d'\2>4 <d'\2>8 <e'\1>4 <fs'\1>4.  }
vTwoBarChorusRepeatOneLineOneBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarChorusRepeatOneLineOneBarFour = {   }
sBarChorusRepeatOneLineOneBarFour = {  r1 }

vOneBarChorusAlternativeOneLineOneBarOne = {  <fs'\1>4. <d'\2>4 <a\3>4 <d'~\2>8  }
vTwoBarChorusAlternativeOneLineOneBarOne = {  <d,\6>4 <d\4>4 <d,\6>4 <d\4>4  }
cBarChorusAlternativeOneLineOneBarOne = {   }
sBarChorusAlternativeOneLineOneBarOne = {  r1 }

vOneBarChorusAlternativeOneLineOneBarTwo = {  <d'\2>8 <a\3>4 <d'\2>4 <a\3>8 \skip 4  }
vTwoBarChorusAlternativeOneLineOneBarTwo = {  <d,\6>4 <d\4>4 <d,\6>4 <d\4>4  }
cBarChorusAlternativeOneLineOneBarTwo = {   }
sBarChorusAlternativeOneLineOneBarTwo = {  r1 }

vOneBarChorusAlternativeOneLineTwoBarOne = {  \skip 4 r8 <d'\2 fs'\1 >4 <d'\2 fs'\1 >4 <d'~\2 fs'~\1 >8  }
vTwoBarChorusAlternativeOneLineTwoBarOne = {  <d,\6>4 <d\4>4 r4 <d\4>4  }
cBarChorusAlternativeOneLineTwoBarOne = {   }
sBarChorusAlternativeOneLineTwoBarOne = {  r1 }

vOneBarChorusAlternativeOneLineTwoBarTwo = {  <d'\2 fs'\1 >8 <d'\2 fs'\1 >4 <d'\2>8 <d'\2>8 <e'\1>4.  }
vTwoBarChorusAlternativeOneLineTwoBarTwo = {  r4 <d\4>4 r4 r4  }
cBarChorusAlternativeOneLineTwoBarTwo = {   }
sBarChorusAlternativeOneLineTwoBarTwo = {  r1 }

vOneBarBridgeLineOneBarOne = {  <fs'\1>4. <d'\2>4 <b\3>4.  }
vTwoBarBridgeLineOneBarOne = {  <b,\5>4 <fs\4>4 <b,\5>4 <fs\4>4  }
cBarBridgeLineOneBarOne = {   }
sBarBridgeLineOneBarOne = {  r1 }

vOneBarBridgeLineOneBarTwo = {  <b\3>4. <b\3>4 <d'\2>4 <g'~\1>8  }
vTwoBarBridgeLineOneBarTwo = {  <b,\5>4 <fs\4>4 <b,\5>4 <fs\4>4  }
cBarBridgeLineOneBarTwo = {   }
sBarBridgeLineOneBarTwo = {  r1 }

vOneBarBridgeLineOneBarThree = {  <g'\1>4. <d'\2>4. \skip 4  }
vTwoBarBridgeLineOneBarThree = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarBridgeLineOneBarThree = {   }
sBarBridgeLineOneBarThree = {  r1 }

vOneBarBridgeLineOneBarFour = {  <d'\2>4. <e'\1>8 <fs'\1>8 <g'\1>4 <gs'~\1>8  }
vTwoBarBridgeLineOneBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarBridgeLineOneBarFour = {   }
sBarBridgeLineOneBarFour = {  r1 }

vOneBarBridgeLineOneBarFive = {  <gs'\1>4. <e'\1>2 <b~\2>8  }
vTwoBarBridgeLineOneBarFive = {  <e,\6>4 <d\4>4 <e,\6>4 <d\4>4  }
cBarBridgeLineOneBarFive = {   }
sBarBridgeLineOneBarFive = {  r1 }

vOneBarBridgeLineOneBarSix = {  <b\2>4. <gs\3>4. \skip 4  }
vTwoBarBridgeLineOneBarSix = {  <e,\6>4 <d\4>4 <e,\6>4 <d\4>4  }
cBarBridgeLineOneBarSix = {   }
sBarBridgeLineOneBarSix = {  r1 }

vOneBarInterludeLineOneRepeatOneBarOne = {  <d'\2>4 <e'\2>4 <fs'\2>4 <d'\2>4  }
vTwoBarInterludeLineOneRepeatOneBarOne = {  <d,\6>4 <g\4>4 <a\4>4 <fs\4>4  }
cBarInterludeLineOneRepeatOneBarOne = {   }
sBarInterludeLineOneRepeatOneBarOne = {  r1 }

vOneBarInterludeLineOneRepeatOneBarTwo = {  <g'\2>4 <fs'\2>4 <e'\2>4 <d'\2>4  }
vTwoBarInterludeLineOneRepeatOneBarTwo = {  <d,\6>4 <a\4>4 <g\4>4 <fs\4>4  }
cBarInterludeLineOneRepeatOneBarTwo = {   }
sBarInterludeLineOneRepeatOneBarTwo = {  r1 }

vOneBarInterludeLineOneBarOne = {  <gs\3>8 <b\2>8 <e'\1>8 <gs\3>8 <b\2>8 <e'\1>8 <gs\3>8 <b\2>8  }
vTwoBarInterludeLineOneBarOne = {  <e,\6>1  }
cBarInterludeLineOneBarOne = {   }
sBarInterludeLineOneBarOne = {  r1 }

vOneBarInterludeLineOneBarTwo = {  <e'\1>1  }
vTwoBarInterludeLineOneBarTwo = {  <e,\6>1  }
cBarInterludeLineOneBarTwo = {   }
sBarInterludeLineOneBarTwo = {  r1 }

vOneBarVerseTwoLineOneBarOne = {  <d'\2 fs'\1 >4. <fs'\1 d'\2 >4 <fs'\1 d'\2 >8 \skip 8 \skip 8  }
vTwoBarVerseTwoLineOneBarOne = {  <d,\6>4 <d\4>4 r4 <d\4>8 <a,\5>8  }
cBarVerseTwoLineOneBarOne = {   }
sBarVerseTwoLineOneBarOne = {  r1 }

vOneBarVerseTwoLineOneBarTwo = {  <fs'\1>4 <e'\1>8 <d'\2>4 <b~\2>8 <b\2>4  }
vTwoBarVerseTwoLineOneBarTwo = {  <fs,\6>4 <d\4>4 <fs,\6>4 <d\4>4  }
cBarVerseTwoLineOneBarTwo = {   }
sBarVerseTwoLineOneBarTwo = {  r1 }

vOneBarVerseTwoLineOneBarThree = {  <b\2>4 <d'\2>8 <b\2>4 <e'~\1>8 <e'\1>4  }
vTwoBarVerseTwoLineOneBarThree = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarVerseTwoLineOneBarThree = {   }
sBarVerseTwoLineOneBarThree = {  r1 }

vOneBarVerseTwoLineOneBarFour = {  <b\2>4. <b\2>8 <e'\1>8 <fs'\2>8 <e'\1>8 <d'\2>8  }
vTwoBarVerseTwoLineOneBarFour = {  <gs,\6>4 <d\4>4 <gs,\6>4 <d\4>4  }
cBarVerseTwoLineOneBarFour = {   }
sBarVerseTwoLineOneBarFour = {  r1 }

vOneBarVerseTwoLineOneBarFive = {  <d'\2>4. <b\2>4 <b\2>4 <b\2>8  }
vTwoBarVerseTwoLineOneBarFive = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarVerseTwoLineOneBarFive = {   }
sBarVerseTwoLineOneBarFive = {  r1 }

vOneBarVerseTwoLineOneBarSix = {  <cs'\2>4 <cs'\2>4 <cs'\2>8 <d'~\2>8 <d'\2>4  }
vTwoBarVerseTwoLineOneBarSix = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4  }
cBarVerseTwoLineOneBarSix = {   }
sBarVerseTwoLineOneBarSix = {  r1 }

vOneBarVerseToChorusTwoLineOneBarOne = {  r4. <d'\2 e'\1 >4 <d'\2 e'\1 >4 \skip 8  }
vTwoBarVerseToChorusTwoLineOneBarOne = {  <d,\6>4 <d\4>4 r4 <d\4>8 <a,\5>8  }
cBarVerseToChorusTwoLineOneBarOne = {   }
sBarVerseToChorusTwoLineOneBarOne = {  r1 }

vOneBarVerseToChorusTwoLineOneBarTwo = {  <cs'\2>4 <cs'\2>4 <cs'\2>8 <d'\2>4 <e'~\1>8  }
vTwoBarVerseToChorusTwoLineOneBarTwo = {  <fs,\6>4 <d\4>4 <fs,\6>4 <d\4>4  }
cBarVerseToChorusTwoLineOneBarTwo = {   }
sBarVerseToChorusTwoLineOneBarTwo = {  r1 }

vOneBarVerseToChorusTwoLineOneBarThree = {  <e'\1>4. <b\2 e'\1 >4 <b\2 e'~\1 >8 <e'\1>4  }
vTwoBarVerseToChorusTwoLineOneBarThree = {  <g,\6>4 <d\4>4 r4 <d\4>8 <g,\6>8  }
cBarVerseToChorusTwoLineOneBarThree = {   }
sBarVerseToChorusTwoLineOneBarThree = {  r1 }

vOneBarVerseToChorusTwoLineOneBarFour = {  <b\2>4. <b\2>8 <e'\1>8 <fs'\2>8 <e'\1>8 <d'\2>8  }
vTwoBarVerseToChorusTwoLineOneBarFour = {  <gs,\6>4 <d\4>4 <gs,\6>4 <d\4>4  }
cBarVerseToChorusTwoLineOneBarFour = {   }
sBarVerseToChorusTwoLineOneBarFour = {  r1 }

vOneBarVerseToChorusTwoLineTwoBarOne = {  <d'\2>4. <b\2>4 <b\2>4 <b\2>8  }
vTwoBarVerseToChorusTwoLineTwoBarOne = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarVerseToChorusTwoLineTwoBarOne = {   }
sBarVerseToChorusTwoLineTwoBarOne = {  r1 }

vOneBarVerseToChorusTwoLineTwoBarTwo = {  <cs'\2>4 <cs'\2>4 <cs'\2>8 <d'~\2>8 <d'\2>4  }
vTwoBarVerseToChorusTwoLineTwoBarTwo = {  <a,\5>4 <e\4>4 <a,\5>4 <e\4>4  }
cBarVerseToChorusTwoLineTwoBarTwo = {   }
sBarVerseToChorusTwoLineTwoBarTwo = {  r1 }

vOneBarVerseToChorusTwoLineTwoBarThree = {  <d'\2>4 <e'\2>4 <fs'\2>4 <d'\2>4  }
vTwoBarVerseToChorusTwoLineTwoBarThree = {  <d,\6>4 <g\4>4 <a\4>4 <fs\4>4  }
cBarVerseToChorusTwoLineTwoBarThree = {   }
sBarVerseToChorusTwoLineTwoBarThree = {  r1 }

vOneBarVerseToChorusTwoLineTwoBarFour = {  <g'\2>4 <fs'\2>4 <e'\2>4 <d'\2>4  }
vTwoBarVerseToChorusTwoLineTwoBarFour = {  <d,\6>4 <a\4>4 <g\4>4 <fs\4>4  }
cBarVerseToChorusTwoLineTwoBarFour = {   }
sBarVerseToChorusTwoLineTwoBarFour = {  r1 }

vOneBarChorusTwoRepeatOneLineOneBarOne = {  <b\2 gs\3 >2 <fs'\1>4 <fs'\1>4  }
vTwoBarChorusTwoRepeatOneLineOneBarOne = {  <e,\6>4 <d\4>4 <e,\6>4 <d\4>4  }
cBarChorusTwoRepeatOneLineOneBarOne = {   }
sBarChorusTwoRepeatOneLineOneBarOne = {  r1 }

vOneBarChorusTwoRepeatOneLineOneBarTwo = {  <fs'\1>4 <e'\1>8 <d'\2>4 <b\2>4 <g'~\1>8  }
vTwoBarChorusTwoRepeatOneLineOneBarTwo = {  <e,\6>4 <d\4>4 <e,\6>4 <d\4>4  }
cBarChorusTwoRepeatOneLineOneBarTwo = {   }
sBarChorusTwoRepeatOneLineOneBarTwo = {  r1 }

vOneBarChorusTwoRepeatOneLineOneBarThree = {  <g'\1>2. r8 <b\2>8  }
vTwoBarChorusTwoRepeatOneLineOneBarThree = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarChorusTwoRepeatOneLineOneBarThree = {   }
sBarChorusTwoRepeatOneLineOneBarThree = {  r1 }

vOneBarChorusTwoRepeatOneLineOneBarFour = {  <d'\2>4 <d'\2>8 <e'\1>4 <fs'\1>4.  }
vTwoBarChorusTwoRepeatOneLineOneBarFour = {  <g,\6>4 <d\4>4 <g,\6>4 <d\4>4  }
cBarChorusTwoRepeatOneLineOneBarFour = {   }
sBarChorusTwoRepeatOneLineOneBarFour = {  r1 }

vOneBarChorusTwoAlternativeOneLineOneBarOne = {  <fs'\1>4. <d'\2>4 <a\3>4 <d'~\2>8  }
vTwoBarChorusTwoAlternativeOneLineOneBarOne = {  <d,\6>4 <d\4>4 <d,\6>4 <d\4>4  }
cBarChorusTwoAlternativeOneLineOneBarOne = {   }
sBarChorusTwoAlternativeOneLineOneBarOne = {  r1 }

vOneBarChorusTwoAlternativeOneLineOneBarTwo = {  <d'\2>8 <a\3>4 <d'\2>4 <a\3>8 \skip 4  }
vTwoBarChorusTwoAlternativeOneLineOneBarTwo = {  <d,\6>4 <d\4>4 <d,\6>4 <d\4>4  }
cBarChorusTwoAlternativeOneLineOneBarTwo = {   }
sBarChorusTwoAlternativeOneLineOneBarTwo = {  r1 }

vOneBarChorusTwoAlternativeOneLineTwoBarOne = {  <d'\2>4 <e'\2>4 <fs'\2>4 <d'\2>4  }
vTwoBarChorusTwoAlternativeOneLineTwoBarOne = {  <d,\6>4 <g\4>4 <a\4>4 <fs\4>4  }
cBarChorusTwoAlternativeOneLineTwoBarOne = {   }
sBarChorusTwoAlternativeOneLineTwoBarOne = {  r1 }

vOneBarChorusTwoAlternativeOneLineTwoBarTwo = {  <g'\2>4 <fs'\2>4 <e'\2>4 <d'\2>4  }
vTwoBarChorusTwoAlternativeOneLineTwoBarTwo = {  <d,\6>4 <a\4>4 <g\4>4 <fs\4>4  }
cBarChorusTwoAlternativeOneLineTwoBarTwo = {   }
sBarChorusTwoAlternativeOneLineTwoBarTwo = {  r1 }

vOneBarChorusTwoAlternativeOneLineTwoBarThree = {  r1 }
vTwoBarChorusTwoAlternativeOneLineTwoBarThree = {  <d,\6 a,\5 d\4 a\3 d'\2 fs'\1 >1\arpeggio  }
cBarChorusTwoAlternativeOneLineTwoBarThree = {   }
sBarChorusTwoAlternativeOneLineTwoBarThree = {  r1 }


%-----------------------------------------------------------------------
% Lines

vOneLineIntroLineOne = { \vOneBarIntroLineOneBarOne \vOneBarIntroLineOneBarTwo \vOneBarIntroLineOneBarThree \vOneBarIntroLineOneBarFour \break }
vTwoLineIntroLineOne = { \vTwoBarIntroLineOneBarOne \vTwoBarIntroLineOneBarTwo \vTwoBarIntroLineOneBarThree \vTwoBarIntroLineOneBarFour \break }
cLineIntroLineOne = { \cBarIntroLineOneBarOne \cBarIntroLineOneBarTwo \cBarIntroLineOneBarThree \cBarIntroLineOneBarFour }
sLineIntroLineOne = { \sBarIntroLineOneBarOne \sBarIntroLineOneBarTwo \sBarIntroLineOneBarThree \sBarIntroLineOneBarFour }

vOneLineVerseRepeatOneLineOne = { \vOneBarVerseRepeatOneLineOneBarOne \vOneBarVerseRepeatOneLineOneBarTwo \vOneBarVerseRepeatOneLineOneBarThree \vOneBarVerseRepeatOneLineOneBarFour \vOneBarVerseRepeatOneLineOneBarFive \vOneBarVerseRepeatOneLineOneBarSix \break }
vTwoLineVerseRepeatOneLineOne = { \vTwoBarVerseRepeatOneLineOneBarOne \vTwoBarVerseRepeatOneLineOneBarTwo \vTwoBarVerseRepeatOneLineOneBarThree \vTwoBarVerseRepeatOneLineOneBarFour \vTwoBarVerseRepeatOneLineOneBarFive \vTwoBarVerseRepeatOneLineOneBarSix \break }
cLineVerseRepeatOneLineOne = { \cBarVerseRepeatOneLineOneBarOne \cBarVerseRepeatOneLineOneBarTwo \cBarVerseRepeatOneLineOneBarThree \cBarVerseRepeatOneLineOneBarFour \cBarVerseRepeatOneLineOneBarFive \cBarVerseRepeatOneLineOneBarSix }
sLineVerseRepeatOneLineOne = { \sBarVerseRepeatOneLineOneBarOne \sBarVerseRepeatOneLineOneBarTwo \sBarVerseRepeatOneLineOneBarThree \sBarVerseRepeatOneLineOneBarFour \sBarVerseRepeatOneLineOneBarFive \sBarVerseRepeatOneLineOneBarSix }

vOneLineVerseToChorusLineOne = { \vOneBarVerseToChorusLineOneBarOne \vOneBarVerseToChorusLineOneBarTwo \vOneBarVerseToChorusLineOneBarThree \vOneBarVerseToChorusLineOneBarFour \break }
vTwoLineVerseToChorusLineOne = { \vTwoBarVerseToChorusLineOneBarOne \vTwoBarVerseToChorusLineOneBarTwo \vTwoBarVerseToChorusLineOneBarThree \vTwoBarVerseToChorusLineOneBarFour \break }
cLineVerseToChorusLineOne = { \cBarVerseToChorusLineOneBarOne \cBarVerseToChorusLineOneBarTwo \cBarVerseToChorusLineOneBarThree \cBarVerseToChorusLineOneBarFour }
sLineVerseToChorusLineOne = { \sBarVerseToChorusLineOneBarOne \sBarVerseToChorusLineOneBarTwo \sBarVerseToChorusLineOneBarThree \sBarVerseToChorusLineOneBarFour }

vOneLineVerseToChorusLineTwo = { \vOneBarVerseToChorusLineTwoBarOne \vOneBarVerseToChorusLineTwoBarTwo \vOneBarVerseToChorusLineTwoBarThree \vOneBarVerseToChorusLineTwoBarFour \break }
vTwoLineVerseToChorusLineTwo = { \vTwoBarVerseToChorusLineTwoBarOne \vTwoBarVerseToChorusLineTwoBarTwo \vTwoBarVerseToChorusLineTwoBarThree \vTwoBarVerseToChorusLineTwoBarFour \break }
cLineVerseToChorusLineTwo = { \cBarVerseToChorusLineTwoBarOne \cBarVerseToChorusLineTwoBarTwo \cBarVerseToChorusLineTwoBarThree \cBarVerseToChorusLineTwoBarFour }
sLineVerseToChorusLineTwo = { \sBarVerseToChorusLineTwoBarOne \sBarVerseToChorusLineTwoBarTwo \sBarVerseToChorusLineTwoBarThree \sBarVerseToChorusLineTwoBarFour }

vOneLineChorusRepeatOneLineOne = { \vOneBarChorusRepeatOneLineOneBarOne \vOneBarChorusRepeatOneLineOneBarTwo \vOneBarChorusRepeatOneLineOneBarThree \vOneBarChorusRepeatOneLineOneBarFour \break }
vTwoLineChorusRepeatOneLineOne = { \vTwoBarChorusRepeatOneLineOneBarOne \vTwoBarChorusRepeatOneLineOneBarTwo \vTwoBarChorusRepeatOneLineOneBarThree \vTwoBarChorusRepeatOneLineOneBarFour \break }
cLineChorusRepeatOneLineOne = { \cBarChorusRepeatOneLineOneBarOne \cBarChorusRepeatOneLineOneBarTwo \cBarChorusRepeatOneLineOneBarThree \cBarChorusRepeatOneLineOneBarFour }
sLineChorusRepeatOneLineOne = { \sBarChorusRepeatOneLineOneBarOne \sBarChorusRepeatOneLineOneBarTwo \sBarChorusRepeatOneLineOneBarThree \sBarChorusRepeatOneLineOneBarFour }

vOneLineChorusAlternativeOneLineOne = { \vOneBarChorusAlternativeOneLineOneBarOne \vOneBarChorusAlternativeOneLineOneBarTwo  }
vTwoLineChorusAlternativeOneLineOne = { \vTwoBarChorusAlternativeOneLineOneBarOne \vTwoBarChorusAlternativeOneLineOneBarTwo  }
cLineChorusAlternativeOneLineOne = { \cBarChorusAlternativeOneLineOneBarOne \cBarChorusAlternativeOneLineOneBarTwo }
sLineChorusAlternativeOneLineOne = { \sBarChorusAlternativeOneLineOneBarOne \sBarChorusAlternativeOneLineOneBarTwo }

vOneLineChorusAlternativeOneLineTwo = { \vOneBarChorusAlternativeOneLineTwoBarOne \vOneBarChorusAlternativeOneLineTwoBarTwo \break }
vTwoLineChorusAlternativeOneLineTwo = { \vTwoBarChorusAlternativeOneLineTwoBarOne \vTwoBarChorusAlternativeOneLineTwoBarTwo \break }
cLineChorusAlternativeOneLineTwo = { \cBarChorusAlternativeOneLineTwoBarOne \cBarChorusAlternativeOneLineTwoBarTwo }
sLineChorusAlternativeOneLineTwo = { \sBarChorusAlternativeOneLineTwoBarOne \sBarChorusAlternativeOneLineTwoBarTwo }

vOneLineBridgeLineOne = { \vOneBarBridgeLineOneBarOne \vOneBarBridgeLineOneBarTwo \vOneBarBridgeLineOneBarThree \vOneBarBridgeLineOneBarFour \vOneBarBridgeLineOneBarFive \vOneBarBridgeLineOneBarSix \break }
vTwoLineBridgeLineOne = { \vTwoBarBridgeLineOneBarOne \vTwoBarBridgeLineOneBarTwo \vTwoBarBridgeLineOneBarThree \vTwoBarBridgeLineOneBarFour \vTwoBarBridgeLineOneBarFive \vTwoBarBridgeLineOneBarSix \break }
cLineBridgeLineOne = { \cBarBridgeLineOneBarOne \cBarBridgeLineOneBarTwo \cBarBridgeLineOneBarThree \cBarBridgeLineOneBarFour \cBarBridgeLineOneBarFive \cBarBridgeLineOneBarSix }
sLineBridgeLineOne = { \sBarBridgeLineOneBarOne \sBarBridgeLineOneBarTwo \sBarBridgeLineOneBarThree \sBarBridgeLineOneBarFour \sBarBridgeLineOneBarFive \sBarBridgeLineOneBarSix }

vOneLineInterludeLineOne = { \repeat volta 3 { \vOneBarInterludeLineOneRepeatOneBarOne \vOneBarInterludeLineOneRepeatOneBarTwo } \vOneBarInterludeLineOneBarOne \vOneBarInterludeLineOneBarTwo \break }
vTwoLineInterludeLineOne = { \repeat volta 3 { \vTwoBarInterludeLineOneRepeatOneBarOne \vTwoBarInterludeLineOneRepeatOneBarTwo } \vTwoBarInterludeLineOneBarOne \vTwoBarInterludeLineOneBarTwo \break }
cLineInterludeLineOne = { \repeat volta 3 { \cBarInterludeLineOneRepeatOneBarOne \cBarInterludeLineOneRepeatOneBarTwo } \cBarInterludeLineOneBarOne \cBarInterludeLineOneBarTwo }
sLineInterludeLineOne = { \repeat volta 3 { \sBarInterludeLineOneRepeatOneBarOne \sBarInterludeLineOneRepeatOneBarTwo } \sBarInterludeLineOneBarOne \sBarInterludeLineOneBarTwo }

vOneLineVerseTwoLineOne = { \vOneBarVerseTwoLineOneBarOne \vOneBarVerseTwoLineOneBarTwo \vOneBarVerseTwoLineOneBarThree \vOneBarVerseTwoLineOneBarFour \vOneBarVerseTwoLineOneBarFive \vOneBarVerseTwoLineOneBarSix \break }
vTwoLineVerseTwoLineOne = { \vTwoBarVerseTwoLineOneBarOne \vTwoBarVerseTwoLineOneBarTwo \vTwoBarVerseTwoLineOneBarThree \vTwoBarVerseTwoLineOneBarFour \vTwoBarVerseTwoLineOneBarFive \vTwoBarVerseTwoLineOneBarSix \break }
cLineVerseTwoLineOne = { \cBarVerseTwoLineOneBarOne \cBarVerseTwoLineOneBarTwo \cBarVerseTwoLineOneBarThree \cBarVerseTwoLineOneBarFour \cBarVerseTwoLineOneBarFive \cBarVerseTwoLineOneBarSix }
sLineVerseTwoLineOne = { \sBarVerseTwoLineOneBarOne \sBarVerseTwoLineOneBarTwo \sBarVerseTwoLineOneBarThree \sBarVerseTwoLineOneBarFour \sBarVerseTwoLineOneBarFive \sBarVerseTwoLineOneBarSix }

vOneLineVerseToChorusTwoLineOne = { \vOneBarVerseToChorusTwoLineOneBarOne \vOneBarVerseToChorusTwoLineOneBarTwo \vOneBarVerseToChorusTwoLineOneBarThree \vOneBarVerseToChorusTwoLineOneBarFour \break }
vTwoLineVerseToChorusTwoLineOne = { \vTwoBarVerseToChorusTwoLineOneBarOne \vTwoBarVerseToChorusTwoLineOneBarTwo \vTwoBarVerseToChorusTwoLineOneBarThree \vTwoBarVerseToChorusTwoLineOneBarFour \break }
cLineVerseToChorusTwoLineOne = { \cBarVerseToChorusTwoLineOneBarOne \cBarVerseToChorusTwoLineOneBarTwo \cBarVerseToChorusTwoLineOneBarThree \cBarVerseToChorusTwoLineOneBarFour }
sLineVerseToChorusTwoLineOne = { \sBarVerseToChorusTwoLineOneBarOne \sBarVerseToChorusTwoLineOneBarTwo \sBarVerseToChorusTwoLineOneBarThree \sBarVerseToChorusTwoLineOneBarFour }

vOneLineVerseToChorusTwoLineTwo = { \vOneBarVerseToChorusTwoLineTwoBarOne \vOneBarVerseToChorusTwoLineTwoBarTwo \vOneBarVerseToChorusTwoLineTwoBarThree \vOneBarVerseToChorusTwoLineTwoBarFour \break }
vTwoLineVerseToChorusTwoLineTwo = { \vTwoBarVerseToChorusTwoLineTwoBarOne \vTwoBarVerseToChorusTwoLineTwoBarTwo \vTwoBarVerseToChorusTwoLineTwoBarThree \vTwoBarVerseToChorusTwoLineTwoBarFour \break }
cLineVerseToChorusTwoLineTwo = { \cBarVerseToChorusTwoLineTwoBarOne \cBarVerseToChorusTwoLineTwoBarTwo \cBarVerseToChorusTwoLineTwoBarThree \cBarVerseToChorusTwoLineTwoBarFour }
sLineVerseToChorusTwoLineTwo = { \sBarVerseToChorusTwoLineTwoBarOne \sBarVerseToChorusTwoLineTwoBarTwo \sBarVerseToChorusTwoLineTwoBarThree \sBarVerseToChorusTwoLineTwoBarFour }

vOneLineChorusTwoRepeatOneLineOne = { \vOneBarChorusTwoRepeatOneLineOneBarOne \vOneBarChorusTwoRepeatOneLineOneBarTwo \vOneBarChorusTwoRepeatOneLineOneBarThree \vOneBarChorusTwoRepeatOneLineOneBarFour \break }
vTwoLineChorusTwoRepeatOneLineOne = { \vTwoBarChorusTwoRepeatOneLineOneBarOne \vTwoBarChorusTwoRepeatOneLineOneBarTwo \vTwoBarChorusTwoRepeatOneLineOneBarThree \vTwoBarChorusTwoRepeatOneLineOneBarFour \break }
cLineChorusTwoRepeatOneLineOne = { \cBarChorusTwoRepeatOneLineOneBarOne \cBarChorusTwoRepeatOneLineOneBarTwo \cBarChorusTwoRepeatOneLineOneBarThree \cBarChorusTwoRepeatOneLineOneBarFour }
sLineChorusTwoRepeatOneLineOne = { \sBarChorusTwoRepeatOneLineOneBarOne \sBarChorusTwoRepeatOneLineOneBarTwo \sBarChorusTwoRepeatOneLineOneBarThree \sBarChorusTwoRepeatOneLineOneBarFour }

vOneLineChorusTwoAlternativeOneLineOne = { \vOneBarChorusTwoAlternativeOneLineOneBarOne \vOneBarChorusTwoAlternativeOneLineOneBarTwo  }
vTwoLineChorusTwoAlternativeOneLineOne = { \vTwoBarChorusTwoAlternativeOneLineOneBarOne \vTwoBarChorusTwoAlternativeOneLineOneBarTwo  }
cLineChorusTwoAlternativeOneLineOne = { \cBarChorusTwoAlternativeOneLineOneBarOne \cBarChorusTwoAlternativeOneLineOneBarTwo }
sLineChorusTwoAlternativeOneLineOne = { \sBarChorusTwoAlternativeOneLineOneBarOne \sBarChorusTwoAlternativeOneLineOneBarTwo }

vOneLineChorusTwoAlternativeOneLineTwo = { \vOneBarChorusTwoAlternativeOneLineTwoBarOne \vOneBarChorusTwoAlternativeOneLineTwoBarTwo \vOneBarChorusTwoAlternativeOneLineTwoBarThree \break }
vTwoLineChorusTwoAlternativeOneLineTwo = { \vTwoBarChorusTwoAlternativeOneLineTwoBarOne \vTwoBarChorusTwoAlternativeOneLineTwoBarTwo \vTwoBarChorusTwoAlternativeOneLineTwoBarThree \break }
cLineChorusTwoAlternativeOneLineTwo = { \cBarChorusTwoAlternativeOneLineTwoBarOne \cBarChorusTwoAlternativeOneLineTwoBarTwo \cBarChorusTwoAlternativeOneLineTwoBarThree }
sLineChorusTwoAlternativeOneLineTwo = { \sBarChorusTwoAlternativeOneLineTwoBarOne \sBarChorusTwoAlternativeOneLineTwoBarTwo \sBarChorusTwoAlternativeOneLineTwoBarThree }


%-----------------------------------------------------------------------
% Stanzas

vOneStanzaIntro = { \vOneLineIntroLineOne }
vTwoStanzaIntro = { \vTwoLineIntroLineOne }
cStanzaIntro = { \cLineIntroLineOne }
sStanzaIntro = { r1^"Intro" r1 r1 r1 }

vOneStanzaVerse = { \repeat volta 2 { \vOneLineVerseRepeatOneLineOne } }
vTwoStanzaVerse = { \repeat volta 2 { \vTwoLineVerseRepeatOneLineOne } }
cStanzaVerse = { \repeat volta 2 { \cLineVerseRepeatOneLineOne } }
sStanzaVerse = { r1^"Verse" r1 r1 r1 r1 r1 }

vOneStanzaVerseToChorus = { \vOneLineVerseToChorusLineOne \vOneLineVerseToChorusLineTwo }
vTwoStanzaVerseToChorus = { \vTwoLineVerseToChorusLineOne \vTwoLineVerseToChorusLineTwo }
cStanzaVerseToChorus = { \cLineVerseToChorusLineOne \cLineVerseToChorusLineTwo }
sStanzaVerseToChorus = { r1^"Verse to Chorus" r1 r1 r1 r1 r1 r1 r1 }

vOneStanzaChorus = { \repeat volta 2 { \vOneLineChorusRepeatOneLineOne } \alternative { { \vOneLineChorusAlternativeOneLineOne } { \vOneLineChorusAlternativeOneLineTwo } } }
vTwoStanzaChorus = { \repeat volta 2 { \vTwoLineChorusRepeatOneLineOne } \alternative { { \vTwoLineChorusAlternativeOneLineOne } { \vTwoLineChorusAlternativeOneLineTwo } } }
cStanzaChorus = { \repeat volta 2 { \cLineChorusRepeatOneLineOne } \alternative { { \cLineChorusAlternativeOneLineOne } { \cLineChorusAlternativeOneLineTwo } } }
sStanzaChorus = { r1^"Chorus" r1 r1 r1 r1 r1 r1 r1 }

vOneStanzaBridge = { \vOneLineBridgeLineOne }
vTwoStanzaBridge = { \vTwoLineBridgeLineOne }
cStanzaBridge = { \cLineBridgeLineOne }
sStanzaBridge = { r1^"Bridge" r1 r1 r1 r1 r1 }

vOneStanzaInterlude = { \vOneLineInterludeLineOne }
vTwoStanzaInterlude = { \vTwoLineInterludeLineOne }
cStanzaInterlude = { \cLineInterludeLineOne }
sStanzaInterlude = { r1^"Interlude" r1 r1 r1 }

vOneStanzaVerseTwo = { \vOneLineVerseTwoLineOne }
vTwoStanzaVerseTwo = { \vTwoLineVerseTwoLineOne }
cStanzaVerseTwo = { \cLineVerseTwoLineOne }
sStanzaVerseTwo = { r1^"Verse 2" r1 r1 r1 r1 r1 }

vOneStanzaVerseToChorusTwo = { \vOneLineVerseToChorusTwoLineOne \vOneLineVerseToChorusTwoLineTwo }
vTwoStanzaVerseToChorusTwo = { \vTwoLineVerseToChorusTwoLineOne \vTwoLineVerseToChorusTwoLineTwo }
cStanzaVerseToChorusTwo = { \cLineVerseToChorusTwoLineOne \cLineVerseToChorusTwoLineTwo }
sStanzaVerseToChorusTwo = { r1^"Verse to Chorus 2" r1 r1 r1 r1 r1 r1 r1 }

vOneStanzaChorusTwo = { \repeat volta 3 { \vOneLineChorusTwoRepeatOneLineOne } \alternative { { \vOneLineChorusTwoAlternativeOneLineOne } { \vOneLineChorusTwoAlternativeOneLineTwo } } }
vTwoStanzaChorusTwo = { \repeat volta 3 { \vTwoLineChorusTwoRepeatOneLineOne } \alternative { { \vTwoLineChorusTwoAlternativeOneLineOne } { \vTwoLineChorusTwoAlternativeOneLineTwo } } }
cStanzaChorusTwo = { \repeat volta 3 { \cLineChorusTwoRepeatOneLineOne } \alternative { { \cLineChorusTwoAlternativeOneLineOne } { \cLineChorusTwoAlternativeOneLineTwo } } }
sStanzaChorusTwo = { r1^"Chorus 2" r1 r1 r1 r1 r1 r1 r1 r1 }


%-----------------------------------------------------------------------
% Scores

vOneScoreTabOneScoreOne = { \vOneStanzaIntro \vOneStanzaVerse \vOneStanzaVerseToChorus \vOneStanzaChorus \vOneStanzaBridge \vOneStanzaInterlude \vOneStanzaVerseTwo \vOneStanzaVerseToChorusTwo \vOneStanzaChorusTwo }
vTwoScoreTabOneScoreOne = { \vTwoStanzaIntro \vTwoStanzaVerse \vTwoStanzaVerseToChorus \vTwoStanzaChorus \vTwoStanzaBridge \vTwoStanzaInterlude \vTwoStanzaVerseTwo \vTwoStanzaVerseToChorusTwo \vTwoStanzaChorusTwo }
cScoreTabOneScoreOne = { \cStanzaIntro \cStanzaVerse \cStanzaVerseToChorus \cStanzaChorus \cStanzaBridge \cStanzaInterlude \cStanzaVerseTwo \cStanzaVerseToChorusTwo \cStanzaChorusTwo }
sScoreTabOneScoreOne = { \sStanzaIntro \sStanzaVerse \sStanzaVerseToChorus \sStanzaChorus \sStanzaBridge \sStanzaInterlude \sStanzaVerseTwo \sStanzaVerseToChorusTwo \sStanzaChorusTwo }


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
        \key g \major
        \voiceOne
        \vOne
      }
      \new Voice {
        \key g \major
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
