Gitara.define do
  title "Walking After You"
  composer "Foo Fighters"
  arranger "Arranged by George Mendoza"
  instrument "DADGBE (capo on second fret)"
  key 'g \major'
  midi_instrument "acoustic guitar (nylon)"
  string_tunings "#guitar-drop-d-tuning"
  tempo "4 = 100"
  transposition "d"
  
  score do
    stanza "Intro" do
      line do 
        bar do
          notes "/skip 4 r8 <d'/2 fs'/1 >4 <fs'/1 d'/2 >4 /skip 8 "
          notes "<fs'/1 d'/2 a/3 d/4 a,/5 d,/6 >4/arpeggio <d/4>4 r4 <d/4>8 <a,/5>8 "
        end

        bar do
          notes "r8 r8 r8 <d'/2 fs'/1 >4 <fs'/1 d'/2 >4 /skip 8 "
          notes "<d,/6>4 <d/4>4 r4 <d/4>8 <a,/5>8 "
        end

        bar do
          notes "<d'/2>4 <e'/2>4 <fs'/2>4 <d'/2>4 "
          notes "<d,/6>4 <g/4>4 <a/4>4 <fs/4>4 "
        end

        bar do
          notes "<g'/2>4 <fs'/2>4 <e'/2>4 <d'/2>4 "
          notes "<d,/6>4 <a/4>4 <g/4>4 <fs/4>4 "
        end
      end
    end
    
    stanza "Verse" do
      repeat 2 do
        line do 
          bar do
            notes "<d'/2 fs'/1 >4. <fs'/1 d'/2 >4 <fs'/1 d'/2 >8 /skip 8 /skip 8 "
            notes "<d,/6>4 <d/4>4 r4 <d/4>8 <a,/5>8 "
          end

          bar do
            notes "<fs'/1>4 <e'/1>8 <d'/2>4 <b~/2>8 <b/2>4 "
            notes "<fs,/6>4 <d/4>4 <fs,/6>4 <d/4>4 "
          end

          bar do
            notes "<b/2>4 <d'/2>8 <b/2>4 <e'~/1>8 <e'/1>4 "
            notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
          end

          bar do
            notes "<b/2>4. <b/2>8 <e'/1>8 <fs'/2>8 <e'/1>8 <d'/2>8 "
            notes "<gs,/6>4 <d/4>4 <gs,/6>4 <d/4>4 "
          end

          bar do
            notes "<d'/2>4. <b/2>4 <b/2>4 <b/2>8 "
            notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
          end

          bar do
            notes "<cs'/2>4 <cs'/2>4 <cs'/2>8 <d'~/2>8 <d'/2>4 "
            notes "<a,/5>4 <e/4>4 <a,/5>4 <e/4>4 "
          end
        end
      end
    end
    
    stanza "Verse to Chorus" do
      line do 
        bar do
          notes "r4. <d'/2 e'/1 >4 <d'/2 e'/1 >4 /skip 8 "
          notes "<d,/6>4 <d/4>4 r4 <d/4>8 <a,/5>8 "
        end

        bar do
          notes "<cs'/2>4 <cs'/2>4 <cs'/2>8 <d'/2>4 <e'~/1>8 "
          notes "<fs,/6>4 <d/4>4 <fs,/6>4 <d/4>4 "
        end

        bar do
          notes "<e'/1>4. <b/2 e'/1 >4 <b/2 e'~/1 >8 <e'/1>4 "
          notes "<g,/6>4 <d/4>4 r4 <d/4>8 <g,/6>8 "
        end

        bar do
          notes "<b/2>4. <b/2>8 <e'/1>8 <fs'/2>8 <e'/1>8 <d'/2>8 "
          notes "<gs,/6>4 <d/4>4 <gs,/6>4 <d/4>4 "
        end
      end
      
      line do 
        bar do
          notes "<d'/2>4. <b/2>4 <b/2>4 <b/2>8 "
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
        end

        bar do
          notes "<cs'/2>4 <cs'/2>4 <cs'/2>8 <d'~/2>8 <d'/2>4 "
          notes "<a,/5>4 <e/4>4 <a,/5>4 <e/4>4 "
        end

        bar do
          notes "<d'/2>4 <e'/2>4 <fs'/2>4 <d'/2>4 "
          notes "<d,/6>4 <g/4>4 <a/4>4 <fs/4>4 "
        end

        bar do
          notes "<g'/2>4 <fs'/2>4 <e'/2>4 <d'/2>4 "
          notes "<d,/6>4 <a/4>4 <g/4>4 <fs/4>4 "
        end
      end
    end

    stanza "Chorus" do
      repeat 2 do
        line do
          bar do
            notes "<b/2 gs/3 >2 <fs'/1>4 <fs'/1>4 "
            notes "<e,/6>4 <d/4>4 <e,/6>4 <d/4>4 "
          end

          bar do
            notes "<fs'/1>4 <e'/1>8 <d'/2>4 <b/2>4 <g'~/1>8 "
            notes "<e,/6>4 <d/4>4 <e,/6>4 <d/4>4 "
          end

          bar do
            notes "<g'/1>2. r8 <b/2>8 "
            notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
          end

          bar do
            notes "<d'/2>4 <d'/2>8 <e'/1>4 <fs'/1>4. "
            notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
          end
        end
      end
      
      alternative do 
        line manual_break: false do 
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
    
    stanza "Bridge" do
      line do 
        bar do
          notes "<fs'/1>4. <d'/2>4 <b/3>4. "
          notes "<b,/5>4 <fs/4>4 <b,/5>4 <fs/4>4 "
        end

        bar do
          notes "<b/3>4. <b/3>4 <d'/2>4 <g'~/1>8 "
          notes "<b,/5>4 <fs/4>4 <b,/5>4 <fs/4>4 "
        end

        bar do
          notes "<g'/1>4. <d'/2>4. /skip 4 "
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
        end

        bar do
          notes "<d'/2>4. <e'/1>8 <fs'/1>8 <g'/1>4 <gs'~/1>8 "
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
        end

        bar do
          notes "<gs'/1>4. <e'/1>2 <b~/2>8 "
          notes "<e,/6>4 <d/4>4 <e,/6>4 <d/4>4 "
        end

        bar do
          notes "<b/2>4. <gs/3>4. /skip 4 "
          notes "<e,/6>4 <d/4>4 <e,/6>4 <d/4>4 "
        end
      end
    end
    
    stanza "Interlude" do
      line do
        repeat 3 do
          bar do
            notes "<d'/2>4 <e'/2>4 <fs'/2>4 <d'/2>4 "
            notes "<d,/6>4 <g/4>4 <a/4>4 <fs/4>4 "
          end

          bar do
            notes "<g'/2>4 <fs'/2>4 <e'/2>4 <d'/2>4 "
            notes "<d,/6>4 <a/4>4 <g/4>4 <fs/4>4 "
          end
        end
        
        bar do
          notes "<gs/3>8 <b/2>8 <e'/1>8 <gs/3>8 <b/2>8 <e'/1>8 <gs/3>8 <b/2>8 "
          notes "<e,/6>1 "
        end

        bar do
          notes "<e'/1>1 "
          notes "<e,/6>1 "
        end
      end
    end
    
    stanza "Verse 2" do
      line do
        bar do
          notes "<d'/2 fs'/1 >4. <fs'/1 d'/2 >4 <fs'/1 d'/2 >8 /skip 8 /skip 8 "
          notes "<d,/6>4 <d/4>4 r4 <d/4>8 <a,/5>8 "
        end

        bar do
          notes "<fs'/1>4 <e'/1>8 <d'/2>4 <b~/2>8 <b/2>4 "
          notes "<fs,/6>4 <d/4>4 <fs,/6>4 <d/4>4 "
        end

        bar do
          notes "<b/2>4 <d'/2>8 <b/2>4 <e'~/1>8 <e'/1>4 "
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
        end

        bar do
          notes "<b/2>4. <b/2>8 <e'/1>8 <fs'/2>8 <e'/1>8 <d'/2>8 "
          notes "<gs,/6>4 <d/4>4 <gs,/6>4 <d/4>4 "
        end

        bar do
          notes "<d'/2>4. <b/2>4 <b/2>4 <b/2>8 "
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
        end

        bar do
          notes "<cs'/2>4 <cs'/2>4 <cs'/2>8 <d'~/2>8 <d'/2>4 "
          notes "<a,/5>4 <e/4>4 <a,/5>4 <e/4>4 "
        end
      end
    end
    
    stanza "Verse to Chorus 2" do
      line do 
        bar do
          notes "r4. <d'/2 e'/1 >4 <d'/2 e'/1 >4 /skip 8 "
          notes "<d,/6>4 <d/4>4 r4 <d/4>8 <a,/5>8 "
        end

        bar do
          notes "<cs'/2>4 <cs'/2>4 <cs'/2>8 <d'/2>4 <e'~/1>8 "
          notes "<fs,/6>4 <d/4>4 <fs,/6>4 <d/4>4 "
        end

        bar do
          notes "<e'/1>4. <b/2 e'/1 >4 <b/2 e'~/1 >8 <e'/1>4 "
          notes "<g,/6>4 <d/4>4 r4 <d/4>8 <g,/6>8 "
        end

        bar do
          notes "<b/2>4. <b/2>8 <e'/1>8 <fs'/2>8 <e'/1>8 <d'/2>8 "
          notes "<gs,/6>4 <d/4>4 <gs,/6>4 <d/4>4 "
        end
      end
      
      line do
        bar do
          notes "<d'/2>4. <b/2>4 <b/2>4 <b/2>8 "
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
        end

        bar do
          notes "<cs'/2>4 <cs'/2>4 <cs'/2>8 <d'~/2>8 <d'/2>4 "
          notes "<a,/5>4 <e/4>4 <a,/5>4 <e/4>4 "
        end

        bar do
          notes "<d'/2>4 <e'/2>4 <fs'/2>4 <d'/2>4 "
          notes "<d,/6>4 <g/4>4 <a/4>4 <fs/4>4 "
        end

        bar do
          notes "<g'/2>4 <fs'/2>4 <e'/2>4 <d'/2>4 "
          notes "<d,/6>4 <a/4>4 <g/4>4 <fs/4>4 "
        end
      end
    end
    
    stanza "Chorus 2" do
      repeat 3 do
        line do
          bar do
            notes "<b/2 gs/3 >2 <fs'/1>4 <fs'/1>4 "
            notes "<e,/6>4 <d/4>4 <e,/6>4 <d/4>4 "
          end

          bar do
            notes "<fs'/1>4 <e'/1>8 <d'/2>4 <b/2>4 <g'~/1>8 "
            notes "<e,/6>4 <d/4>4 <e,/6>4 <d/4>4 "
          end

          bar do
            notes "<g'/1>2. r8 <b/2>8 "
            notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
          end

          bar do
            notes "<d'/2>4 <d'/2>8 <e'/1>4 <fs'/1>4. "
            notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4 "
          end
        end
      end
      
      alternative do
        line manual_break: false do
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
            notes "<d'/2>4 <e'/2>4 <fs'/2>4 <d'/2>4 "
            notes "<d,/6>4 <g/4>4 <a/4>4 <fs/4>4 "
          end

          bar do
            notes "<g'/2>4 <fs'/2>4 <e'/2>4 <d'/2>4 "
            notes "<d,/6>4 <a/4>4 <g/4>4 <fs/4>4 "
          end

          bar do
            notes "r1"
            notes "<d,/6 a,/5 d/4 a/3 d'/2 fs'/1 >1/arpeggio "
          end
        end
      end
    end
  end
end
