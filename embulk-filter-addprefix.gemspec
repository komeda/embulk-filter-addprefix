
Gem::Specification.new do |spec|
  spec.name          = "embulk-filter-addprefix"
  spec.version       = "0.2.0"
  spec.authors       = ["komeda"]
  spec.summary       = "Addprefix filter plugin for Embulk"
  spec.description   = "Embulk filter plugin to add arbitrary prefixes to all columns."
  spec.email         = ["komeda@hivelocity.co.jp"]
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/hivelocityinc/embulk-filter-addprefix"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'embulk', ['>= 0.9.19']
  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
