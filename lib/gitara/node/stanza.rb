module Gitara
  module Node
    class Stanza < Base
      def heading_in_lilypond
        results = Array.new(descendants(Node::Bar).size, 'r')
        results[0] = %Q|r1^"#{name}"|
        results.join(' ')
      end
    end
  end
end
