require "active_support/inflector"
require "erubis"
require "linguistics"
require "pow"
require "redwood"
require "thor"
require "valuable"

require "gitara/app"
require "gitara/dsl"
require "gitara/node/base"
require "gitara/node/base/node_version"
require "gitara/node/base/chorded_version"
require "gitara/node/base/stanza_version"
require "gitara/node/base/voiced_version"
require "gitara/node/alternative"
require "gitara/node/bar"
require "gitara/node/bar/chorded_version"
require "gitara/node/bar/stanza_version"
require "gitara/node/bar/voiced_version"
require "gitara/node/chord_set"
require "gitara/node/chord_set/chorded_version"
require "gitara/node/line"
require "gitara/node/note_set"
require "gitara/node/repeat"
require "gitara/node/score"
require "gitara/node/stanza"
require "gitara/node/tab"
require "gitara/time_signature"
require "gitara/utilities"
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
    template = (Pow!('gitara/template') / "#{path}.erb")
    erb = Erubis::Eruby.new(Utilities.read!(template))
    erb.evaluate(object)
  end

  def self.tab
    @tab
  end
end
