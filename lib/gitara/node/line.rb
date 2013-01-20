module Gitara
  module Node
    class Line < Base
      has_value :manual_break, :klass => :boolean, :default => true
    end
  end
end
