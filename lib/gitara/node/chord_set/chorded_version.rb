module Gitara
  module Node
    class ChordSet
      class ChordedNode < Base::ChordedNode
        def value
          node.value
        end
      end
    end
  end
end
