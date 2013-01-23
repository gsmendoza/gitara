module Gitara
  module Node
    class Stanza < Base
      def bars
        @bars ||= descendants(Node::Bar)
      end
      
      def heading_in_lilypond
        results = (
          [self.heading_for_first_bar] + 
          bars.drop(1).map(&:stanza_heading)
        )
        
        results.join(' ')
      end

      def heading_for_first_bar
        if bars[0].specified_duration
          %Q|r#{bars[0].specified_duration}^"#{name}"|
        else
          ts = ancestor(Node::Tab).time_signature
          if ts.generates_whole_note_bars?
            %Q|#{ts.rest_bar_value}^"#{name}"|
          else
            %Q|r#{ts.beat_unit}^"#{name}" | + ("r#{ts.beat_unit} " * (ts.beats_per_bar - 1)).strip
          end
        end
      end
    end
  end
end
