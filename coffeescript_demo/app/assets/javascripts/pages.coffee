console.log 'Hello world'

# No semicolons!
items = ['beer1', 'beer2', 'beer3', 'beer4']

# Backwarks conditionals!
beerLover = true if items.length > 0

# Sort of iterators!
for item in items
  console.log item

# Ranges
for i in [5..0]
  console.log i
console.log 'Blast off'

# Weirdly generated ranges
nums = [0..21]
console.log nums

# Trickier conditionals
for beer in items when beer isnt 'beer3'
  console.log beer 

drinkBeer = ->
  console.log 'Glug glug'
  items.pop()

while items.length > 0 then drinkBeer()

hello = (target)->
  console.log 'Hello ' + target

hello 'World'

# Objects
fridge = 
  beer: ['vb', 'tooheys new', 'guinness']
  chips: ['potato', 'corn']
  consume: -> 
    console.log 'nom nom nom'
    @beer.pop()

fridge.consume()
fridge.consume()
console.log fridge


# jQuery
$(document).ready ->
  $('#wonderland').on 'click', -> 
    console.log 'there was a click'







