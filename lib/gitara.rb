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
