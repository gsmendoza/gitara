module Gitara
  module Node
    class Base
      class VoicedNode < Valuable
        has_value :node
        has_value :voice

        def call_name
          "\\#{definition_name}"
        end

        def children
          node.children.map{|child| child.voiced_as(voice) }
        end

        def definition_name
          "#{voice.definition_name}#{node.class.to_s.split('::').last}#{node.definition_name}"
        end
      end
    end
  end
end
