# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'specinfra/ec2_metadata/tags/version'

Gem::Specification.new do |spec|
  spec.name          = "specinfra-ec2_metadata-tags"
  spec.version       = Specinfra::Ec2Metadata::Tags::VERSION
  spec.authors       = ["Gosuke Miyashita"]
  spec.email         = ["gosukenator@gmail.com"]
  spec.summary       = %q{Specinfra extention to get ec2 tags.}
  spec.description   = %q{Specinfra extention to get ec2 tags.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "aws-sdk", "~> 2"
  spec.add_runtime_dependency "specinfra", "~> 2.19"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
