Gitara.define do
  title "Wise Up"
  composer "Aimee Mann"
  arranger "Arranged by George Mendoza"
  instrument "Guitar (capo on second fret)"
  midi_instrument "acoustic guitar (nylon)"
  tempo "4 = 75"
  transposition "d"

  chords :Am,   'a1:m'
  chords :AmC,  'a2:m c2'
  chords :BbF,  'bf2 f2'
  chords :CCGE, 'c2 g4 e4'
  chords :D,    'd1'
  chords :FC,   'f2 c2'
  chords :FD,   'f2 d2'

  bar :BeforeYouSign do
    notes "r8 <d'/2>16( <c'/2>8.) <a/3>16 <c'/2>8. <d'/2>16 <e'/1>8. <g/3>8"
    notes "<d/4>4 <d/4>4 <d/4>4 <d/4>4"
    chords :D
  end

  bar :BeganIt do
    notes "/skip 4 <a/3 c'/2 >8 <g/3>8 /skip 4 <g/3 c'/2 >8 <g/3>8"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
    chords :FC
  end

  bar :ItThough do
    notes "r8 <d'/2>16( <c'/2>16) r8 <a/3>16 <c'/2>16 r8 <d'/2>16( <c'/2>16) r8 <a/3>8"
    notes "<f/4>4 <f/4>4 <d/4>4 <d/4>4"
    chords :FD
  end

  bar :FDm do
    notes "r8 <a/3>8 <c'/2>8 <a/3>8 r8 <d'/2>8 <a/3>8 <e'/1>8"
    notes "<f/4>4 <f/4>4 <d/4>2"
    chords :FD
  end

  bar :Intro do
    notes "<g'/1>8 <a/3>8 <g'/1>8 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>8"
    notes "<f/4>4 <f/4>4 <c/5>4  <e/4>4"
    chords :FC
  end

  bar :ItsNot do
    notes "r8 <g'/1>4 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>16( <a/3>16)"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
    chords :FC
  end

  bar :ItsNotGoingToStop do
    notes "<g'/1>8 <a/3>8 <g'/1>16 <g'/1>16/glissando <a'/1>4 <e'/2>4 <d'/2>16( <c'/2>16)"
    notes "<f/4>4 <f/4>4 <d/4>4 <d/4>4"
    chords :FD
  end

  bar :ItsNotGoingToStopCcge do
    notes "<g'/1>8 <g/3>8 <g'/1>16 <g'/1>16/glissando <a'/1>4 <d'/2>4 <c'/2>8"
    notes "<c/5>4 <c/5>4 <g,/6>4 <e,/6>4"
    chords :CCGE
  end

  bar :ItsNotGoingToStopCcgeTwo do
    notes "r8 <g/3>8 <e'/1>8 <g'/1>8 r8 <d'/2>4 <c'/2>8"
    notes "<c/5>4 <e/4>4 <g,/6>4 <e,/6>4"
    chords :CCGE
  end

  bar :Outro do
    notes "<g'/1>8 <a/3>8 <g'/1>8 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>8"
    notes "<a,/5>4 <a,/5>4 <c/5>4  <c/5>4"
    chords :AmC
  end

  bar :PrepareAList do
    notes "<e'/1>8 <d'/2>16( <c'/2>8.) <a/3>16 <c'/2>8. <d'/2>16 <e'/1>8. <a/3>16 <e'/1>16"
    notes "<a,/5>4 <a,/5>4 <a,/5>4 <a,/5>4"
    chords :Am
  end

  bar :SoJustGiveUp do
    notes "r8 <g/3>8 <c'/2>8 <a/3>8 <a/3 c'/2 g'/1 f/4 >4 <c'/3 e'/2 a'/1 >4"
    notes "<as,/5>4 <d/4>4 /skip 2"
    chords :BbF
  end

  bar :TheresACure do
    notes "r8 <d'/2>16( <c'/2>8.) <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>8"
    notes "<f/4>4 <f/4>4 <c/5>4 <c/5>4"
    chords :FC
  end

  bar :TilYouWiseUp do
    notes "r8 <g/3>8 <c'/2>8 <g/3>8 <d'/2>4 <a/3>4"
    notes "<as,/5>4 <d/4>4 <f/4>4 <f/4>4"
    chords :BbF
  end

  bar :TilYouWiseUpTwo do
    notes "r8 <g/3>8 <c'/2>8 <g/3>8 <d'/2>8 <a/3>8 r8 <c'/2>8"
    notes "<as,/5>4 <d/4>4 <f/4>4 <f/4>4"
    chords :BbF
  end

  bar :TilYouWiseUpThree do
    notes "r8 <g/3>8 <c'/2>8 <a/3>8 <d'/2>8 <e'/1>8 r8 <e'/1>8"
    notes "<as,/5>4 <d/4>4 <f/4>4 <f/4>4"
    chords :BbF
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

  bar :YoureSure do
    notes "r8 <g'/1>4 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <e'/1>8"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
    chords :FC
  end

  #-----------------------------------------------------------------------

  line :ChorusOneLineOne do
    bar :ItsNotGoingToStop, :FDm, :ItsNotGoingToStop, :FDm
  end

  line :IntroLineOne do
    bar :Intro, :Intro, :Intro, :Intro
  end

  line :VerseOneLineTwo do
    bar :YouGot, :WhatYouThought, :WhenYouFirst, :ItThough
  end

  #-----------------------------------------------------------------------

  score do
    stanza "Intro" do
      line :IntroLineOne
    end

    stanza "Verse 1" do
      line do
        bar :ItsNot, :WhatYouThought, :WhenYouFirst, :BeganIt
      end

      line :VerseOneLineTwo
    end

    stanza "Chorus 1" do
      line :ChorusOneLineOne
      line do
        bar :ItsNotGoingToStopCcge, :TilYouWiseUp, :Intro, :Intro
      end
    end

    stanza "Verse 2" do
      line do
        bar :YoureSure, :TheresACure, :WhenYouFirst, :BeganIt
      end

      line :VerseOneLineTwo
    end

    stanza "Chorus 2" do
      line :ChorusOneLineOne
      line do
        bar :ItsNotGoingToStopCcge, :TilYouWiseUpTwo, :Intro, :Intro
      end
    end

    stanza "Bridge" do
      line do
        bar :PrepareAList, :BeforeYouSign
      end
    end

    stanza "Chorus 3" do
      line :ChorusOneLineOne

      line do
        bar :ItsNotGoingToStopCcge, :TilYouWiseUpThree, :ItsNotGoingToStopCcgeTwo, :TilYouWiseUpThree
      end

      line do
        bar :ItsNotGoingToStopCcgeTwo, :TilYouWiseUpThree, :ItsNotGoingToStopCcgeTwo, :SoJustGiveUp
      end
    end

    stanza "Outro" do
      line :IntroLineOne
      line do
        bar :Outro, :Outro, :Outro, :Outro
      end
    end
  end
end
