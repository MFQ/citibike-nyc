Gem::Specification.new do |s|
  s.name        = 'citibikenyc'
  s.version     = '0.0.1'
  s.date        = '2018-04-28'
  s.summary     = "Citibikenyc!"
  s.description = "Citibikenyc is an API Client"
  s.authors     = ["mfq"]
  s.executables << 'citibikenyc'
  s.email       = 'softmfq@gmail.com'
  s.files       = ["lib/citibikenyc.rb"]
  s.homepage    = 'http://rubygems.org/gems/citibikenyc'
  s.license       = 'MIT'
  s.add_runtime_dependency 'multi_json', '~> 1.13.1'
  s.add_runtime_dependency 'faraday', '~> 0.15.0'
end
