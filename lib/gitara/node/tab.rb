module Gitara
  module Node
    class Tab
      constructor :id, :children, :accessors => true, :strict => false

      def self.parse(text)
        Transform.new.apply(Parser.new.parse(text))
      end

      def children
        @children ||= []
      end

      def voice_bars
        children.select{|child| child.is_a?(Node::VoiceBar)}
      end
    end
  end
end
