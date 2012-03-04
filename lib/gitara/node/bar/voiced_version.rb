module Gitara
  module Node
    class Bar
      class VoicedVersion < Base::VoicedVersion
        alias_method :bar, :node

        def matching_note_set
          bar.note_sets[voice.id - 1]
        end
      end
    end
  end
end
