module Gitara
  module Node
    class NoteSet < Base
      def definition_name
        "v#{id_as_word}Bar#{parent.name}"
      end
    end
  end
end
