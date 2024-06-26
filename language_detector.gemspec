# frozen_string_literal: true

require_relative "lib/language_detector/version"

Gem::Specification.new do |spec|
  spec.name = "language_detector"
  spec.version = LanguageDetector::VERSION
  spec.authors = ["Raquel Brito"]
  spec.email = ["raquelbrito662@gmail.com"]
  spec.summary = "Uma gem para detectar o idioma de um texto"
  spec.description = "Uma gem para detectar o idioma de um texto, removendo símbolos, pontuações e tags HTML antes da detecção."
  spec.homepage = "https://github.com/raquelbrto/language_detector.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://github.com/raquelbrto/language_detector.git'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/raquelbrto/language_detector.git"
  spec.metadata["changelog_uri"] = "https://github.com/raquelbrto/language_detector.git/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "cld3", "~> 3.4.3"
  spec.add_dependency "nokogiri", "~> 1.13.0"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
