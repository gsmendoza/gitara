module Gitara
  module IsNodeVersion
    def call_name
      "\\#{definition_name}"
    end

    def definition_children
      node.definition_children.map{|child| self.class.new(:node => child)}
    end

    def definition_name
      "#{prefix}#{node.class.to_s.split('::').last}#{node.definition_name}"
    end

    def prefix
      self.class.to_s.split('::').last[0].downcase
    end

    def value
      definition_children.map(&:call_name).join(' ')
    end
  end
end