module Gitara
  module Node
    class Base
      class VoicedVersion < NodeVersion
        # @macro [attach] has_value
        # @attribute $1
        has_value :voice

        def definition_children
          node.definition_children.map{|child| child.voiced_as(voice) }
        end

        def prefix
          voice.definition_name
        end
      end
    end
  end
end
