module Gitara
  module Utilities
    def self.id_as_word(id)
      id.en.numwords.gsub('-', '_').camelize
    end
  end
end

