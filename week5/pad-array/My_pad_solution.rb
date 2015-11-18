 
# 0. Pseudocode

# What is the input? an array of items, a minimum length for the array, a value to pad the array if needed
# What is the output? an array
# What are the steps needed to solve the problem?

=begin

Destructive
1. define a method to accept the input (an array, a minimum length requirement, and a default value to add to the array if needed to meet minimum length)
2. check the size of the array
3. compare array length to the minimum length requirement
4. if the array length is at least as long as the requirement - return the array unaltered
5. if the array length is too short - add default value(s) to the array to meet the requirement
6. return the original array

Non-Destructive

-Repeat above steps 1 - 4
5-if the array length is too short
 create a new array.
  add the contents of the input array to the new array
  add default value(s) to the array to meet the requirement
6. return the original array
=end 


=begin initial solution - Destructive

def pad!(array, min_size, value = nil) #destructive
  if
    array.length >= min_size 
    return array
  else
    while array.length < min_size
      array.push(value)
  end
    return array
  end
end
=end

def pad!(array, min_size, value = nil) #Refactor destructive
  if array.length >= min_size
    return array
  else
    for i in array.length...min_size
      array[i] = value
    end
  end    
  array
end


=begin
# 1. Initial Solution

def pad(array, min_size, value = nil)  
  if
    array.length >= min_size 
    return array
  else
    #while array.length < min_size
      array.push(value)
  end
    return array
  end
end
#(array.each do |item|
     #if item != value 
      #  array << value
       #break if array.length == min_size 
     #end
    #end
  #end
    #array
  #end)#

###  This method cannot handle an empty array.
=end
 

#Refactor #non-destructive

def pad(array, min_size, value = nil)  
  
  new_array = array.dup
  #new_array = [].concat(array)
  #new_array = Array.new.concat(array)
  if new_array.length >= min_size
    return new_array
  else
    for i in new_array.length...min_size
      new_array[i] = value
    end
  end
  new_array
end

=begin
Q-  Were you successful in breaking the problem down into small steps?

A-Yes

Q-  Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

A- Until we got to the part where we had to nondestructively create a new array to append to, which technically wasnt specifically addressed as a step in the psueodocode. maybe that was part of the issue.

Q - Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

A- yes for the destructive, no for the nondestructive. We couldn't figure out how to nondestructively accomplish what push accomplishes, nor to iterate over the array and add nondestructively. We were pretty sure the solution was an alt array. But we set it equal to the original array which was the problem.

Q- When you refactored, did you find any existing methods in Ruby to clean up your code?

A- yes. dup. dup was great. didn't find anything to refactor the second half of the code for each method yet.

Q- How readable is your solution? Did you and your pair choose descriptive variable names?
Seems good to me.

Q- What is the difference between destructive and non-destructive methods in your own words?

A - any changes made to an object in a nondestructive method do not alter the original structure of the object.
  No matter what you do to it, it will return itself as it started at the end of your changes.
  
 =end

