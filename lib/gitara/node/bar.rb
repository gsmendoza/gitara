module Gitara
  module Node
    class Bar < Base
      # @macro [attach] has_value
      # @attribute $1
      has_value :specified_duration

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
        first_bar_of_stanza? ?  stanza_heading_for_first_bar : stanza_heading_for_succeeding_bars
      end

      def stanza_heading_for_first_bar
        if specified_duration
          %Q|r#{specified_duration}^"#{ancestor(Node::Stanza).name}"|
        else
          ts = ancestor(Node::Tab).time_signature
          if ts.generates_whole_note_bars?
            %Q|#{ts.rest_bar_value}^"#{ancestor(Node::Stanza).name}"|
          else
            %Q|r#{ts.beat_unit}^"#{ancestor(Node::Stanza).name}" | + ("r#{ts.beat_unit} " * (ts.beats_per_bar - 1)).strip
          end
        end
      end

      def stanza_heading_for_succeeding_bars
        specified_duration ? "r#{specified_duration}" : ancestor(Node::Tab).time_signature.rest_bar_value
      end
    end
  end
end
