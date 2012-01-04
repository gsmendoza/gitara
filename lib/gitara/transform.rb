module Gitara
  class Transform < Parslet::Transform
    rule :method_id => {:identifier => 'voice'}, :value => {:string => simple(:string)} do
      Node::Voice.new(:value => string)
    end

    rule :method_calls => sequence(:voices) do
      voices.each_with_index do |voice, i|
        voice.id = i + 1
      end
      Tab.new(:voices => voices)
    end
  end
end
