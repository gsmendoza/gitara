module Gitara
  module Node
    class Tab < Base
      def self.parse(text)
        Transform.new.apply(Parser.new.parse(text))
      end

      def bars
        children.select{|child| child.is_a?(Node::Bar) }
      end

      def max_number_of_voices
        bars.map{|bar| bar.voice_bars.size}.max
      end

      def voice_bars
        children.select{|child| child.is_a?(Node::VoiceBar)}
      end

      def voices
        @voices ||= Array.new(max_number_of_voices){|i| Node::Voice.new(:id => i + 1, :parent => self)}
      end
    end
  end
end
