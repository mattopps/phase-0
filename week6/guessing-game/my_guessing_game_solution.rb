# Build a simple guessing game


# I worked on this challenge [by myself,
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Methods and variables
# Output: symbols or booleans
# Steps:

# ask the user for a guess

# feed the guess into the guessing game

# give the user feedback on their guess?



# # Initial Solution
#class GuessingGame
# def guess(guessed_number)
#   	 @guessed_number = guessed_number
		#raise NumberError unless @guessed_number .is_a?Integer 
# 			if @guessed_number  > @answer
# 				:high 
# 			elsif @guessed_number  == @answer
# 				:correct
# 			elsif @guessed_number  < @answer
# 				:low
#   		end  
# end

# def solved?
#   @guessed_number == @answer ? true : false
  	
  	# if @guess == @answer;True
  	# else ; false class GuessingGame
  #end
#end
 # Refactored Solution
class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

  def guess(guessed_number)
  	 @guessed_number = guessed_number

  	 raise NumberError unless @guessed_number .is_a?Integer 
	
	 return :high if @guessed_number  > @answer
	 return :correct if @guessed_number  == @answer
	 :low if @guessed_number  < @answer
  end

  def solved?
  	@guessed_number == @answer 
  end
end







# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

	#- Not Sure I understand this question. they represent objects in whatever way you program them to. If you create a dog class with only two legs that's what all dogs you instantiate will have.

# When should you use instance variables? What do they do for you?

	# When you want the thing to be remembered and usable or shared among other objects and methods. Or when the thing you are describing is a constant state of the object, like dog's having 4 legs. Instance variable allow you to access information for any object of the class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

 # Flow control is the conditional operation of different functions in a method. I had trouble because unexpectedly for me when I used the one line version of an if statement to return the different symbols :high, :correct, :low -all but the last statement were skipped and the last was implicitly returned. But then if I added an explicit return statement to the first two ifs it worked.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# I don't know. I think using strings would have been no different. 



