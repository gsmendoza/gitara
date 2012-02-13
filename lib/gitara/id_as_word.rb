module Gitara
  module IdAsWord
    def id_as_word
      id.en.numwords.gsub('-', '_').camelize
    end
  end
end

