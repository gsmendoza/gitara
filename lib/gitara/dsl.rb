module Gitara
  class Dsl < Valuable
    has_value :node

    def add(child, &block)
      self.node.add child
      Dsl.new(:node => child).instance_eval(&block) if block_given?
    end

    def add_names(options = {}, &block)
      names = options[:names].empty? ? [nil] : options[:names]
      node_class = options[:node_class]

      names.map{|name| node_class.new(:name => name) }.each do |child|
        add child, &block
      end
    end

    def bar(*names, &block)
      add_names :names => names, :node_class => Node::Bar, &block
    end

    def line(*names, &block)
      add_names :names => names, :node_class => Node::Line, &block
    end

    def notes(value)
      add Node::NoteSet.new(:value => value)
    end

    def score(*names, &block)
      add_names :names => names, :node_class => Node::Score, &block
    end
  end
end