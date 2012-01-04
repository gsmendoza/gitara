module Gitara
  module Dsl
    class Tab
      constructor :voices, :accessors => true, :strict => false

      def self.parse(text)
        tokens = Parser.new.parse(text)
        Tab.new(:voices => Transform.new.apply(tokens))
      end
    end
  end
end
