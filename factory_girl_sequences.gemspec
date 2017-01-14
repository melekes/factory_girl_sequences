# -*- encoding: utf-8 -*-
require File.expand_path('../lib/factory_girl_sequences/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "factory_girl_sequences"
  gem.version       = FactoryGirlSequences::VERSION
  gem.authors       = ["Anton Kalyaev"]
  gem.email         = ["anton.kalyaev@gmail.com"]
  gem.description   = %q{factory_girl_sequences provides a collection of useful FactoryGirl sequences}
  gem.summary       = %q{Collection of useful FactoryGirl sequences}
  gem.homepage      = "http://github.com/melekes/factory_girl_sequences"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  gem.require_paths = ["lib"]

  gem.rdoc_options      = %w(--line-numbers --inline-source --title factory_girl_sequences --main README.md)
  gem.extra_rdoc_files  = %w(README.md CHANGELOG.md LICENSE)

  gem.add_dependency 'factory_girl', '~> 4.0'
  gem.add_dependency 'activesupport', '>= 3.0.0'
end
