# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wsdirector/version'

Gem::Specification.new do |spec|
  spec.name          = "wsdirector"
  spec.version       = WSdirector::VERSION
  spec.authors       = ["Kirill Arkhipov", "Vladimir Dementyev"]
  spec.email         = ["kirillvs@mail.ru", "palkan@evl.ms"]

  spec.summary       = %q{Command line utility perform websocket-client - server interaction with script support.}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/palkan/WSdirector"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = "wsdirector"
  spec.require_paths = ["lib"]

  spec.add_dependency 'websocket-client-simple', '~> 0.3'
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "aruba", "~> 0.14"
  spec.add_development_dependency "eventmachine", "~> 1.0.9"
  spec.add_development_dependency "websocket-eventmachine-server", "~> 1.0.1"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "pry"
end
