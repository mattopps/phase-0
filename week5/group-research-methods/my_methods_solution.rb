# Research Methods

# I spent [] hours on this challenge.


=begin

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#




Psudeocode

Method 1 - alphabetize array
Input - An array of strings and numbers
Output - An array of strings and numbers sorted by size/alphabetical order

1 create a method
2 The method should take an array as an argument
3 the array should check the contents of the list
4 if there are only strings or only intigers it should return the array,  sorted
5 if there are both strings and intigers 
  the method should create a new array
    the method should test each item and if it is an intiger it   should remove it from the original array 
      it should add the integer to the new array 
        it should sort the array after all integers from the old array are added to the new array.
6 it should sort the old array after all the integers have been removed
7 it should add the contents of the old array to the new array
8 it should return the new array


Method 2 - Sort hash

1 Create a method
2 The method should accept a hash
3 Create an empty array
4 the method should separate each pair of key values into an array
5 the method should populate each pair array into the newly created empty array
6 the new array should be sorted by the value of each pair 


=end

# Person 3 Initial Solution
#def my_array_sorting_method(source)
  # num_array = []
  # string_array= []
  # sort_array = []
  
  # i_want_pets.each {|item| num_array.push(item) if item.is_a? Integer}
  # i_want_pets.each {|item| string_array.push(item) if item.is_a? String}
  
  # sort_array = num_array.sort
  # sort_array.concat(string_array.sort)
  #end  

#Refactor

def my_array_sorting_method(source)

  sort_array = []
  string_array= []
  
  i_want_pets.each {|item| sort_array.push(item) if item.is_a? Integer}
  i_want_pets.each {|item| string_array.push(item) if item.is_a? String}
  
  sort_array.sort!.concat(string_array.sort)
end

#refactoring even further might use .dup

def my_hash_sorting_method(source)
  source.sort {|k,v| k[1]<=>v[1]}
end




# Identify and describe the Ruby method(s) you implemented.
# The array method was pretty tricky to start with because sort won't work on a mix of strings and intigers. I tried a few different failed approaches. Leaving sort, and the Array docs behind I switched to the class object docs. Using the Integer docs I tried to see if I could force the result to be false when performing a mathematical operation on a string. Error. I tried to test if it was even or odd as a way to test if it was a fixnum. I hoped I would get a false and be able to use that as a conditional. Error. It took a while but I eventually found the appropriate method to do what I wanted all along in the Object docs- is_a? - which returns true/false if it is a type of object specified. 
# Once I was able to isolate the nums from the strings I had to put them each in new arrays because the method needs to be nondestructive of the original array. I got some weird and unexpected results when trying collect/!, map/! or sort!. on the new array.
#
#The hash method turned out to be right in the docs. If you call sort on a hash it creates an array with a nested subarray for each key/value pair. the bit with the k[]<=>v[] tells it it in which direction to sort and by which index value of the array. I just changed the variable to k,v to be more relevant to the challenge. Each array is only 2 items long. So you can either sort by the first index or the second index. The first[0] is the keys and the second[1] is the values. If you want the keys to determine the sort you would use [0].If you just switch it to v<=>k, it will sort by descending instead of ascending. If you put in an index higher than the last index in the array, in this case 2 or higher, it just returns the original array unsorted. I was expecting something else ecause I figured nil would get invlolved and do something weird.
#


=begin


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
=end