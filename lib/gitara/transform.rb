module Gitara
  class Transform < Parslet::Transform
    rule :method_id => {:identifier => 'tab'}, :value => nil, :method_calls => sequence(:children) do
      children.each_with_index do |child, i|
        child.id = i + 1
      end
      children

      Tab.new(:children => children)
    end

    rule :method_id => {:identifier => 'voice'}, :value => {:string => simple(:string)} do
      Node::Voice.new(:value => string)
    end
  end
end
