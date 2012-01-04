# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gitara/version"

Gem::Specification.new do |s|
  s.name        = "gitara"
  s.version     = Gitara::VERSION
  s.authors     = ["George Mendoza"]
  s.email       = ["gsmendoza@gmail.com"]
  s.homepage    = ""
  s.summary     = "A Ruby DSL for tablatures"
  s.description = "This will be a work in progress. Ultimately the goal is to have a good basic tablature DSL that is easily convertible to lilypond."

  s.rubyforge_project = "gitara"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "active_support"
  s.add_runtime_dependency "constructor"
  s.add_runtime_dependency "linguistics"
  s.add_runtime_dependency "mustache"
  s.add_runtime_dependency "parslet"
  s.add_runtime_dependency "pow"
  s.add_runtime_dependency "thor"

  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rb-inotify"
  s.add_development_dependency "rspec"
  s.add_development_dependency "ruby-debug"
end
