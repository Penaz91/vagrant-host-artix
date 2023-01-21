# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "vagrant-host-artix"
  gem.version       = File.read('VERSION').chop
  gem.authors       = ["Daniele Penazzo"]
  gem.email         = ["penazarea@altervista.org"]
  gem.description   = "Vagrant host plugin for Artix Linux"
  gem.summary       = "Adds Artix Linux Host support on Vagrant 2.x"
  gem.license       = 'MIT'
  gem.homepage      = "https://github.com/Penaz91/vagrant-host-artix/"

  gem.add_development_dependency "rake", "~> 13.0"
  gem.add_development_dependency "rspec", "~> 3.5.0"

  gem.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|testdrive)/}) }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]
end
