module Gitara
  module Node
    class Base
      class VoicedNode
        constructor :node, :voice, :accessors => true, :strict => false

        def call_name
          "\\#{definition_name}"
        end

        def definition_name
          "v#{voice.id_as_word}#{node.class.to_s.split('::').last}#{node.name}"
        end
      end
    end
  end
end
