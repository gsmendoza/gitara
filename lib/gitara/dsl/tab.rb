module Gitara
  module Dsl
    class Tab
      constructor :voices, :accessors => true, :strict => false

      def self.parse(text)
        Transform.new.apply(Parser.new.parse(text))
      end
    end
  end
end
