# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smacssify/version'

Gem::Specification.new do |gem|
  gem.name          = "smacssify"
  gem.version       = Smacssify::VERSION
  gem.authors       = ["Jack Callister"]
  gem.email         = ["jarsbe@gmail.com"]
  gem.description   = %q{Directory structure generator for smacss}
  gem.summary       = %q{Keep your sass files neatly organised within your Rails app}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
