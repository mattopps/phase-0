# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode 
# - for binary search. 

# -recursive
#  -
#   --
#     ---
# -iterative
#  -find the midpoint of the array. array[array.length/2] 
#   --create a loop that searches as until either it finds the target or searches the whole list and determines that the target is not present. in that case return -1
#   -- if the target is greater then set the min to the mid + 1
#   ----else set the max to the mid -1

# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end
  
  def average
  	@average = scores.reduce(:+)/scores.length
  end

  def letter_grade
    case @average
      when (90..100)
   	    'A' 
      when (80..89)
	    'B' 
	  when (70..79)
	    'C' 
	  when (60..69)
	   	'D'
	  else 
	    'F'
	end
  end

end

  def linear_search(array, target)
  	array.include?(target) ? array.index(target) : -1 
  end

  def binary_search(array, target) #H0w can both tests be false.if the first test is false how is anything but the else clause triggered for the second clause.  
  	min = 0  
  	mid = (array.length/2).floor
  	max = array.length-1
  	
  	while min <= max

  	  if target == array[mid]
  	  	return mid
  	  elsif target.to_s > array[array.length/2].to_s
  	  	min = mid + 1
  	  	mid += (max-min/2).floor 
  	  elsif target.to_s < array[array.length/2].to_s
  	  	max = mid - 1
  	  	mid -= (max-min/2).floor
  	  else
  	    return -1
      end
    end
  end

ella = Student.new("Ella", [90,92,94,99,99,96])
alex = Student.new("Alex", [100,100,100,0,100]) 
corrine = Student.new("Corrine", [87,85,78,88,91]) 
delila = Student.new("Delila", [77,87,97,100,100]) 
bob = Student.new("Bob", [90,80,70,65,75]) 
  
students = [ella, alex, corrine, delila, bob]
# Refactored Solution

  # def letter_grade
  #    scores.value?[@average]
  # end





# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[1].first_name == "Alex"
p students[1].scores.length == 5
p students[1].scores[0] == students[1].scores[4]
p students[1].scores[3] == 0


# Additional Tests 1:

p students[1].average == 80
p students[1].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, alex) == 1
p linear_search(students, "NOT A STUDENT") == -1


p binary_search(students, alex) == 1
p binary_search(students, "NOT A STUDENT") == -1





# Reflection