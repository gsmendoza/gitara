module Gitara
  module Node
    class Repeat < Base
      def call_value(node_version)
        "\\repeat volta #{value} { #{ node_version.value } }"
      end
    end
  end
end

