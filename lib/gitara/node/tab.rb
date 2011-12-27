module Gitara
  module Node
    class Tab
      def voice(value = nil)
        if value
          @voice = (@voice || []) << value
        else
          @voice
        end
      end
    end
  end
end

