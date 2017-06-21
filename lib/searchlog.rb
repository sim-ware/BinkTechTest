class Searchlog
  attr_accessor :logs, :compact


  def initialize
    @logs = []
  end

  def add_search(compact)
    @logs << compact
  end
end
