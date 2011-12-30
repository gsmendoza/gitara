module Gitara
  module Dsl
    class Tab
      def self.parse(text)
        Tab.new.tap do |tab|
          i = 1
          text.split("\n").each do |line|
            voice = Node::Voice.new(:id => i)
            voice.parse_attributes_from_text(line)
            tab.voices << voice
            i += 1
          end
        end
      end

      def voices
        @voices ||= []
      end
    end
  end
end
