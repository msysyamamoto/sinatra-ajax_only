# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra/ajax_only/version'

Gem::Specification.new do |gem|
  gem.name          = "sinatra-ajax_only"
  gem.version       = Sinatra::AjaxOnly::VERSION
  gem.authors       = ["ymmtmsys"]
  gem.email         = ["m2yamamoto@gmail.com"]
  gem.description   = %q{Sinatra extensions for blocking non-AJAX requests.}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/ymmtmsys/sinatra-ajax_only"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'sinatra', '>= 1.3.3'
  gem.add_development_dependency 'rspec', '>= 0'
  gem.add_development_dependency 'rack-test', '>= 0'
end
