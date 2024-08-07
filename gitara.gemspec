# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gitara/version"

Gem::Specification.new do |s|
  s.name        = "gitara"
  s.version     = Gitara::VERSION
  s.authors     = ["George Mendoza"]
  s.email       = ["gsmendoza@gmail.com"]
  s.homepage    = ""
  s.summary     = "Ruby + Lilypond = pretty guitar tablatures."
  s.description = "A Ruby DSL for generating Lilypond guitar tablatures."

  s.rubyforge_project = "gitara"

  s.files         = `git ls-files`.split("\n").reject{|file| file =~ %r{\.(pdf)|(midi)}}
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "activesupport"
  s.add_runtime_dependency "erubis"
  s.add_runtime_dependency "linguistics"
  s.add_runtime_dependency "loggability"
  s.add_runtime_dependency "redwood"
  s.add_runtime_dependency "thor"
  s.add_runtime_dependency "valuable"

  s.add_development_dependency "factory_bot"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "pry"
  s.add_development_dependency "rb-inotify"
  s.add_development_dependency "rspec"
  s.add_development_dependency "yard"
  s.add_development_dependency "yard-rspec"
end
