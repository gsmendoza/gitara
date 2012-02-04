module Gitara
  module Node
    class Base
      constructor :name, :id, :parent, :value, :accessors => true, :strict => false

      def add(child)
        children << child
        child.id = children.size
        child.parent = self
      end

      def call_name
        "\\#{definition_name}"
      end

      def children
        @children ||= []
      end

      def children=(children)
        children.each do |child|
          add child
        end
      end

      def definition?
        ! children.empty?
      end

      def definition_of?(target)
        self.definition? && self.name == target.name
      end

      def definition!(target = self)
        if self.definition_of?(target)
          self
        else
          result = parent.children.detect{|node| node.definition_of?(self) }
          result ? result : parent.definition!(target)
        end
      end

      def definitions(klass)
        self.is_a?(klass) ? [self] : self.children.map{|child| child.definitions(klass) }.flatten
      end

      def definition_name
        name
      end

      def id_as_word
        id.en.numwords.camelize
      end

      def root
        parent.nil? ? self : parent.root
      end

      def value
        @value.gsub('/', "\\")
      end

      def voiced_as(arg)
        if arg.is_a?(Node::Voice)
          self.class::VoicedNode.new(:node => self, :voice => arg)
        elsif arg.is_a?(Array)
          arg.map{|voice| self.voiced_as(voice) }
        else
          raise ArgumentError
        end
      end
    end
  end
end

