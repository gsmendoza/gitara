require "active_support/inflector"
require "constructor"
require "linguistics"
require "mustache"
require "pow"
require "thor"

require "gitara/app"
require "gitara/tab"
require "gitara/version"
require "gitara/node/voice"

Linguistics::use :en
Mustache.template_path = Pow!
