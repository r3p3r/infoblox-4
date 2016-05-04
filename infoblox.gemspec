# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'infoblox/version'

Gem::Specification.new do |spec|
  spec.name          = "infoblox"
  spec.version       = Infoblox::VERSION
  spec.authors       = ["Billy Reisinger"]
  spec.email         = ["billy.reisinger@govdelivery.com"]
  spec.description   = %q{A Ruby wrapper to the Infoblox WAPI}
  spec.summary       = %q{This gem is a Ruby interface to the Infoblox WAPI. Using the gem, you can query, create, update, and delete DNS records in your Infoblox instance.}
  spec.homepage      = "https://github.com/govdelivery/infoblox"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  if RUBY_VERSION <= '1.8.7'
    spec.add_runtime_dependency "json"
  end
  spec.add_runtime_dependency "faraday"
  spec.add_runtime_dependency "faraday_middleware"  
  
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.3"
  if RUBY_VERSION <= '1.8.7'
    spec.add_development_dependency "rake", "~>10.4.2"
  else
    spec.add_development_dependency "rake"
  end
  spec.add_development_dependency "pry"
end
