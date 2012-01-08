module Gitara
  class Transform < Parslet::Transform
    rule :identifier => 'tab', :method_calls => sequence(:children) do
      children.each_with_index do |child, i|
        child.id = i + 1
      end
      children

      Tab.new(:children => children)
    end

    rule :identifier => 'voice', :string => simple(:string) do
      Node::Voice.new(:value => string)
    end
  end
end
