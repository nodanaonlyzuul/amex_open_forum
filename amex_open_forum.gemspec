$spec = Gem::Specification.new do |s|
  s.name    = "amex_open_forum"
  s.version = '0.0.1'
  s.summary = "A Gem To Access the Open Forum API"

  s.authors  = ['nodanaonlyzuul']
  s.email    = ['stephen@eastmedia.com']
  s.homepage = 'https://github.com/nodanaonlyzuul'

  s.add_dependency('httparty', '0.8.3')

  s.files = Dir['lib/**/*']
  s.rubyforge_project = 'nowarning'
end
