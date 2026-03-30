Gem::Specification.new do |s|
  s.name        = 'brass'
  s.version     = '1.3.0'
  s.summary     = 'Bare-metal Ruby Assertion System Standard'
  s.description = 'BRASS stands for Bare-Metal Ruby Assertion System Standard. It is a very ' \
                  'basic foundational assertions framework for other assertion and test frameworks ' \
                  'to make use so they can all work together harmoniously.'

  s.authors     = ['Thomas Sawyer']
  s.email       = ['transfire@gmail.com']

  s.homepage    = 'https://github.com/rubyworks/brass'
  s.license     = 'BSD-2-Clause'

  s.files       = Dir['lib/**/*', 'LICENSE.txt', 'README.md', 'VERSIONS.md']
  s.require_paths = ['lib']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'lemon'
  s.add_development_dependency 'rubytest'
end
