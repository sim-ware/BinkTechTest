require 'sinatra'
require './lib/search'

get '/' do
  erb :index
end

post '/colour' do
  @search = Search.new
  @search.random_noun
  @search.colour_selector(params[:colour])
  @search.make_filter
  @search.return_search
  puts @search.noun, @search.colour, @search.res['hits'][0]['previewURL']
  erb :noun
end
