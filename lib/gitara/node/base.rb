module Gitara
  module Node
    class Base
      constructor :name, :id, :parent, :value, :accessors => true, :strict => false

      def add(child)
        children << child
        child.id = children.size
        child.parent = self
      end

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

      def definition?
        ! children.empty?
      end

      def definition!(target = self)
        result = parent.children.detect{|node| node.definition? && node.name == target.name}
        result ? result : parent.definition!(target)
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

