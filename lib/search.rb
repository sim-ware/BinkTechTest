require 'pixabay'
require_relative 'searchlog'

class Search
  attr_accessor :colour, :noun, :filter, :res, :date, :time, :http_response, :compact

  def initialize
    @colour = ''
    @noun = ''
    @filter = ''
    @res = {}
    @date = 0
    @time = 0
    @http_response = 0
    @compact = []
  end

  def colour_selector(colour)
    @colour = "#{colour}"
  end

  def random_noun
    @noun = ['Airline', 'Bird', 'Book', 'Building', 'Cat', 'Country', 'Fear', 'Happiness', 'Man', 'Mountain', 'Ocean', 'Phone', 'Pride', 'Religion', 'Rice', 'Snow', 'State', 'Water', 'Wealth'].sample
  end

  def make_filter
    @filter = "#{@colour} #{@noun}"
  end

  def return_search
    client = Pixabay.new
    @time = Time.now
    @res = client.photos(key: "5688185-b1f3ff430d3073bfeea12608a", q: "#{@filter}", safesearch: true, page: 1, per_page: 5)
    @http_response = (Time.now - @time) * 1000.to_i
  end

  def compact_info
    @compact << @time
    @compact << @noun
    @compact << @colour
    @compact << @http_response
  end

end
