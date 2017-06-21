class Searchlog
  def initialize
    @logs = []
  end

  def add_search(search)
    @logs << search
  end
end
