Gitara.define do
  title "Walking After You"
  composer "Foo Fighters"
  arranger "Arranged by George Mendoza"
  instrument "DADGBE (capo on second fret)"
  midi_instrument "acoustic guitar (nylon)"

  string_tunings "#guitar-drop-d-tuning"
  tempo "4 = 100"
  transposition "d"
  
  score do
    line :manual_break => false do 
      bar do
        notes "<fs'/1>4. <d'/2>4 <a/3>4 <d'~/2>8 "
        notes "<d,/6>4 <d/4>4 <d,/6>4 <d/4>4 "
      end

      bar do
        notes "<d'/2>8 <a/3>4 <d'/2>4 <a/3>8 /skip 4 "
        notes "<d,/6>4 <d/4>4 <d,/6>4 <d/4>4 "
      end
    end
    
    line do 
      bar do
        notes "/skip 4 r8 <d'/2 fs'/1 >4 <d'/2 fs'/1 >4 <d'~/2 fs'~/1 >8 "
        notes "<d,/6>4 <d/4>4 r4 <d/4>4 "
      end

      bar do
        notes "<d'/2 fs'/1 >8 <d'/2 fs'/1 >4 <d'/2>8 <d'/2>8 <e'/1>4. "
        notes "r4 <d/4>4 r4 r4 "
      end
    end
  end
end
