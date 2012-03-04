module Gitara
  module IsNodeVersion
    def call_name
      "\\#{definition_name}"
    end

    def children
      node.children.map{|child| self.class.new(:node => child)}
    end

    def definition_name
      "#{prefix}#{node.class.to_s.split('::').last}#{node.definition_name}"
    end

    def prefix
      self.class.to_s.split('::').last[0].downcase
    end

    def value
      children.map(&:call_name).join(' ')
    end
  end
end