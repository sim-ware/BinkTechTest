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
- Type the command `pry` in your terminal to run the example tests provided in .pryrc
- Alternatively, open `irb` and enter the following commands:

```
> o = Order.new
 => #<Order:0x007fe70d10f288 @clock="", @standard_del=[], @express_del=[], @price=0, @discount_price=0>

> o.clock_number('WNP/SWCL001/010')
 => "WNP/SWCL001/010"

>o.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
 => ["Disney", "Discovery", "Viacom"]

> o.express_delivery_companies('Horse & County')
 => ["Horse & County"]
> o

 => #<Order:0x007fe70d10f288 @clock="WNP/SWCL001/010", @standard_del=["Disney", "Discovery", "Viacom"], @express_del=["Horse & County"], @price=0, @discount_price=0>  
```
- 'o' is an Order with the clock id 'WNP/SWCL001/010', the companies "Disney", "Discovery", "Viacom" for Standard Delivery, and the companies "Horse & County" for Express Delivery.

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
