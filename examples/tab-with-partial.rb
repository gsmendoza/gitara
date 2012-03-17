Gitara.define do
  title "Huling El Bimbo"
  composer "Eraserheads"
  arranger "Arranged by George Mendoza"
  instrument "Guitar (capo on first fret)"
  midi_instrument "acoustic guitar (nylon)"
  transposition "cs"
  tempo "4 = 90"

  chords :G, 'r1-"G"'
  chords :G8, 'r8-"G"'
  chords :C, 'r1-"C"'
  chords :A7, 'r1-"A7"'
  chords :Em, 'r1-"Em"'
  chords :D, 'r1-"D"'

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