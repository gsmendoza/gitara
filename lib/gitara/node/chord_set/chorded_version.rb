module Gitara
  module Node
    class ChordSet
      class ChordedVersion < Base::ChordedVersion
        def value
          node.value
        end
      end
    end
  end
end
