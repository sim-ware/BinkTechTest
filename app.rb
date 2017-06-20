require 'sinatra'

get '/' do
  erb :index
end

post '/colour' do
  @colour = params[:colour]
  @noun = ['Airline', 'Bird', 'Book', 'Building', 'Cat', 'Country', 'Fear', 'Happiness', 'Man', 'Mountain', 'Ocean', 'Phone', 'Pride', 'Religion', 'Rice', 'Snow', 'State', 'Water', 'Wealth'].sample
  puts params
  erb :noun
end
