Gitara.define do
  bar :Intro do
    notes "<g'/1>8 <a/3>8 <g'/1>8 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>8"
    notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
  end

  line :Intro do
    bar :Intro, :Intro
  end

  line :Intro
end
