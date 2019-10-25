
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
  spec.files         = Dir[
    "**/*.rb",
    "Rakefile",
    "Gemfile",
    "README.md",
    "sequel-oracle_enhanced.gemspec",
  ]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "sequel"
  spec.add_runtime_dependency "ruby-oci8"

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "strscan"
  spec.add_development_dependency "stringio"
end
