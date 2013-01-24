Gitara.define do
  chords :CG, 'c2 g:sus4'
  chords :FE, 'f2 e'

  line do
    bar do
      notes "a4 e c8 e r4"
      chords :CG
    end

    bar do
      notes "b2 c4( d)"
      chords :FE
    end
  end
end
