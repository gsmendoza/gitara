module Gitara
  module Node
    class Bar < Base
      def note_sets
        definition!.children.select{|child| child.is_a?(Node::NoteSet)}
      end
    end
  end
end
