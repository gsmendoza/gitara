require "active_support/inflector"
require "constructor"
require "erubis"
require "linguistics"
require "parslet"
require "pow"
require "thor"

require "gitara/app"
require "gitara/dsl"
require "gitara/node/base"
require "gitara/node/bar"
require "gitara/node/tab"
require "gitara/node/voice"
require "gitara/node/note_set"
require "gitara/version"

Linguistics::use :en

module Gitara
  def self.define(&block)
    @tab = Dsl.new(:node => Node::Tab.new).tap {|dsl|
      dsl.instance_eval(&block) if block_given?
    }.node
  end

  def self.render(path, object)
    eruby = Erubis::Eruby.new((Pow!('gitara/template') / "#{path}.eruby").read)
    eruby.evaluate(object)
  end

  def self.tab
    @tab
  end
end
