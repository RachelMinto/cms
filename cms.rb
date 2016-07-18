
require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'

get "/" do
  erb :index, layout: :layout
end

get "/test" do
  redirect "/"
end

get "favicon.ico" do
  redirect "/"
end