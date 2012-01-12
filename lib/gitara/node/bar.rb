module Gitara
  module Node
    class Bar < Base
      def voice_bars
        children.select{|child| child.is_a?(Node::VoiceBar)}
      end
    end
  end
end
