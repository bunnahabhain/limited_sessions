$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "limited_sessions/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "limited_sessions"
  s.version     = LimitedSessions::VERSION
  s.authors     = ["t.e.morgan"]
  s.email       = ["tm@iprog.com"]
  s.homepage    = "https://iprog.com/projects#limited_sessions"
  s.summary     = "Server-side session expiry via either Rack Middleware or ActiveRecord extension"
  s.description = "LimitedSessions provides two core features to handle cookie-based session expiry: 1) Rack Middleware for most session stores and 2) an ActiveRecord extension for AR-based session stores. Sessions can be expired on inactivity and/or overall session length. Works with and without Rails."
  s.license     = 'MIT'
  s.metadata = {
    'source_code_uri' => 'https://github.com/zarqman/limited_sessions',
  }

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md", "CHANGELOG"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rack', '>= 2.0.9', '< 4'

  s.add_development_dependency 'sqlite3', '~> 1.4'
  s.add_development_dependency 'rails', '>= 5.2', '< 8.0'
end
