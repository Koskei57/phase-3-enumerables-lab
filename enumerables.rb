require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
   spicy_foods.collect do |spicy_food|
   spicy_food[:name]
 end
end
 
# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # your code here
  spiciest_food = spicy_foods.filter do |spicy_food|
  if spicy_food[:heat_level] > 5
    spicy_food
  end
 end
end

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here
  print_spicy_heat = "🌶"
  spicy_foods.map do |spicy_heat|
  spiced_level = spicy_heat[:heat_level]
  new_heat = print_spicy_heat*spiced_level
    puts "#{spicy_heat[:name]} (#{spicy_heat[:cuisine]}) | Heat Level: #{new_heat} "
  end
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
    spicy_foods.find do |spicy_food|
    spicy_food[:cuisine] == cuisine
  end
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here
   filter_food = spicy_foods.sort_by do |heat_level|
   heat_level[:heat_level]
  end
  filter_food
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
  print_spiciest_food = spicy_foods.filter do |spicy_food|
  if spicy_food[:heat_level] > 5
   spicy_food
  end
end
print_spicy_heat = "🌶"
print_spiciest_food.map do |spiced_food|
spiced_level = spiced_food[:heat_level]
heat = print_spicy_heat*spiced_level
   puts "#{spiced_food[:name]} (#{spiced_food[:cuisine]}) | Heat Level: #{heat}"
 end
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  spicy_foods.sum do |spicy_food|
   spicy_food[:heat_level]/spicy_food.length
  end
end
