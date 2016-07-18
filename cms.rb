
require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'

root = File.expand_path("..", __FILE__)

get "/" do
  @data_files = Dir.entries("data").reject { |file_name| file_name.start_with? ('.') }
  erb :index, layout: :layout
end

get "/:filename" do
  file_path = root + "/data/" + params[:filename]
  headers["Content-Type"] = "text/plain"
  File.read(file_path)
end
