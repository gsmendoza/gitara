module Gitara
  module Node
    class Stanza < Base
      def heading_in_lilypond
        descendants(Node::Bar).map(&:stanza_heading).join(' ')
      end
    end
  end
end
