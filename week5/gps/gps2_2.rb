
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: We didn't actually do this for a list, just individual items one at a time. If it was just a list of things without quantity I would use an array. Or the hash with all default values. Probably easier to manipulate the hash.
  # create a new hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here? yes]
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: add an item (and a quantity ) to the newly created hash
# output: returns a hash. doesn't print anything.

# Method to remove an item from the list
# input: item already in the hash to be removed
# steps: remove the key 
# output: returns the hash without the deleted key:value pair

# Method to update the quantity of an item
# input: an item already on the list with a quantity
# steps: add an item (and quantity) to the list
# output: returns a hash. It will have the same number of key:value pairs as before but one key (should, ie. no error will be raised if you input the same number. But what would be the point?) have a different quantity attached.

# Method to print a list and make it look pretty
# input: a hash or array
# steps: print the items in the array or hash to the console
# output: contents of the array or hash


def new_list
  Hash.new()
end

def add_item(list, item, quantity = 1)
  list[item] = quantity
  end

def remove_item(list, item)
  list.delete(item)
end

def update_list(list, item, quantity)
  list[item] = quantity
end

def print_list(list)
  list.each do |item,quantity|
    print" #{quantity} #{item}, " #We know key and values are switched.  We refactored this to read naturally
  end
end

grocery_list = new_list


add_item(grocery_list, "Lemonade", 2)
print_list(grocery_list)
add_item(grocery_list, "Tomatoes", 3)
print_list(grocery_list)
add_item(grocery_list, "Onions", 1)
print_list(grocery_list)
add_item(grocery_list, "Ice Cream", 4)
print_list(grocery_list)
remove_item(grocery_list, "Lemonade")
print_list(grocery_list)
update_list(grocery_list, "Ice Cream", 1)
print_list(grocery_list)




# What did you learn about pseudocode from working on this challenge?-

# - I learned that a psuedocode is amazing and helps greatly reduce the time and confusion to code, especially because my instinct is to do things that are more complicated than they need to be. 
#The psuedocode here is very simple, direct, and concise. The ideas provided make it clear that the 5 methods for this challenge can be extremely small blocks that are still very powerful. Each method only needed one line of code. Because I initially veered away from the direct and simple path in the psuedocode I wrote so much unnecessary code and spent a lot of time that I didn't need to.

# What are the tradeoffs of using Arrays and Hashes for this challenge?

# I don't know why you would use an array for this challenge. Hashes are syntactically more complex than arrays. But they are much easier to manipulate in this context. It would be heard to locate and act on a specific item in an array of this kind when the order of the list isn't thought out. It's way easier to delete a named key than a value at an index, it is way more complicated to simultaneously delte the item and its quantity from an array.

# What does a method return?

# -the last evaluated line of the method, or whatever is specifically commanded to be returned. 

# What kind of things can you pass into methods as arguments?

# -Just about anything. numbers, strings, hashes, arrays, sets, ranges.

# How can you pass information between methods?

# -creating a placeholder variable outside of the method. Honestly I need more research on this. Our guide had to basically tell us.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# -see above. solidified - the importance of psuedocoding, and of sticking to the pseudocode. That's not a ruby concept though. Methods don't print to the console unless you tell it to print. It only returns the last evaluated line. Which is useful but not made apparent without specific instructions. I still would like to know how to get each key/value to print on a line together, instead of puts which so far we only got to have one item per line, alternating lines between key and value.






