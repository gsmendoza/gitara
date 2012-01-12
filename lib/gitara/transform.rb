module Gitara
  class Transform < Parslet::Transform
    rule :identifier => 'bar', :string => simple(:name), :method_calls => sequence(:children) do
      Node::Bar.new(:name => name).tap do |bar|
        bar.children = children
      end
    end

    rule :identifier => 'tab', :method_calls => sequence(:children) do
      Node::Tab.new.tap do |tab|
        tab.children = children
      end
    end

    rule :identifier => 'voice', :string => simple(:string) do
      Node::VoiceBar.new(:value => string)
    end
  end
end
