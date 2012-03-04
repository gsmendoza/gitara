module Gitara
  module Node
    class Bar
      class StanzaVersion < Base::StanzaVersion
        def value
          node.stanza_heading
        end
      end
    end
  end
end
