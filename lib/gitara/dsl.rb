require "gitara/dsl_macros"

module Gitara
  class Dsl < Valuable
    extend DslMacros

    # @macro [attach] has_value
    # @attribute $1
    has_value :node

    # @macro [attach] can_add_property
    # @method $1(value)
    # Set value as the $1
    can_add_property :arranger
    can_add_property :composer
    can_add_property :instrument
    can_add_property :key
    can_add_property :midi_instrument
    can_add_property :string_tunings
    can_add_property :tempo
    can_add_property :title
    can_add_property :transposition

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

    def alternative(&block)
      add Node::Alternative.new, &block
    end

    def bar(*names, &block)
      add_names :names => names, :node_class => Node::Bar, &block
    end

    def chords(name, value=nil)
      add Node::ChordSet.new(:name => name, :value => value)
    end

    def line(*names, &block)
      add_names :names => names, :node_class => Node::Line, &block
    end

    def notes(value)
      add Node::NoteSet.new(:value => value)
    end

    def partial(duration)
      node.specified_duration = duration
    end

    def repeat(value, &block)
      add Node::Repeat.new(:value => value), &block
    end

    def score(*names, &block)
      add_names :names => names, :node_class => Node::Score, &block
    end

    def stanza(*names, &block)
      add_names :names => names, :node_class => Node::Stanza, &block
    end
  end
end
