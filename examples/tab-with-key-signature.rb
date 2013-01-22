Gitara.define do
  key 'd \major'
  string_tunings "#guitar-drop-d-tuning"
  tempo "4 = 100"
  transposition "d"

  bar do
    notes "<d'/2 fs'/1 >4. <fs'/1 d'/2 >4 <fs'/1 d'/2 >8 /skip 4"
    notes "<d,/6>4 <d/4>2 <d/4>8 <a,/5>8"
  end
end
