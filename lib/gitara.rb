require "constructor"
require "mustache"
require "pow"
require "thor"

require "gitara/app"
require "gitara/version"
require "gitara/node/tab"
require "gitara/template/tab"

module Gitara
  def self.define(&block)
    @@tab = Node::Tab.new.tap do |tab|
      tab.instance_eval(&block)
    end
  end

  def self.tab
    @@tab
  end
end

