#Attr Methods

# I worked on this challenge by myself

# I spent [3] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:
#define a name method in the Nameclass
#define a hello method that accesses the name in the greeting class.

class NameData

	def name
	  "Steve"
	end
end



class Greetings

	def initialize
		@name = NameData.new
	end

	def hello
		puts "Hello, " + @name.name + "! How wonderful to see you today."
	end
end

greet = Greetings.new
greet.hello

# Reflection
=begin

What is a reader method?
	-A method that allows you to access information about a characteristic of an object.
What is a writer method?
	- A method that allows modification of a characteristic of an object.
What do the attr methods do for you?
	-They are shortcuts to defining methods that have read/write functionality. 
Should you always use an accessor to cover your bases? Why or why not?
	-Absolutely not. It would likely lead to inadvertantly overwriting data in unexpected places and ruin programs.
What is confusing to you about these methods?
	-It took me a long time get this precisely. First I defined the name method to be #@name = "Steve". Then I changed it to # def initialize because the release said "initialize a name. At first I tried using interpolation for ##{@name} in the salutation string. Until I tried to copy the syntax from the example more closely and I saw that I needed to call the name method. 
	-Before I read TWGR I thought attr methods connect to methods defined in other classes. Not shortcuts to creation of those methods within a class. 


=end
