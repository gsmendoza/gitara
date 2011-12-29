module Gitara
  module Node
    class Voice
      constructor :id, :value, :accessors => true, :strict => false

      def definition_name
        "v#{id_as_word}"
      end

      def id_as_word
        id.en.numwords.camelize
      end

      def name
        "\\#{definition_name}"
      end

      def parse_attributes_from_text(text)
        matches = text.match(/\s*(.*)\s*:\s*(.*)\s*/)

        self.value = matches[2]
      end

      def stem_type
        "\\voice#{id_as_word}"
      end
    end
  end
end
