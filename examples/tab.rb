Gitara.define do
  title "Wise Up"
  composer "Aimee Mann"
  arranger "Arranged by George Mendoza"
  instrument "Guitar (capo on second fret)"
  midi_instrument "acoustic guitar (nylon)"
  transposition "d"
  tempo "4 = 75"

  chords :Am,   'r4-"Am" r r r'
  chords :AmC,  'r4-"Am" r r-"C" r'
  chords :BbF,  'r4-"Bb" r r-"F" r'
  chords :CCGE, 'r4-"C" r r-"G" r-"E"'
  chords :D,    'r4-"D" r r r'
  chords :FC,   'r4-"F" r r-"C" r'
  chords :FD,   'r4-"F" r r-"D" r'

  bar :BeganIt do
    notes "/skip 4 <a/3 c'/2 >8 <g/3>8 /skip 4 <g/3 c'/2 >8 <g/3>8"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
    chords :FC
  end

  bar :ItsNot do
    notes "r8 <g'/1>4 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>16( <a/3>16)"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
    chords :FC
  end

  bar :ItThough do
    notes "r8 <d'/2>16( <c'/2>16) r8 <a/3>16 <c'/2>16 r8 <d'/2>16( <c'/2>16) r8 <a/3>8"
    notes "<f/4>4 <f/4>4 <d/4>4 <d/4>4"
    chords :FD
  end

  bar :WhatYouThought do
    notes "r8 <g'/1>4 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>8"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
    chords :FC
  end

  bar :WhenYouFirst do
    notes "<e'/1>8 <d'/2>16( <c'/2>8) <a/3>8. <c'/2>4 <a/3>8 <c'/2>8"
    notes "<a,/5>4 <a,/5>8 <e/4>4 <a,/5>4 /skip 8"
    chords :Am
  end

  bar :YouGot do
    notes "<g'/1>8 <a/3>8 <g'/1>8 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>16( <a/3>16)"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
    chords :FC
  end

  line :VerseOneLineTwo do
    bar :YouGot, :WhatYouThought, :WhenYouFirst, :ItThough
  end

  score do
    stanza "Verse 1" do
      line do
        bar :ItsNot, :WhatYouThought, :WhenYouFirst, :BeganIt
      end

      line :VerseOneLineTwo
    end
  end
end
