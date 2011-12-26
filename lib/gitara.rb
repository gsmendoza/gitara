require "thor"

require "gitara/app"
require "gitara/version"
require "gitara/node/tab"

module Gitara
  def self.define
    @@tab = Node::Tab.new #TODO.instance_eval(&block)
  end

  def self.tab
    @@tab
  end
end

