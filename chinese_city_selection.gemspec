$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "chinese_city_selection/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "chinese_city_selection"
  s.version     = ChineseCitySelection::VERSION
  s.authors     = ["pinmi"]
  s.email       = ["wanxsb@gmail.com"]
  s.homepage    = "http://www.diandanbao.com"
  s.summary     = "City selection for Chinese"
  s.description = "City selection for Chinese"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.1"
  s.add_dependency "chinese_cities"
  s.add_dependency "jbuilder", "~> 1.2"

  s.add_development_dependency "sqlite3"
end
