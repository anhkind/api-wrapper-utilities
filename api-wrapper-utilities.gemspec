# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wrapper/version'

Gem::Specification.new do |gem|
  gem.name          = "api-wrapper-utilities"
  gem.version       = Wrapper::VERSION
  gem.authors       = ["anhkind"]
  gem.email         = ["anhkind@gmail.com"]
  gem.description   = %q{Generic utilities for an API wrapper}
  gem.summary       = %q{Generic utilities for an API wrapper}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", ">= 2"
end
