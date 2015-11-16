# def largest_integer(list_of_nums)
#   list_of_nums.max
# end
=begin
Hmmm. Not much psuedocode necessary here. Once you find the solution for smallest integer you just change the direcetion of the boolean arrow to larger and rename the vairables and it is basically the exact same solution.



=end
def largest_integer(array)
   
   i = 0
   i2 = i + 1
   test = array[i]
   largest = []

  
    array.each do |num|
     if num > test
       test = num
     end
     end
     
     largest.push(test)
     largest[0]
   end