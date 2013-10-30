# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lyx/version'

Gem::Specification.new do |gem|
  gem.name          = "lyx"
  gem.version       = Lyx::VERSION
  gem.authors       = ["Marian Schwarz"]
  gem.email         = ["scorp@sblk.de"]
  gem.description   = %q{Creates lyx files from ruby}
  gem.summary       = %q{Needed to create a simple lyx file from ruby so i thought i should code it.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "thor"
  gem.add_dependency "rubytree"
  gem.add_development_dependency "yard"
  gem.add_development_dependency "redcarpet"
end
