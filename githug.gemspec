# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "githug/version"

Gem::Specification.new do |s|
  s.name        = "githug"
  s.version     = Githug::VERSION
  s.authors     = ["lightyrs"]
  s.email       = ["harris@lightyrs.com"]
  s.homepage    = "http://githug.com"
  s.summary     = "Support Free and Open Source Software."
  s.description = "Command Line Interface for Open Source Donations."

  s.rubyforge_project = "githug"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
