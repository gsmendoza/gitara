module Gitara
  module Node
    class Base
      constructor :name, :id, :value, :accessors => true, :strict => false
      attr_accessor :children, :parent

      def children
        @children ||= []
      end

      def children=(children)
        @children = children
        @children.each_with_index do |child, i|
          child.id = i + 1
          child.parent = self
        end
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

