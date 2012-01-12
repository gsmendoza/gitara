module Gitara
  module Node
    class Base
      constructor :children, :name, :id, :value, :accessors => true, :strict => false

      def children
        @children ||= []
      end

      def id_as_word
        id.en.numwords.camelize
      end

      def call_name
        "\\#{definition_name}"
      end

      def definition_name
        name
      end
    end
  end
end

