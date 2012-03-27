module Gitara
  module Node
    class Alternative < Base
      def call_value(node_version)
        alternatives = node_version.definition_children.map do |child|
          "{ #{child.call_value} }"
        end

        "\\alternative { #{alternatives.join(' ')} }"
      end
    end
  end
end

