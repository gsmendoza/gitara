module Gitara
  module Node
    class Bar
      constructor :id, :children, :name, :accessors => true, :strict => false

      def children
        @children ||= []
      end

      def voice_bars
        children.select{|child| child.is_a?(Node::VoiceBar)}
      end
    end
  end
end
