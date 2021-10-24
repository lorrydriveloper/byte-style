lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'byte/style/version'

Gem::Specification.new do |spec|
  spec.name        = 'byte-style'
  spec.version     = Byte::Style::VERSION
  spec.authors     = ['Cogitor Ltd']
  spec.email       = ['support@superbyte.uk']
  spec.homepage    = 'https://superbyte.uk'
  spec.summary     = 'Summary of Workspace.'
  spec.description = 'Description of Workspace.'
  spec.license     = 'MIT'

  spec.files = %x(git ls-files -z).split("\x0").reject do |f|
    f.match(/^(test|spec|features)\//)
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(/^exe\//) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency('rails', '~> 6.1.3')

  spec.add_dependency('rubocop', '~> 1.22', '>= 1.22.2')
  spec.add_dependency('rubocop-performance', '~> 1.11', '>= 1.11.5')
  spec.add_dependency('rubocop-rails', '~> 2.12', '>= 2.12.4')
  spec.add_dependency('rubocop-rspec', '~> 2.5')
  spec.add_development_dependency('bundler', '~> 2.2.25')
  spec.add_development_dependency('rake', '~> 13.0')
end
