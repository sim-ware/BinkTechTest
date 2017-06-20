class Search
  attr_accessor :colour, :noun

  def initialize
    @colour = ''
    @noun = ''
  end

  def colour_selector(colour)
    @colour = "#{colour}"
  end

  def random_noun
    @noun = ['Airline', 'Bird', 'Book', 'Building', 'Cat', 'Country', 'Fear', 'Happiness', 'Man', 'Mountain', 'Ocean', 'Phone', 'Pride', 'Religion', 'Rice', 'Snow', 'State', 'Water', 'Wealth'].sample
  end

end
