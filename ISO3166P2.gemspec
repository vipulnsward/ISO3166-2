# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ISO3166P2/version'

Gem::Specification.new do |spec|
  spec.name          = "ISO3166P2"
  spec.version       = ISO3166P2::VERSION
  spec.authors       = ["Vipul A M"]
  spec.email         = ["vipulnsward@gmail.com"]
  spec.summary       = %q{ISO-3166-2 for regional codes.}
  spec.description   = %q{ISO-3166-2 implementation for regional ISO codes.}
  spec.homepage      = "https://github.com/vipulnsward/ISO3166-2"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'smarter_csv', '~> 1.0', '>= 1.0.17'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

