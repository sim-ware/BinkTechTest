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
b.compact_info

d = Search.new
d.colour_selector("Yellow")
d.noun = 'Religion'
d.make_filter
d.return_search
d.compact_info

c = Searchlog.new

c.add_search(a)
c.add_search(b)
c.add_search(d)
