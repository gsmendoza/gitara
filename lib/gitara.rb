require "active_support/inflector"
require "constructor"
require "erubis"
require "linguistics"
require "parslet"
require "pow"
require "thor"

require "gitara/app"
require "gitara/node/base"
require "gitara/node/bar"
require "gitara/node/tab"
require "gitara/node/voice"
require "gitara/node/voice_bar"
require "gitara/parser"
require "gitara/transform"
require "gitara/version"

Linguistics::use :en

module Gitara
  def self.render(path, object)
    eruby = Erubis::Eruby.new((Pow!('gitara/template') / "#{path}.eruby").read)
    eruby.evaluate(object)
  end
end
