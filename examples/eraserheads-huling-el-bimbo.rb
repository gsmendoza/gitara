Gitara.define do
  title "Huling El Bimbo"
  composer "Eraserheads"
  arranger "Arranged by George Mendoza"
  instrument "Guitar (capo on first fret)"
  midi_instrument "acoustic guitar (nylon)"
  transposition "cs"
  tempo "4 = 90"

  chords :G, 'g1'
  chords :G8, 'g8'
  chords :C, 'c1'
  chords :A7, 'a1:7'
  chords :Em, 'e1:m'
  chords :D, 'd1'

  score do
    stanza "Verse" do
      line do
        bar do
          partial 8
          notes "<g/3>8"
          notes "r8"
          chords :G8
        end

        bar do
          notes "<a/3>16/glissando <b/3>16 <b/3>4 r16 <a/3>16/glissando <b/3>4. <a/3>16( <g/3>16)"
          notes "r1"
          chords :G
        end

        bar do
          notes "<a/3>8( <g/3>4) <cs'/2>4 <g/3>4."
          notes "/skip 8 r8 <e/4>4 <a,/5>4 <e/4>8 <b,/5>8"
          chords :A7
        end

        bar do
          notes "r4 <g/3>8 <g/3>8 <g/3>8 <a/3>8 <c'/2>8 <b~/2>8"
          notes "<c/5>4 <e/4>4 <c/5>4 <e/4>4"
          chords :C
        end

        bar do
          notes "<b/2>8 <g/3>8 <b/2>8 <b/2>16 <g/3>16 /skip 16 <b/2>16 <g/3>16 /skip 16 <b/2>16 <g/3>16 /skip 8"
          notes "<g,/6>4 <d/4>4 <d/4>16 /skip 16 /skip 16 <d/4>16 /skip 16 /skip 16 <d/4>8"
          chords :G
        end
      end

      line do
        bar do
          notes "r8 <g/3>8 <b/2>8 <b/2>16 <b/2>8 <b/2>16( <d'/2>8) <e'/1>4"
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4"
          chords :G
        end

        bar do
          notes "<a/3>16( <g/3>16)( <a/3>4) <cs'/2>4 <a/3>4 <b/2>8"
          notes "<a,/5>4 <e/4>4 <a,/5>4 <e/4>4"
          chords :A7
        end

        bar do
          notes "<c'/2>4. <d'/2>4 <c'/2>4 <b~/2>8"
          notes "<c/5>4 <e/4>4 <c/5>4 <e/4>4"
          chords :C
        end

        bar do
          notes "<b/2>8 <g/3>4 <g/3>4 <b/2>8 <b/2>8 <c'/2>8"
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4"
          chords :G
        end
      end

      line do
        bar do
          notes "<d'/2>4. <d'/2>4 <d'/2>4 <cs'~/2>8"
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4"
          chords :G
        end

        bar do
          notes "<cs'/2>8 <a/3>4 <a/3>4 <a/3>4 <b/2>8"
          notes "<a,/5>4 <e/4>4 <a,/5>4 <e/4>4"
          chords :A7
        end

        bar do
          notes "<c'/2>4 <c'/2>8 <d'/2>4 <e'/1>4 <b~/2>8"
          notes "<c/5>4 <e/4>4 <c/5>4 <e/4>4"
          chords :C
        end

        bar do
          notes "<b/2>8 <d'/2>4 <d'/2>4 <b/2>16 <a/3>8 <g/3>16( <a/3>8)"
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4"
          chords :G
        end
      end

      line do
        bar do
          notes "<b/2>4. <b/2>4 <b/2>16 <b/2>16 r16 <a/3>16 <b/2>8"
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4"
          chords :G
        end

        bar do
          notes "<a/3>16( <g/3>16) <e/4>4 <cs'/2>4 <g/3>16 <g/3>16 r16 <g/3>16 <g/3>8"
          notes "<a,/5>4 <e/4>4 <a,/5>4 <e/4>4"
          chords :A7
        end

        bar do
          notes "<g/3>4. <g/3>4 <a/3>8 <c'/2>8 <b~/2>8"
          notes "<c/5>4 <e/4>4 <c/5>4 <e/4>4"
          chords :C
        end

        bar do
          notes "<b/2>8 <g/3>4 <g/3>4 <g/3>4."
          notes "<g,/6>4 <d/4>4 <g,/6>4 <g,/6>8 <fs,/6>8"
          chords :G
        end
      end
    end

    stanza "Refrain" do
      line do
        bar do
          notes "r4 <g/3>8 <g/3>8 <g/3>8 <g/3>8 <e'/1>8 <d'~/2>8"
          notes "<e,/6>4 <e/4>4 <e,/6>4 <e/4>4"
          chords :Em
        end

        bar do
          notes "<d'/2>8 <b/2>4 <a/3>4 <a/3>4 <b/2>8"
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4"
          chords :G
        end

        bar do
          notes "<c'/2>4 <c'/2>8 <d'/2>4 <g/3>8( <a/3>8) <b~/2>8"
          notes "<c/5>4 <e/4>4 <c/5>4 <e/4>4"
          chords :C
        end

        bar do
          notes "<b/2>8 <a/3>4 <a/3>4 <a/3>4."
          notes "<a,/5>4 <d/4>4 <a,/5>4 <g,/6>8 <fs,/6>8"
          chords :D
        end
      end

      line do
        bar do
          notes "r4 <g/3>8 <g/3>8 <g/3>8 <g/3>8 <e'/1>8 <d'~/2>8"
          notes "<e,/6>4 <e/4>4 <e,/6>4 <e/4>4"
          chords :Em
        end

        bar do
          notes "<d'/2>8 <b/2>4 <a/3>4 <a/3>4 <b/2>8"
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4"
          chords :G
        end

        bar do
          notes "<c'/2>4 <c'/2>8 <d'/2>4 <e'/1>4 <e'~/1>8"
          notes "<c/5>4 <e/4>4 <c/5>4 <e/4>4"
          chords :C
        end

        bar do
          notes "<e'/1>8 <d'/2>4 <d'/2>4 <d'/2>4 <d'/2>8"
          notes "<a,/5>4 <d/4>4 <a,/5>4 <d/4>4"
          chords :D
        end

        bar do
          notes "<a/3 d'/2 >8 <a/3 d'/2 >8 <a/3 d'/2 >8 <a/3 d'/2 >8 <a/3 d'/2 >8 <b/2>8 <b/2>8 <c'/2>8"
          notes "<d/4>8 <d/4>8 <d/4>8 <d/4>8 <d/4>8 /skip 8 /skip 8 /skip 8"
          chords :D
        end
      end
    end

    stanza "Chorus" do
      line do
        bar do
          notes "<d'/2>4. <g'/1>4 <d'/2>4 <cs'~/2>8"
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4"
          chords :G
        end

        bar do
          notes "<cs'/2>4 <g'/1>8 <g'/1>4 <cs'/2>4 <c'~/2>8"
          notes "<a,/5>4 <e/4>4 <a,/5>4 <e/4>4"
          chords :A7
        end

        bar do
          notes "<c'/2>4. <d'/2>4 <e'/1>4 <b~/2>8"
          notes "<c/5>4 <e/4>4 <c/5>4 <e/4>4"
          chords :C
        end

        bar do
          notes "<b/2>8 <d'/2>4 <d'/2>4 <b/2>8 <b/2>8 <c'/2>8"
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4"
          chords :G
        end
      end

      line do
        bar do
          notes "<d'/2>4. <g'/1>4 <d'/2>4 <cs'~/2>8"
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4"
          chords :G
        end

        bar do
          notes "<cs'/2>4 <g'/1>8 <g'/1>4 <cs'/2>4 <c'~/2>8"
          notes "<a,/5>4 <e/4>4 <a,/5>4 <e/4>4"
          chords :A7
        end

        bar do
          notes "<c'/2>4. <d'/2>4 <c'/2>4 <b~/2>8"
          notes "<c/5>4 <e/4>4 <c/5>4 <e/4>4"
          chords :C
        end

        bar do
          notes "<b/2>8 <g/3>4 <g/3>4 <g/3>4 <g/3>8"
          notes "<g,/6>4 <d/4>4 <g,/6>4 <d/4>4"
          chords :G
        end

        bar do
          notes "<g/3 d'/2 g'/1 >1"
          notes "<g,/6 b,/5 d/4 >1"
          chords :G
        end
      end
    end
  end
end
