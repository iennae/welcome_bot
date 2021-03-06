# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wb/version"

Gem::Specification.new do |spec|
  spec.name          = "welcome_bot"
  spec.version       = WelcomeBot::VERSION
  spec.authors       = ["Tim Smith"]
  spec.email         = ["tsmith@chef.io"]

  spec.summary       = "A github webhook bot that welcomes new contributors"
  spec.description   = "A github webhook bot that welcomes new contributors"
  spec.homepage      = "http://github.com/chef/welcome_bot"
  spec.license       = "Apache 2.0"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "chefstyle"

  spec.add_dependency "octokit", "~> 4.3"
  spec.add_dependency "faraday-http-cache"
  spec.add_dependency "aws-sdk", "~> 2.0"
  spec.add_dependency "aws-record", "~> 1.0"
  spec.add_dependency "activerecord", "~> 5.0"
  spec.add_dependency "sinatra", "~> 1.0"
end
