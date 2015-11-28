# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Instance variables
# Output: 
# Steps: define methods


# Initial Solution

# class Die
#   def initialize(labels)
#   	@labels = labels
#   	@sides = labels.length
#   	raise ArgumentError("Gotta give me something") if labels == []
#   end

#   def sides
#   	@sides 
#   end

#   def roll
#   	@roll = @labels[rand(0..@labels.length-1)]
#   end
# end



# Refactored Solution
class Die
  def initialize(labels)
  	@labels = labels
  	@sides = labels.length
  	raise ArgumentError.new("Gotta give me something") if labels == []
  end

  def sides
  	@sides 
  end

  def roll
  	@roll = @labels.sample
  end
end








# # Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# 	- Needed two code changes. Before sides was a number so @sides was just the same number. Here it is a string so you need to use #length to get the number of sides. And #roll needed to be linked to the instance variable for number of sides. 

# What does this exercise teach you about making code that is easily changeable or modifiable? 

# 	- Need to be careful and precise with our variables and their references.

# What new methods did you learn when working on this challenge, if any?

# 	-Sample. It takes a random member of the collection. Truth is I could have refactored with sample in the first die challenge. In this case I might not have used new methods here.

# What concepts about classes were you able to solidify in this challenge?

	#- Still need some more study.

