module Gitara
  module Node
    class Tab < Base
      has_value :arranger
      has_value :composer
      has_value :instrument
      #has_value :key
      has_value :midi_instrument, :default => "acoustic guitar (nylon)"
      has_value :tempo
      has_value :title

      def self.parse(text)
        Transform.new.apply(Parser.new.parse(text))
      end

      def max_number_of_voices
        definitions(Node::Bar).map{|bar| bar.note_sets.size}.max
      end

      def playable_child
        children.last
      end

      def voices
        @voices ||= Array.new(max_number_of_voices){|i| Voice.new(:id => i + 1, :parent => self)}
      end
    end
  end
end
