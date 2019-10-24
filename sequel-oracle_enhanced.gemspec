
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sequel/oracle_enhanced/version"

Gem::Specification.new do |spec|
  spec.name          = "sequel-oracle_enhanced"
  spec.version       = Sequel::OracleEnhanced::VERSION
  spec.authors       = ["Roman Simecek"]
  spec.email         = ["roman@good2go.ch"]

  spec.summary       = %q{Extend sequel adapters with oracle_enhanced}
  spec.description   = %q{Extend sequel adapters with oracle_enhanced to have same naming as for activerecord}
  spec.homepage      = "https://github.com/raskhadafi"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end
