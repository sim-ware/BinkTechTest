require 'sinatra'
require './lib/search'

get '/' do
  erb :index
end

post '/colour' do
  @search = Search.new
  @search.random_noun
  @search.colour_selector(params[:colour])
  @search.return_search
  puts @search.noun, @search.colour, @search.res
  erb :noun
end
