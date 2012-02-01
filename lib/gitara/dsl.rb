module Gitara
  class Dsl
    constructor :node, :accessors => true, :strict => false

    def add(child, &block)
      self.node.add child
      Dsl.new(:node => child).instance_eval(&block) if block_given?
    end

    def bar(name, &block)
      add Node::Bar.new(:name => name), &block
    end

    def voice(value)
      add Node::VoiceBar.new(:value => value)
    end
  end
end
