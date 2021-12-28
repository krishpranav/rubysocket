$:.push File.expand_path("../lib", __FILE__)
require 'RubySocket/version'

Gem::Specification.new do |s|
  s.name        = "rubysocket-client"
  s.version     = RubySocket::Client::VERSION
  s.authors     = ["KrishPranav"]
  s.email       = [""]
  s.homepage    = "http://github.com/krishpranav/rubysocket"
  s.summary     = %q{ruby socket implem}
  s.description = %q{ruby socket implementation}

  s.rubyforge_project = "rubysocket-client"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "rest-client"
end