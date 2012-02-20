module Gitara
  module DslMacros
    def can_add_property(property)
      define_method property do |value|
        node.attributes[property] = value
      end
    end
  end
end
