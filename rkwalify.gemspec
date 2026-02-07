# frozen_string_literal: true

require_relative 'lib/kwalify/version'

Gem::Specification.new do |spec|
  spec.name          = 'rkwalify'
  spec.version       = Kwalify::RELEASE
  spec.authors       = ['Al Snow', 'David Crosby', 'makoto kuwata']

  spec.summary       = 'rKwalify is a parser, schema validator, and data binding tool for YAML and JSON.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/jasnow/rkwalify'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.4.7'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = File.read("Manifest.txt").split
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
