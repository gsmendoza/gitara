Gitara.define do
  line do
    repeat 4 do
      bar do
        notes "c4 d e f"
      end
    end

    alternative do
      bar do
        notes "d2 e"
      end

      bar do
        notes "f2 g"
      end
    end
  end
end