require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "This one time at band camp..."
end

get '/about' do
  "I'm learning to code"
end

get '/contact' do
  "Don't contact me"
end

get '/cat' do
  @name = ["Amigo",  "Misty", "Almond"].sample
  erb(:index)
end