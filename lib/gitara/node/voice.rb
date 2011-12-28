module Gitara
  module Node
    class Voice
      constructor :value, :accessors => true

      def self.parse(text)
        matches = text.match(/\s*(.*)\s*:\s*(.*)\s*/)

        Voice.new(:value => matches[2])
      end
    end
  end
end
