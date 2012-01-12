module Gitara
  module Node
    class VoiceBar < Base
      def definition_name
        "v#{id_as_word}"
      end

      def stem_type
        "\\voice#{id_as_word}"
      end
    end
  end
end
