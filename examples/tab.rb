Gitara.define do
  bar :BeganIt do
    notes "/skip 4 <a/3 c'/2 >8 <g/3>8 /skip 4 <g/3 c'/2 >8 <g/3>8"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
  end

  bar :ItsNot do
    notes "r8 <g'/1>4 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>16( <a/3>16)"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
  end

  bar :ItThough do
    notes "r8 <d'/2>16( <c'/2>16) r8 <a/3>16 <c'/2>16 r8 <d'/2>16( <c'/2>16) r8 <a/3>8"
    notes "<f/4>4 <f/4>4 <d/4>4 <d/4>4"
  end

  bar :WhatYouThought do
    notes "r8 <g'/1>4 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>8"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
  end

  bar :WhenYouFirst do
    notes "<e'/1>8 <d'/2>16( <c'/2>8) <a/3>8. <c'/2>4 <a/3>8 <c'/2>8"
    notes "<a,/5>4 <a,/5>8 <e/4>4 <a,/5>4 /skip 8"
  end

  bar :YouGot do
    notes "<g'/1>8 <a/3>8 <g'/1>8 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>16( <a/3>16)"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
  end

  line :VerseOneLineTwo do
    bar :YouGot, :WhatYouThought, :WhenYouFirst, :ItThough
  end

  score do
    line do
      bar :ItsNot, :WhatYouThought, :WhenYouFirst, :BeganIt
    end

    line :VerseOneLineTwo
  end
end
