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

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
