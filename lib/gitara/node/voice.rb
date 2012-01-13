module Gitara
  module Node
    class Voice < Base
      def definition_name
        "v#{id_as_word}"
      end

      def stem_type
        "\\voice#{id_as_word}"
      end

      def voice_bars
        parent.bars.map{|bar| bar.voice_bars[self.id - 1]}
      end
    end
  end
end
