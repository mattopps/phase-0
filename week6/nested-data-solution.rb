
# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]
# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# # RELEASE 3: ITERATE OVER NESTED STRUCTURES

original_array = [5, [10, 15], [20,25,30], 35]
p new_array = original_array.dup.flatten.map {|number| number + 5}
original_array.flatten!.map! {|number| number + 5}
p new_array
p original_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


#non-destructive

startup_names.flatten.map {|name| name + 'ly, '}
p startup_names
p startup_names

#destructive
#new_names = startup_names.dup.flatten.map {|name| print name + 'ly, '}
# or
startup_names.flatten!.map! {|name| name + 'ly, '}
#I have no idea why but with a print inside the code block the items are replaced in each case with nil. startup_names.flatten!.map! {|name| print name + 'ly, '}
####
# This was my 'refactor' Because I was wildly confused and didn't realize that I already had the solution refactored for both the destructive and nondestructive methods. the only difference is '!'

# startup_names.each { 
#     |x|
#   if x.is_a? String
#   	print x + "ly, "
#   elsif x.kind_of?(Array)
#     x.each {|x| if x.kind_of?(Array)
#         x.each {|x| print x + 'ly, '}
#   else
#     print x + 'ly, '
#   end
# }
# end}

# This works, but it is so clunky, and I didn't really know what I was doing. I copied the code from the example in the releases on canvas and then copied it again a layer deeper. I just ran it 20 times and kept cutting and pasting and switching around the ifs, elses, and 'end' and '}' as the errors indicated. But it works.
# Another drawback - it is pre-designed with the number of total distinct arrays in mind. It would not work on a further nested level. It is not a truly
#I actually think just using x as a variable throughout is easier to read than inner, outer, whatever.

#Reflection
=begin

What are some general rules you can apply to nested arrays?

I don't get the meaning of this question.

What are some ways you can iterate over nested arrays?
you can flatten them and then work with just the one array. That is definitely the easiest thing to do. 

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

I used flatten for what I thought was my initial solution but was really the refactor. weird. Flatten is great. I was already familiar. It was my immediate first instinct. It removes the challenge of nested arrays because it is no longer nested.
=end