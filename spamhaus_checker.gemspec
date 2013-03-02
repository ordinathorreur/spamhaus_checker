# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "spamhaus_checker"
  gem.summary       = "Validating presence of IP in ZEN spamhaus DNSBL"
  gem.version       = "0.1.1" 
  gem.authors       = ["Ivan Petroye"]
  gem.email         = ["petroei@gmail.com"]
  gem.description   = "Gem to check if provided server IP is listed in zen.spamhaus.org"
  gem.homepage      = "https://github.com/offtop/spamhaus_checker"
  gem.files         = Dir["lib/**/*", "[A-Z]*", "init.rb"] - ["Gemfile.lock"]  
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "net-dns"
end
