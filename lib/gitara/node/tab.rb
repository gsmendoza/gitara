module Gitara
  module Node
    class Tab < Base
      def self.parse(text)
        Transform.new.apply(Parser.new.parse(text))
      end

      def bars
        [playable_child]
      end

      def max_number_of_voices
        bars.map{|bar| bar.note_sets.size}.max
      end

      def playable_child
        children.last
      end

      def note_sets
        children.select{|child| child.is_a?(Node::NoteSet)}
      end

      def voices
        @voices ||= Array.new(max_number_of_voices){|i| Node::Voice.new(:id => i + 1, :parent => self)}
      end
    end
  end
end
