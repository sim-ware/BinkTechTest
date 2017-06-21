require 'sinatra'
require './lib/search'
require './lib/searchlog'

  enable :sessions

  get '/' do
    erb :index
  end

  before do
     @search = Search.new
     @search.random_noun
  end

  post '/colour' do
    @search.colour_selector(params[:colour])
    @search.make_filter
    @search.return_search
    erb :results
  end
