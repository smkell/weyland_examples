# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'weyland_examples/version'

Gem::Specification.new do |spec|
  spec.name          = "weyland_examples"
  spec.version       = WeylandExamples::VERSION
  spec.authors       = ["Sean Kell"]
  spec.email         = ["sean.michael.kell@gmail.com"]

  spec.summary       = %q{Examples for using the Weyland build system.}
  spec.homepage      = "http://github.com/smkell/weyland_examples"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
end
