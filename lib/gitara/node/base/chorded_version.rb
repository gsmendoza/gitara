module Gitara
  module Node
    class Base
      class ChordedNode < Valuable
        has_value :node

        def call_name
          "\\#{definition_name}"
        end

        def definition_name
          "c#{node.class.to_s.split('::').last}#{node.definition_name}"
        end

        def value
          node.children.map(&:chorded).map(&:call_name).join(' ')
        end
      end
    end
  end
end
