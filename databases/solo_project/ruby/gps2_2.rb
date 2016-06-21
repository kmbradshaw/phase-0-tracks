# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define a method that takes a string
    #separate the string at spaces
    #add the values to a hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: Add item + quantity to previously created hash
# output: print the hash

# Method to remove an item from the list
# input: item to remove
# steps: locate within hash, remove from has
# output: update_hash

# Method to update the quantity of an item
# input: item name, new quantity
# steps: modify the quantity
# output: return item and new quantity

# Method to print a list and make it look pretty
# input: updated hash
# steps: iteration through hash, update visual display style
# output: list - series of strings

def create_list(food_string)
  grocery_list = {}
  new_food_array = food_string.split(" ")
  new_food_array.each do |food|
    grocery_list[food] = 0
  end
  # p grocery_list
  print_list(grocery_list)
  return grocery_list
end

def add_item(grocery, item, quantity_item=0)
  grocery[item] = quantity_item
  # p grocery
end

def remove_item(grocery, item)
  grocery.delete(item)
  # p grocery
end

def update_quantity(grocery, item, new_quantity)
  grocery[item] = new_quantity
  # p grocery
end

def print_list(grocery)
  grocery.each { |item, quantity| 
    puts "We need #{quantity} #{item}"
    }
end

grocery = create_list("")
  
create_list("Carrots Basil Vitamins")

add_item(grocery, "Lemonade", 2)
add_item(grocery, "Tomatoes", 3)
add_item(grocery, "Onions", 1)
add_item(grocery, "Ice Cream", 4)

remove_item(grocery, "Lemonade")

update_quantity(grocery, "Ice Cream", 1)

print_list(grocery)

#Pseudocode has always been a weak point for me, our guide was great about asking us to create specific pseudocode and reference it through the GPS
#We decided to go with a Hash because it can easily store two variables together. An array would have be able to do the same but the hash was easier for us to iterate through. 
#A method returns the variables or the changes to the variables 
#You can pass strings, integers, defined variables, hashes and arrays through methods
#You can pass information between methods by defining the information globally, using a class, or calling a method within another method
#I feel like I gained a huge understanding of Hashes compared to where I started. Also our guide encouraged us to use specific variables which was something I had been lacking in the past. 
