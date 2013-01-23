module Gitara
  module Node
    class Bar < Base
      # @macro [attach] has_value
      # @attribute $1
      has_value :specified_duration

      def note_sets
        definition_children.select{|child| child.is_a?(Node::NoteSet)}
      end

      def specified_duration_as_lilypond
        specified_duration ? "\\partial #{specified_duration}" : nil
      end

      def stanza_heading
        specified_duration ? "r#{specified_duration}" : ancestor(Node::Tab).time_signature.rest_bar_value
      end
    end
  end
end
