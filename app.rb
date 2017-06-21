require 'sinatra'
require './lib/search'
require './lib/searchlog'

get '/' do
  erb :index
end

before do
   @search = Search.new
   @search.random_noun
   # @search_log = Search.new
end

post '/colour' do
  @search.colour_selector(params[:colour])
  @search.make_filter
  @search.return_search
  # @search_log.add_search(@search)
  # @search_log.logs << @search
  erb :results
end

post '/history' do
  "Hello World"
  erb :history
end
