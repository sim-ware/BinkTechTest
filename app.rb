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
     @search_log = Searchlog.new
  end

  post '/colour' do
    @search.colour_selector(params[:colour])
    @search.make_filter
    @search.return_search
    a = @search.compact
    # @search_log.add_search(a)
    puts a
    erb :results
  end

  post '/history' do
    "Hello World"
    erb :history
  end
