module Gitara
  module Node
    class Bar < Base
      def first_bar_of_stanza?
        stanza && stanza.descendants(Node::Bar)[0] == self
      end

      def note_sets
        children.select{|child| child.is_a?(Node::NoteSet)}
      end

      def stanza
        self.ancestor(Node::Stanza)
      end

      def stanza_heading
        first_bar_of_stanza? ? %Q|r1^"#{ancestor(Node::Stanza).name}"| : "r1"
      end
    end
  end
end
