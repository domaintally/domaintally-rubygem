# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'domaintally/version'

Gem::Specification.new do |gem|
  gem.name        = "domaintally"
  gem.version     = Domaintally::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = "Domaintally"
  gem.email       = "info@domaintally.com"
  gem.homepage    = "https://www.domaintally.com"
  gem.summary     = %q{Free Domain Metrics, Whois Information and Domain Ranking API}
  gem.description = %q{DomainTally provides comprehensive insight and key metrics into any website or domain}
  gem.license     = 'GNU GENERAL PUBLIC LICENSE'

  gem.rubyforge_project = "domaintally"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency('httparty', '~> 0.6')

  gem.add_development_dependency('rake')
end
