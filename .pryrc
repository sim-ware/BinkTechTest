require './lib/search'
require './lib/searchlog'

a = Search.new
a.colour_selector("Red")
a.noun = 'Mountain'
a.make_filter
a.return_search
a.compact_info

b = Search.new
b.colour_selector("Blue")
b.noun = 'Bird'
b.make_filter
b.return_search
b.compact_info

c = Search.new
c.colour_selector("Yellow")
c.noun = 'Religion'
c.make_filter
c.return_search
c.compact_info

d = Searchlog.new

d.add_search(a)
d.add_search(b)
d.add_search(c)
