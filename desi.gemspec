# -*- encoding: utf-8 -*-
require File.expand_path('../lib/desi/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "desi"
  gem.authors       = ["Dominique Rose-Rosette"]
  gem.email         = ["drose-rosette@af83.com"]
  gem.summary       = %q{A developer tool to quickly set up an Elastic Search local install.}
  gem.description   = %q{Desi (Developper ElasticSearch Installer) is very simple tool to quickly set up
an Elastic Search local install for development purposes.}
  gem.homepage      = "https://github.com/AF83/desi/"
  gem.version       = Desi::VERSION

  gem.add_dependency "boson"
  gem.add_dependency "cocaine"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
