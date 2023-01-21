# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  # TODO: rename name, author, email, description, summary,
  # license, and homepage
  gem.name          = "my-vagrant-host-plugin"
  gem.version       = File.read('VERSION').chop
  gem.authors       = ["My Name"]
  gem.email         = ["myemail@email.com"]
  gem.description   = "Vagrant host plugin"
  gem.summary       = "Vagrant host plugin"
  gem.license       = 'MIT'
  gem.homepage      = "https://github.com/hashicorp/vagrant-host-plugin-skeleton-ruby"

  gem.add_development_dependency "rake", "~> 13.0"
  gem.add_development_dependency "rspec", "~> 3.5.0"

  gem.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|testdrive)/}) }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]
end
