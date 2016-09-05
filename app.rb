require 'rack'
require 'thin'
require_relative 'lib/swedish_chef'

Rack::Handler::Thin.run SwedishChef
