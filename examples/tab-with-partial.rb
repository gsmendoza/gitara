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
      end
    end
  end
end
