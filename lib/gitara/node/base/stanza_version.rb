module Gitara
  module Node
    class Base
      class StanzaVersion < Valuable
        include IsNodeVersion

        has_value :node
      end
    end
  end
end
