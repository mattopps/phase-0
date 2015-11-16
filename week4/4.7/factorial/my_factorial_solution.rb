# # Factorial

# # I worked on this challenge [with Jenna Espezua].
# # 
# # YAY
# # 


# -multiply a number by the next smallest number 
# until you get to 1.
 
#  -IF the number is 0 or 1 it returns 1
#  -for all numbers higher than 1 
  
#  it will multiply the number
#  by the (number-1) in a loop until it multiplies by 1. then the loop stops. 
#  it should return the product of all those multiplications.






 
# # 
# # 

# # Your Solution Below
# def factorial(number)

#   if (number == 0)
#     return 1
#   end  

# end
------------

# def factorial(number)
#   num_array = []
#   product = 1
#   if (number==0)
#   return 1
#   end
#   if number > 0
#   while number > 0
#   num_array.push(number)
#   number -= 1
#   end
#   num_array.each do |x|
#   product *= x
#   end
#   return product
#   end
# end

------------

=begin


def factorial(n)
  if n < 0
    return nil
  end

  result = 1
  while n > 0
    result = result * n

    n -= 1
  end

  return result
end



=end
======

=begin
  refactored
  def factorial(n)
  if n == 0; return 1; end
  (1..n).reduce(:*)
end
=end







