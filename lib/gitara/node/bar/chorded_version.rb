module Gitara
  module Node
    class Bar
      class ChordedVersion < Base::ChordedVersion
        def value
          node.descendants(Node::ChordSet).map(&:chorded).map(&:call_name).join(' ')
        end
      end
    end
  end
end
