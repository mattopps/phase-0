# Calculate the mode Pairing Challenge

# I worked on this challenge with Kaybi DiAngelo.

# I spent [1] hour pairing on this challenge. Then some more time later refactoring even more.


# 0. Pseudocode

# What is the input? - Input an array of numbers or strings.
# What is the output? (i.e. What should the code return?) - An array of numbers or strings.
# What are the steps needed to solve the problem? 
=begin
1- define a method that will take in an array as an argument. 

2- the method should create an empty hash.

3-  The method will look at each item in the array.   
  
  3.1 see if the item is in the hash
  
  3.2 if the item is not in the hash the method will   add the item to the hash as a key with a value of   1.
 
  3.3 If the item is in the hash it will add 1 to     the value of the key.

4-sort the hash (* or just find the highest value(s))

5- create a new empty array.

6- add the key(s) with the highest value to the new empty array.

7-return the array.
=end


# 1. Initial Solution

# def mode(array)
#   mode_hash = {}
#   array.each do |item|
#     if mode_hash.has_key?(item) == false
#       mode_hash[item] = 1
#     else
#       mode_hash[item] += 1
#     end
#   end
#   highest_value = 0
#   mode_hash.each do |key, value|
#     if value > highest_value
#       highest_value = value
#     end
#   end
#   result_array = []
#   mode_hash.each do |key, value|
#     if (value == highest_value)  && (result_array.include?(key) == false)
#       result_array << key
#     end
#   end
#   return result_array
# end

# my_array = [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3]

# p mode(my_array)


# 3. Refactored Solution Take 1

# def mode2(array)
#   mode_hash = {}
#   array.each do |item|
#     if !mode_hash.key?(item)
#       mode_hash[item] = 1
#     else
#       mode_hash[item] += 1
#     end
#   end    
#   highest_value = 0
#   mode_hash.each_value do |value|
#     highest_value = value if value > highest_value
#   end
#   result_array = []
#   mode_hash.each do |key, value|
#     result_array << key if (value == highest_value)  && (result_array.include?(key) == false)
#   end
#   return result_array
# end

# my_array = [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3]
# p mode2(my_array)

#3. Refactored Solution Take 2

# def mode2(array)
#   mode_hash = Hash.new(0)
  
#   array.each do |item|
#       mode_hash[item] += 1
#   end    
  
#   highest_value = 0
#   mode_hash.each_value do |value|
#     highest_value = value if value > highest_value
#   end
#   result_array = []
#   mode_hash.each do |key, value|
#     result_array << key if (value == highest_value)  && (result_array.include?(key) == false)
#   end
#   return result_array
# end
# my_array = [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3]
# p mode2(my_array)



=begin 
Refactor Take 3
def mode2(array)
  mode_hash = Hash.new(0)
  
  array.each do |item|
      mode_hash[item] += 1
  end    
  
 max_val =  mode_hash.values.max
  
  result_array = []
  mode_hash.each do |key, value|
    result_array << key if (value == max_val)  && (result_array.include?(key) == false)
  end
  return result_array
end
my_array = [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3]
p mode2(my_array)

=end
=begin Refactor Take 4

def mode2(array)
  mode_hash = Hash.new(0)
  
  array.each do |item|
      mode_hash[item] += 1
  end    
  
 max_val =  mode_hash.values.max
 ## max_val = mode_hash.values.sort.pop ## also works
  
  result_array = []
  mode_hash.each do |key, value|
    result_array << key if (value == max_val)  && (result_array.include?(key) == false)
  end
  return result_array
end
my_array = [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3]
p mode2(my_array)

=end

def mode(array)
  mode_hash = Hash.new(0)
  
  array.each do |item|
      mode_hash[item] += 1
  end    

 highest_value = mode_hash.values.sort.pop

  mode_hash.delete_if {|key, value| value < highest_value}
  # same as Keep_if {|key, value| value =
  # highest_value}
  return_array = []
  mode_hash.each {|k,v| return_array.push(k)}
  return_array
end


my_array = [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, "banana", "banana", "banana", "banana", "banana", "banana", "banana"]
p mode(my_array)


# # 4. Reflection
# Q1 Which data structure did you and your pair decide to implement and why?

# A1 -We decided to use a hash because it can store the item we are counting and the number of times it is counted.

# Q2 Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

# A2 -yes (though my last pair was gps2.2. I didn't do a good job pseudocoding that challenge, keeping it simple, and breaking it down into very small steps.This time we did. meany very small very clearly articulated chunks.)

# Q3 What issues/successes did you run into when translating your pseudocode to code?

# A3 - Steps 4,5,6 above were the trickiest. We weren't initially aware of an obvious way to access the values of the hash rather than the keys.

# Q4 What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# A4 - we used .each many times. Not so far. There is a section in Black's book about passing the hash itself to a method as an argument. But as of yet I haven't gotten it. 





