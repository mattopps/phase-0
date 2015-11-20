# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer. (The challenge on canvas stipulates positive integer, though the rspec file does not test for this and my method works fine with negative numbers and passes th rspecs just the same when I comment out the stipulation that the number return nil if it is less than 1)
# What is the output? A string of the same characters, but with commas every third character starting from the end of the string moving towards the front of the string.
# What are the steps needed to solve the problem? 

=begin
1 create a method which accepts as an argument a (positive) number
2 return nil if the number is not positive
3 convert the number into a string 
4 look through each character in the string starting from the back of the string 
5 add a "," after every third character.
6 
=end

# 1. Initial Solution
#def separate_comma(number)
#	if number <= 0
#		return nil
#	end
#num_string = ""
#temp_string = a.chars.slice(-3,3).join + ",")
#temp_string.reverse
#
#

=begin

Well, I never actually got an initial solution to work. I think I was getting close, but my approach was obviously very circuitous
I was getting close I think. I was able to get the number into a string, and I was able to isolate a segment of three numbers and add a comma. But I wasn't sure how to iterate through the string and do it again for the next three characters or remove those three characters from the string at the same time as I added them to the new string with the comma tacked on. Getting nowhere trying to manipulate the string or iterate through it, I realized I was making it much more complicated than it needed to be.
My point is, Not sure if you would call this an initial solution or a re-factor or somewhere in between.
=end




# 2. Re-factored Solution
def separate_comma(number)
	#if number <= 0
	#	return nil
	#end

	num_string = number.to_s
	i = -4
	
	while i.abs <= num_string.length
    	num_string[i] += ","
    	i -= 4
	end
	num_string
end
=begin




# 3. Reflection
=begin
Q- What was your process for breaking the problem down? What different approaches did you consider?

A-  I thought about which way would be simpler adding the commas from the front or the back. I initially thought iterating forwards was easier so I reversed the string. I also considered trying to form an array or subarrays of each three number segment.
	I initially thought that it would be easiest to remove 3 number chunks from the original string, add the comma, and add that 4 character string to a string, and then repeat the process until coming to the end of the string. The reverse the string again. This proved much more difficult to accomplish that I thought it would.
	My next approach was to add the commas directly into the string.


Q- Was your pseudocode effective in helping you build a successful initial solution?

A- Not even close. It was awful. I started the whole process over again and wrote psuedocode to directly add commas.

Q- What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

A- hmm, none. Just applied a basic loop. I used .char before that when I was trying to form new arrays three characters at a time.

Q- How did you initially iterate through the data structure?

A- I did .char to create an array of separate characters but fter that I had trouble iterating through that array to add commas or rejoin the subarrays

Q- Do you feel your refactored solution is more readable than your initial solution? Why

A- yes. it is very simple. It doesn't require many steps or the creation of more than one new structure to store the manipulated data.


	
=end

