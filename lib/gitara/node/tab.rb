module Gitara
  module Node
    class Tab < Base
      def self.parse(text)
        Transform.new.apply(Parser.new.parse(text))
      end

      def bars
        children.select{|child| child.is_a?(Node::Bar) }
      end

      def voice_bars
        children.select{|child| child.is_a?(Node::VoiceBar)}
      end
    end
  end
end
