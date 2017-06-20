require 'pixabay'

class Search
  attr_accessor :colour, :noun, :filter, :res

  def initialize
    @colour = ''
    @noun = ''
    @filter = ''
    @res = {}
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
    @res = client.photos(key: "5688185-b1f3ff430d3073bfeea12608a", q: "#{@filter}", safesearch: true, page: 1, per_page: 5)
  end

end
