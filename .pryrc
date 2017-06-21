require './lib/search'
require './lib/searchlog'

a = Search.new
a.random_noun
a.colour_selector("Blue")
a.make_filter

b = Search.new
b.colour_selector("Blue")
b.noun = 'Bird'
b.make_filter
b.return_search

c = Searchlog.new
