Gem::Specification.new do |s|
  s.name        = 'citibike-nyc'
  s.version     = '0.0.2'
  s.date        = '2018-04-28'
  s.summary     = "Citibikenyc!"
  s.description = "Citibikenyc is an API Client"
  s.authors     = ["mfq"]
  s.executables << 'citibikenyc'
  s.email       = 'softmfq@gmail.com'
  s.files       = ["lib/citibikenyc.rb", "lib/citibikenyc/api.rb", "lib/citibikenyc/feeds.rb",
                  "lib/citibikenyc/region.rb", "lib/citibikenyc/constants.rb", "lib/citibikenyc/station_status.rb", "lib/citibikenyc/station_information.rb"]
  s.homepage    = 'http://rubygems.org/gems/citibikenyc'
  s.license       = 'MIT'
  s.add_runtime_dependency 'json', '~> 2.1.0'
  s.add_runtime_dependency 'faraday', '~> 0.15.0'
end
