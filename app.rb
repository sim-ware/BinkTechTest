require 'sinatra'
require './lib/search'

get '/' do
  erb :index
end

post '/colour' do
  # @colour = params[:colour]
  # @noun = ['Airline', 'Bird', 'Book', 'Building', 'Cat', 'Country', 'Fear', 'Happiness', 'Man', 'Mountain', 'Ocean', 'Phone', 'Pride', 'Religion', 'Rice', 'Snow', 'State', 'Water', 'Wealth'].sample
  @serje = Search.new
  @serje.random_noun
  @serje.colour_selector(params[:colour])
  puts @serje.noun, @serje.colour
  erb :noun
end
