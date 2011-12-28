module Gitara
  class Tab
    attr_accessor :voice

    def self.parse(text)
      Tab.new.tap do |tab|
        tab.voice = Node::Voice.parse(text)
      end
    end
  end
end
