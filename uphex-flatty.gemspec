Gem::Specification.new do |s|
  s.name        = "uphex-flatty"
  s.version     = '0.1.0'
  s.authors     = ['James Sanders']
  s.email       = ['sanderjd@gmail.com']
  s.homepage    = 'https://github.com/uphex/uphex-flatty'
  s.summary     = 'Flatty theme assets used by UpHex'
  s.description = 'Flatty theme assets used by UpHex'

  s.files = Dir['lib/**/*', 'README.md']

  s.add_runtime_dependency 'sinatra', '~> 1.4.4'
  s.add_runtime_dependency 'coffee-script'
  s.add_runtime_dependency 'sinatra-assetpack', '~> 0.3.1'
  s.add_runtime_dependency 'compass', '~> 0.12.2'
  s.add_runtime_dependency 'sinatra-support'
end
