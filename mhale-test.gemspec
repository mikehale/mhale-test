# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mhale/test/version'

Gem::Specification.new do |spec|
  spec.name          = "mhale-test"
  spec.version       = Mhale::Test::VERSION
  spec.authors       = ["Michael Hale"]
  spec.email         = ["mike@hales.ws"]

  spec.summary       = %q{Test gem that depends on pg}
  spec.description   = %q{Test gem that depends on pg}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "pg", "~> 0.18.2"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
