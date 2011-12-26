module Gitara
  module Template
    class Tab < Mustache
      self.template_path = 'lib'

      constructor :tab, :accessors => true
    end
  end
end
