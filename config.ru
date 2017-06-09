require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/reviews_controller.rb'
require_relative './models/reviews.rb'

use Rack::MethodOverride

run ReviewsController