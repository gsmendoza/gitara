module Gitara
  class Tab
    constructor :id, :children, :accessors => true, :strict => false

    def self.parse(text)
      Transform.new.apply(Parser.new.parse(text))
    end

    def children
      @children ||= []
    end

    def voices
      children.select{|child| child.is_a?(Node::Voice)}
    end
  end
end
