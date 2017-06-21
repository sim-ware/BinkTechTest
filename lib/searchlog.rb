class Searchlog
  attr_accessor :logs


  def initialize
    @logs = []
  end

  def add_search(search)
    @logs << search
  end
end
