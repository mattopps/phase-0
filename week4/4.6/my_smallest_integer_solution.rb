# def smallest_integer(array)
#   array.sort
#   array[0]
# end

# a = [-10, -20, -30, -1000]
#sorting should work at least for the smallest neg number. weird. irb returns -1000

# but instead lets do a longer method of comparing numbers to each other

# start with a variable equal to the first value of the array
# replace it the next sequential value in the array if that is lower.
# return the variable

# def smallest_integer(array)
#   smallest = 0
#   n = 0
#   while n < array.length
#     if array[n] < smallest
#       smallest = array[n]
#     end
#     n + 1
#     end
#     smallest 
# end - This seems to produce an infinite loop and I'm not sure why.let's try a third option. They seem to want us to use iteration so let's .ech it I guess
# 

# def smallest_integer(array)
#   array.min
# end

#well that was annoyingly easy after all that wasted time. And I used to be such a wiz at while lops limited by .length. 
# I didn't actually look for this in the ruby docs. It just occurred to me to start testing obvious words, I first tried amallest, least , smallest?, and least?



def smallest_integer(array)
   
   i = 0
   i2 = i + 1
   test = array[i]
   smallest = []

   array.each do |num|

    if num < test
      test = num
    end
  end
  
    smallest.push(test)
    smallest[0]
  end

