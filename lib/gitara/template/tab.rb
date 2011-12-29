module Gitara
  module Template
    class Tab < Mustache
      constructor :tab, :accessors => true

      def voices
        tab.voices
      end
    end
  end
end
