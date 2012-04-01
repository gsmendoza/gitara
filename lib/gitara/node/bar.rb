module Gitara
  module Node
    class Bar < Base
      # @macro [attach] has_value
      # @attribute $1
      has_value :specified_duration

      def duration
        specified_duration || 1
      end

      def first_bar_of_stanza?
        stanza && stanza.descendants(Node::Bar)[0] == self
      end

      def note_sets
        definition_children.select{|child| child.is_a?(Node::NoteSet)}
      end

      def specified_duration_as_lilypond
        specified_duration ? "\\partial #{specified_duration}" : nil
      end

      def stanza
        self.ancestor(Node::Stanza)
      end

      def stanza_heading
        first_bar_of_stanza? ? %Q|r#{duration}^"#{ancestor(Node::Stanza).name}"| : "r#{duration}"
      end
    end
  end
end
