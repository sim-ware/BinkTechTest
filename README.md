# BinkTechTest

## The challenge

Create a site that searches google images based on a user selecting a coloured square.

## Approach

Given the challenge's brief to focus on simplicity, I decided to build the app using Sinatra over Rails,
hoping that the lack of auto-generation would give me tighter control over my code. I split the eight
points of the brief into separate User Stories and started my development from there.

## Completed User Stories
```
As a User
So that I can customise my search
I'd like to choose a colour
```
```
As a user
So that I can choose easily
I'd like to see the range of colours as selectable squares
```
```
As a user
So that I can randomise my search
I'd like a random following search term to also be a filter
```
```
As a user
So that I can see my search results
I'd like the top 5 Search Results to be displayed
```
```
As a user
So that I can see my top search result
I'd like the First Results to take the User to the image's URL
```

## InComplete User Stories


```
As a user
So that I can see my past search results
I'd like to Show the list of previous searches in a time sorted list with most recent at the top
```
```
As a user
So that I can organise my search results
I'd like to Show the Date, time, Noun, colour and http response ms displayed for previous  searches  
```
```
As a user
So that I can re-use my previous search results
I'd like to Enable re-running previous searches  
```

## Getting started
This is a web app that can be run in the browser.
Enter the following commands in your terminal to download the program:
- `git clone https://github.com/sim-ware/BinkTechTest.git`
- cd into the BinkTechTest directory
- Please run `bundle` to install the necessary ruby `gemfile` dependencies
- run 'ruby app.rb' and visit 'localhost:4567' to visit

## Usage
- Select a colour, and then see your search results, alongside your chosen colour and randomised noun!

## Struggles

- I was unable to complete the final 3 User Stories as I ran out of time. If I did this Again I would factor in the storing
of a search history into my design. Persistence turned out to be an issue I didn't predict, which stole many precious hours
from me. I think I would use a database next time, as I feel comfortable and confident in managing persistence with them. I
looked into using cookies, another method to consider as data persists within the browsing session, which would have perfectly
suited the challenge.
- I struggled with the routing concerns in my 'app.rb' file, finding it difficult to get objects to persist between routes.
I think I managed to make the beginnings of a usable back-end solution, as I could store the required Search Details as
individual arrays in a Searchlog object. The '.pryc' file contains several Search objects, and a Searchlog object, and provides
an example of how I tried to solve the final User Stories at the Model Level.

### REPL Use

- if you run 'pry' in the project directory, several objects are pre-instantiated.

```
> a = Search.new
> a.colour_selector("Red")
> a.noun = 'Mountain'
> a.make_filter
> a.return_search
> a.compact_info
```
- 'a' is a Search Object made with the filter 'Red Mountain'

```
> b = Search.new
> b.colour_selector("Blue")
> b.noun = 'Bird'
> b.make_filter
> b.return_search
> b.compact_info
```
- 'b' is a Search Object made with the filter 'Blue Bird'

```
> c = Search.new
> c.colour_selector("Yellow")
> c.noun = 'Religion'
> c.make_filter
> c.return_search
> c.compact_info
```
- 'c' is a Search Object made with the filter 'Yellow Religion'

```
> d = Searchlog.new
> d.add_search(a)
> d.add_search(b)
> d.add_search(c)
```
- 'a' is a Search Object made with the filter 'Yellow Religion'

```
> p = Pricer.new
 => #<Pricer:0x007f903c217d60>
>p.pricing(o)
 => 50
> o.price
 => 50
```
- 'p' is a Pricer Object that calculates the unDiscounted price of the order. In this example, the price is 50.

```
> d = Discounter.new
 => #<Discounter:0x007f903c1fd0c8 @expr=20>
> d.discounter_a(o)
 => 50
> d.discounter_b(o)
 => 45.0  
```
- 'd' is a Discounter Object that has a method per Discount. It runs the first Promotion and sees if it can discount the price (in this case not). It then applies the second Promotion, and the price is discounted from 50, to 45.

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
