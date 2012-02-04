module Gitara
  class Voice
    constructor :id, :parent, :accessors => true, :strict => false

    def call_name
      "\\#{definition_name}"
    end

    def definition_name
      "v#{id_as_word}"
    end

    def id_as_word
      id.en.numwords.camelize
    end

    def stem_type
      "\\voice#{id_as_word}"
    end
  end
end
