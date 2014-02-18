# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parsable/version'

Gem::Specification.new do |spec|
  spec.name          = "parsable"
  spec.version       = Parsable::VERSION
  spec.authors       = ["Hubert Liu"]
  spec.email         = ["hubert.liu@rigor.com"]
  spec.summary       = %q{LiquidText style parsing/crunching}
  spec.description   = %q{Replace inline variables in strings with their values }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end