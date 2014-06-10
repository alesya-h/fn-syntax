# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fn_syntax/version'

Gem::Specification.new do |spec|
  spec.name          = "fn_syntax"
  spec.version       = FnSyntax::VERSION
  spec.authors       = ["Ales Guzik"]
  spec.email         = ["me@aguzik.net"]
  spec.summary       = %q{Lambda shorthand: fn{ _1 * 2 } }
  spec.description   = %q{Adds fn method to define anonymous functions with arguments available as _1, _2, _3 upto _9}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
