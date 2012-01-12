module Gitara
  class Transform < Parslet::Transform
    rule :identifier => 'bar', :string => simple(:name), :method_calls => sequence(:children) do

      children.each_with_index do |child, i|
        child.id = i + 1
      end
      children

      Node::Bar.new(:name => name, :children => children)
    end

    rule :identifier => 'tab', :method_calls => sequence(:children) do
      children.each_with_index do |child, i|
        child.id = i + 1
      end
      children

      Node::Tab.new(:children => children)
    end

    rule :identifier => 'voice', :string => simple(:string) do
      Node::VoiceBar.new(:value => string)
    end
  end
end
