require 'sinatra'

get '/' do
  erb :index
end

post '/colour' do
  @colour = params[:colour]
  puts params
  erb :noun
end
