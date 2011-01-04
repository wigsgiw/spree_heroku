Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_heroku'
  s.version     = '0.3'
  s.homepage    = "http://github.com/fifigyuri/spree_heroku"
  s.summary     = 'Spree on read-only file systems'
  s.description = 'Allows Spree to run on read-only file systems such as Heroku.'
  s.required_ruby_version = '>= 1.8.7'

  # s.author            = 'David Heinemeier Hansson'
  # s.email             = 'david@loudthinking.com'
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'config/*']
  s.require_path = 'lib'
  s.requirements << 'aws-s3 access'

  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 0.40.0')
  s.add_dependency('aws-s3', '>= 0.6.2')
end
