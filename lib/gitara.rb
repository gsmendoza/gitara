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
require "gitara/node/base/voiced_node"
require "gitara/node/bar"
require "gitara/node/bar/voiced_node"
require "gitara/node/note_set"
require "gitara/node/tab"
require "gitara/version"
require "gitara/voice"

Linguistics::use :en

module Gitara
  def self.define(&block)
    @tab = Dsl.new(:node => Node::Tab.new).tap {|dsl|
      dsl.instance_eval(&block) if block_given?
    }.node
  end

  def self.render(path, object)
    erb = Erubis::Eruby.new((Pow!('gitara/template') / "#{path}.erb").read)
    erb.evaluate(object)
  end

  def self.tab
    @tab
  end
end
