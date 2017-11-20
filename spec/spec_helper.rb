require 'rspec'
require 'capybara/rspec'
require 'pry'
require 'middleman-core'
require 'middleman-autoprefixer'
require 'middleman-core/rack'
require 'middleman-livereload'

middleman_app = ::Middleman::Application.new

Capybara.app = ::Middleman::Rack.new(middleman_app).to_app do
  set :root, File.expand_path(File.join(File.dirname(__FILE__), '..'))
  set :environment, :development
  set :show_expectations, false
end
