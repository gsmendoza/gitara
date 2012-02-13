module Gitara
  module Node
    class Base < Valuable
      has_value :name
      has_value :id, :default => 1
      has_value :parent
      has_value :value

      def add(child)
        own_children << child
        child.id = own_children.size
        child.parent = self
      end

      def children
        if own_children.empty?
          definition ? definition.own_children : []
        else
          own_children
        end
      end

      def children=(values)
        values.each do |child|
          add child
        end
      end

      def definition?
        ! own_children.empty?
      end

      def definition_of?(target)
        self.definition? && self.name == target.name && self.class == target.class
      end

      def definitions(klass)
        self.is_a?(klass) && self.definition? ? [self] : self.own_children.map{|child| child.definitions(klass) }.flatten
      end

      def id_as_word
        id.en.numwords.camelize
      end

      def name
        attributes[:name] || "#{parent && parent.name}#{self.class.to_s.split('::').last}#{self.id_as_word}"
      end

      def own_children
        @children ||= []
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

      private

        def definition(target = self)
          if self.definition_of?(target)
            self
          else
            result = parent.own_children.detect{|node| node.definition_of?(target) }
            result ? result : parent.definition(target)
          end
        end
    end
  end
end

