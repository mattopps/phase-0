=begin


# Count Between

# I worked on this challenge [by myself

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

So we need to establish a counter placeholding variable anytime the iteration encounters a number in the array.

counter = 0
if UP > array[x] > LB
counter += 1
counter


=end


def count_between(list_of_integers, lower_bound, upper_bound)
  tally = 0
  list_of_integers.each do |num|
    if (num >= lower_bound) && (num <= upper_bound)
      tally += 1
    end
    end
    tally


end



