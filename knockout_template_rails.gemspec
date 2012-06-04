$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "knockout_template_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "knockout_template_rails"
  s.version     = KnockoutTemplateRails::VERSION
  s.authors       = ["Douglas Livingstone"]
  s.email         = ["Douglas@redmelon.net"]
  s.summary       = %q{Knockout template assets}
  s.description   = %q{Knockout native template engine assets for Rails}
  s.homepage      = "https://github.com/DouglasLivingstone/knockout-template-rails"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.1.3"

  s.add_development_dependency "sqlite3"
end
