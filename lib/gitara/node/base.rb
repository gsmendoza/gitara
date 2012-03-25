module Gitara
  module Node
    class Base < Valuable
      include Redwood

      has_value :name
      has_value :id, :default => 1
      has_value :parent
      has_value :value

      def add(child)
        children << child
        child.id = children.select{|c| c.is_a?(child.class)}.size
        child.parent = self
      end

      def ancestor(node_class)
        self.is_a?(node_class) ? self : self.parent && self.parent.ancestor(node_class)
      end

      def definition_children
        if children.empty?
          definition ? definition.children : []
        else
          children
        end
      end

      def children=(values)
        children.clear
        values.each do |child|
          add child
        end
      end

      def chorded
        self.class::ChordedVersion.new(:node => self)
      end

      def definition(target = self)
        if self.definition_of?(target)
          self
        else
          result = parent.children.detect{|node| node.definition_of?(target) }
          result ? result : parent.definition(target)
        end
      end

      def definition?
        ! children.empty? || ! value.nil?
      end

      def definition_name
        name.to_s.
          gsub(/\W/, '_').
          gsub(/\d+/){|s| Utilities.id_as_word(s)}.
          camelize
      end

      def definition_of?(target)
        self.definition? && self.name == target.name && self.class == target.class
      end

      def definitions(klass)
        self.is_a?(klass) && self.definition? ? [self] : self.children.map{|child| child.definitions(klass) }.flatten
      end

      def descendants(klass)
        self.is_a?(klass) ? [self.definition] : self.definition_children.map{|child| child.descendants(klass) }.flatten
      end

      def id_as_word
        Utilities.id_as_word(id)
      end

      def inspect
        Utilities.inspect_attributes self, :name
      end

      def name
        attributes[:name] || "#{parent && parent.name}#{self.class.to_s.split('::').last}#{self.id_as_word}"
      end

      def children
        @definition_children ||= []
      end

      def root
        parent.nil? ? self : parent.root
      end

      def stanza_version
        self.class::StanzaVersion.new(:node => self)
      end

      def value
        attributes[:value] ? attributes[:value].gsub('/', "\\") : nil
      end

      def voiced_as(arg)
        if arg.is_a?(Voice)
          self.class::VoicedVersion.new(:node => self, :voice => arg)
        elsif arg.is_a?(Array)
          arg.map{|voice| self.voiced_as(voice) }
        else
          raise ArgumentError
        end
      end
    end
  end
end

