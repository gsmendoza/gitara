module Gitara
  module Node
    class Base
      class ChordedVersion < Valuable
        include IsNodeVersion

        has_value :node
      end
    end
  end
end
