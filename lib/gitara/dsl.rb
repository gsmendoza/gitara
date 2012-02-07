module Gitara
  class Dsl < Valuable
    has_value :node

    def add(child, &block)
      self.node.add child
      Dsl.new(:node => child).instance_eval(&block) if block_given?
    end

    def bar(name, &block)
      add Node::Bar.new(:name => name), &block
    end

    def line(name, &block)
      add Node::Line.new(:name => name), &block
    end

    def notes(value)
      add Node::NoteSet.new(:value => value)
    end
  end
end
