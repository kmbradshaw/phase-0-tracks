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

def create_list(item)
  grocery_list = {}
  new_item = item.split(" ")
  new_item.each do |food|
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
