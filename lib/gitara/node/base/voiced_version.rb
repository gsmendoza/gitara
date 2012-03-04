module Gitara
  module Node
    class Base
      class VoicedVersion < Valuable
        include IsNodeVersion

        has_value :node
        has_value :voice

        def children
          node.children.map{|child| child.voiced_as(voice) }
        end

        def prefix
          voice.definition_name
        end
      end
    end
  end
end
