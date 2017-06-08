require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/posts_controller.rb'
require_relative './models/posts.rb'

use Rack::MethodOverride

run PostsController