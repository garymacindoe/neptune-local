
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "neptune/local/version"

Gem::Specification.new do |spec|
  spec.name          = "neptune-local"
  spec.version       = Neptune::Local::VERSION
  spec.authors       = ["Gary Macindoe"]
  spec.email         = ["gary@garymacindoe.co.uk"]

  spec.summary       = %q{Wraps installation and usage of the Apache Tinkerpop Gremlin Server version 3.3.2 (upon which AWS Neptune is based)}
  spec.homepage      = "https://github.com/garymacindoe/neptune-local"
  spec.license       = "MIT"
  spec.extensions    = ['Rakefile']

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
