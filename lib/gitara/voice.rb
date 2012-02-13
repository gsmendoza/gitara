module Gitara
  class Voice < Valuable
    include IdAsWord

    has_value :id
    has_value :parent

    def call_name
      "\\#{definition_name}"
    end

    def definition_name
      "v#{id_as_word}"
    end

    def stem_type
      "\\voice#{id_as_word}"
    end
  end
end
