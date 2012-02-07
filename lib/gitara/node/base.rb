module Gitara
  module Node
    class Base < Valuable
      has_value :name
      has_value :id
      has_value :parent
      has_value :value

      def add(child)
        children << child
        child.id = children.size
        child.parent = self
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
        self.definition? && self.name == target.name && self.class == target.class
      end

      def definition!(target = self)
        if self.definition_of?(target)
          self
        else
          result = parent.children.detect{|node| node.definition_of?(target) }
          result ? result : parent.definition!(target)
        end
      end

      def definitions(klass)
        self.is_a?(klass) && self.definition? ? [self] : self.children.map{|child| child.definitions(klass) }.flatten
      end

      def root
        parent.nil? ? self : parent.root
      end

      def value
        attributes[:value].gsub('/', "\\")
      end

      def voiced_as(arg)
        if arg.is_a?(Voice)
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

