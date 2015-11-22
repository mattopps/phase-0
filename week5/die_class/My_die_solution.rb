# Die Class 1: Numeric

# I worked on this challenge [by myself,
# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Three methods for a new class
# Output: a new class with three defined methods
# Steps: create a class > create an initialize method > create a method to roll the die


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError if sides < 1
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution





=begin 

Reflection

- What is an ArgumentError and why would you use one?

- It is when the number of parameters passed to the method are other than the number specified for calling that method. Or when the argument passed is an unacceptable input.
  It is a great way to tell a user that the program didn't work because of the arguments passed to the method. This gives the user the precise info of what needs to be corrected. 

- What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

-	rand, none really. The method names for the class were already provided. 	

- What is a Ruby class?

- A class in Ruby is a collection of similar objects that all inherit partuclar inherant characteristics and behavior.

- Why would you use a Ruby class?

-Creating a new class is very useful if you plan on creating many objects that all behave in a similar way, and if you want to customize methods that aren't innate to ruby, that you intend to use multiple times for multiple similar objects.

- What is the difference between a local variable and an instance variable?
 
- Local variable can only be accessed within a method. An instance variable can be accessed by any object of that class.

- Where can an instance variable be used?

- Within objects of that instance's class.






=end