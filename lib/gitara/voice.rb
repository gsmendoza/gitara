module Gitara
  class Voice < Valuable
    has_value :id
    has_value :parent

    def call_name
      "\\#{definition_name}"
    end

    def definition_name
      "v#{id_as_word}"
    end

    def id_as_word
      Utilities.id_as_word(id)
    end

    def octave
      (self.parent.max_number_of_voices - self.id) + 1
    end

    def stem_type
      "\\voice#{id_as_word}"
    end

    def transposition
      "#{self.parent.transposition}#{"'" * self.octave}" if self.parent.transposition
    end
  end
end
