# # Example given 4563 9601 2200 1999
# # Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
# # Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
# # Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
# # Step 3: 70 (total above) % 10 == 0
# # Step 4: Profit


# # Class Warfare, Validate a Credit Card Number


# # I worked on this challenge [ with: Tom McHenry].
# # I spent [4.5] hours on this challenge. 3, 1.5

# # Pseudocode

# # Input: 16-digit integer
# # Output: true or false or ArgumentError if anything but 16 digits
# # Steps:
# # 1) Create a credit card number object
# # 2) Create a credit card validator method
# # 3) Check if credit card number is valid
# #   4) Check if number is exactly 16 digits
# #   5) IF it's not, return ArgumentError
# #   6) ELSE 
# #   7) Create an array 
# #   8 Look through the number
# #   9) Make each individual digit in the integer a separate item in the array
# #   10) Look through each number in the number array in reverse order
# #   11) Double every other integer
# #   12) Make each digit a separate item in the array
# #   13) Sum all the values in the array
# #   14) IF the sum of the array is divisible by 10
# #     15) Return True
# #   16) ELSE
# #     17) Return False


# Initial Solution

# class CreditCard
  
#   def initialize (number)
#     @number = number.to_s 
#     raise ArgumentError unless @number.length == 16 
#   end
  
#   def check_card
#     number_array = @number.split(//)
#     number_array.map! {|x| x.to_i }
#   index = -2
#     while index.abs <= number_array.length
#       number_array[index] = number_array[index] * 2
#       index -= 2
#       end 
#     new_array = number_array.join.split(//)
#     new_array.map! {|num| num.to_i} 
#     new_array.reduce(:+) % 10 == 0
#   end
# end

# visa = CreditCard.new(4563960122001999)
# p visa.check_card

=begin
ideas for refactor
1 -chunk by even index
2-create a new array of every other index. iterate, {|x| x*2},
	to string
	split
	concat
	reduce
----
=end

# Refactored Solution v. 1 abandoning the while loop and using each_with_index

# class CreditCard
  
#   def initialize (number)
#     @number = number.to_s 
#     raise ArgumentError unless @number.length == 16 
#   end
  
#   def check_card
# 	a = @number.reverse.split(//)
# 	b = []
# 	c = []

# 	a.each_with_index do |v, i| 
#   		if i.odd? 
#     		b.push((v.to_i*2).to_s) 
#  		else
#   			c.push(v)
# 		end
# 	  end
# #p b
#  	b = b.join.split(//)
#  	b = b.concat(c)
#  	b.map! {|x| x.to_i}
#  	b = b.reduce(:+) % 10 == 0
	  
#   end
# end

# Refactor v.2 - Honestly I like my while loops and I think it is more readable and intuitive. as far as refactoring goes we can consolidate many lines because we superflously started new lines and renamed variables to apply method calls that can be chained together.
class CreditCard
  
  def initialize (number)
    @number = number.to_s 
    raise ArgumentError unless @number.length == 16 
  end
  
  def check_card
    number_array = @number.split(//).map!{|x| x.to_i }
  
  	index = -2
    	while index.abs <= number_array.length
      	  number_array[index] *= 2
      	  index -= 2
        end 
    number_array.join.split(//).map!{|num| num.to_i}.reduce(:+) % 10 == 0
  end
end



#would this be a way to go? a.reverse.partition{|x| ---}

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?

- figuring out how to run the code block on every other digit of the number took us a long time, once we had the numbers being multiplied we really hit a wall trying to add the digits for each product.
What new methods did you find to help you when you refactored?

	#each_with_index.
	We tried and failed for a long time to use .each/.map and eventually just resorted to a while loop.

What concepts or learnings were you able to solidify in this challenge?
	We were able to solidify what the enuerables do when called, which ones modify the array, or don't, or return a new value. 

=end
