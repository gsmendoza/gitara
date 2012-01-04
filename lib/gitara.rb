require "active_support/inflector"
require "constructor"
require "linguistics"
require "mustache"
require "parslet"
require "pow"
require "thor"

require "gitara/app"
require "gitara/dsl/tab"
require "gitara/node/voice"
require "gitara/parser"
require "gitara/transform"
require "gitara/version"

Linguistics::use :en
Mustache.template_path = Pow!
