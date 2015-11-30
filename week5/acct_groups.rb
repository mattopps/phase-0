=begin

psuedocode.
1- create a method
2- which accepts a list
3- divide the total number of items in the list by 5
4- create that many new arrays plus one.
5- randomize the original list
6- cap the number of items allowed in each new array at 5
7- add names from the old list to the new lists. 




=end

		# I was going to try this -number_of_groups + 1 if list.length % 5 == 0

# def create_groups(list, group_size)
# 	number_of_groups = (list.length.to_f / group_size).ceil
# 	acct_groups = Array.new(number_of_groups) {Array.new(group_size, "roster_spot")}

# 		i_list = 0
# 		i_array = 0
		
# 		while i_array < acct_groups.length
# 			i_sub_arrays = 0
			
# 			while i_sub_arrays < group_size
# 			acct_groups[i_array][i_sub_arrays] = list[i_list]
# 			i_sub_arrays += 1
# 			i_list += 1
# 			end
		
# 		i_array += 1
# 		end
# acct_groups
# end

#Randomize - If you want to randomize the list every time you run the program - create a new array equal 
# to a random version of the list array, random = list.sample(list.length) and run the method with random as an argument

cohort = ['Jack Abernethy', 'Mohammad Amin', 'Zollie Barnes', 'Reuben Brandt', 'Dana Breen', 'Breton Burnett', 'Saundra Vanessa Castaneda', 'Luis De Castro', 'Nicolette Chambers', 'Kerry Choy', 'Nick Davies', 'KB DiAngelo', 'Adrian Diaz', 'David Diaz', 'Bob Dorff', 'Michael Du', 'Paul Dynowski', 'Jenna Espezua', 'Sean Fleming', 'Marcel Haesok', 'Albert Hahn', 'Arthur Head', 'Jonathan Huang', 'Thomas Huang', 'Alex Jamar', 'Kevin Jones', 'Steven Jones', 'Coleby Kent', 'Caroline Kenworthy', 'Calvin Lang', 'Yi Lu', 'David Ma', 'Sean Massih', 'Tom McHenry', 'Alex Mitzman', 'Lydia Nash', 'Brenda Nguyen', 'Matthew Oppenheimer', 'Mason Pierce', 'Joe Plonsker', 'Mira Scarvalone', 'Joseph Scott', 'Chris Shahin', 'Benjamin Shpringer', 'Lindsey Stevenson', 'Phil Thomas', 'Gary Tso', 'Ting Wang', 'Monique Williamson', 'Regina Wong', 'Hanah Yendler']



#Refactor
def create_groups(list, group_size)
	acct_groups = []
	temp = list.each_slice(group_size) { |group|  acct_groups.push(group) } # During the bingo challenge, while futile-ly attempting a backward solution using flatten and then each slice to put it back together, I realized the value of my bingo board was nil. because I was just printing it in the iteration, never actually assigning anything. sooooo I realized I need to push each subarrayhere otherwise the actual value of acct_groups would be nil.
	
	acct_groups.each{|group| p group}
	p acct_groups 
end

create_groups(cohort, 5)


#Randomized - Refactor version
#def create_groups(list, group_size)
#	acct_groups = list.shuffle.each_slice(group_size) { |group| p group }
#end

# Reflection

# What was the most interesting and most difficult part of this challenge?

# I liked the creation of multiple nested arrays. At first I wanted to create a new array separately for each accountability group and try to have a method name the new group by number by iterating through the list of names x times. I have no idea yet if that is even possible in ruby.
# It was very challenging to figure A) if one method could create multiple separate and uniquely assigned arrays. B)How to separately iterate through the subarrays and the main array.
# I don't know how to nest for loops. I thought of doing an each with three variable (main array index, subarray index, list index) 

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# Yes and no. Definitely not as much as I would like. I seem to go off in very unfruitful directions to start, which requires rewriting the psuedocode even more than it requires researching methods to accomplish the psuedocode.

# Was your approach for automating this task a good solution? What could have made it even better?

# UMMM, My initial approach? No, not at all. I tried something very much more complicated, and possibly impossible. My instinct is always to remove items from an old array and push them to a new array instead of the direct value assignment through iteration that I ended with. This has happened for many of the recent challenges.
# The approach to the actual solution(before refactoring)? I think it's ok. BC it works. so .....? I am confused by this question. 
# well one issue was that the list has to be an array of strings. I didn't automate the process of turning a list of plain text into an array of strings. I manually added a lot of '""s and ,s. The commas were easy enough because a multi cursor can go to the end of each line. Wasn't sure how to get the multi cursors to the beginnings of each line.

# What data structure did you decide to store the accountability groups in and why? 

# An Array. The data were a random unordered list with no special qualifying information related to any item so a hash wasn't necessary. I think I might be more comfortable with array syntax , iterating through them, and rewriting them, than with hash syntax.
# Then again, upon refactoring the method creates an array

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# I learned to not be so afraid of using while loops or nested while loops. I don't know if they are generally considered clunky and not DRY, but so far I like the above solution better than for loops or .each.
# I learned that I have a lot to learn about enumerables, and that I wish that the Ruby docs would include those methods on each of the doc pages for Arrays and Hashes. Would have saved me hours and hours.

# Methods used-

# .ceil to round up. but it has to be a float and I tested out so many different operations with it and didn't always understand the results, especially when supplying a parameter to .ceil
# .sample for random array access
# .shuffle for randomizing an array
# .each_slice(size) to create an array of as many subarrays as needed to get each item of the original array into a subarray not longer than x.









