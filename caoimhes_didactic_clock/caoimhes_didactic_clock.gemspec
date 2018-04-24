
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "caoimhes_didactic_clock/version"

Gem::Specification.new do |spec|
  spec.name          = "caoimhes_didactic_clock"
  spec.version       = CaoimhesDidacticClock::VERSION
  spec.authors       = ["Caoimhe"]
  spec.email         = ["caoimhegmalone@gmail.com"]

  spec.summary       = %q{Write the time in didactic form }
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "sinatra"
end
