# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

#  Pseudocode
# isolate each word in a sentence
#   reverse each word in the sentence
#   	combine all the reversed words separated by a space.


# Initial Solution
def reverse_words(sentence)
	backwords = sentence.split.map!{|word| word.reverse}
	# backwords = backwords.join(" ")
	p backwords.join(" ")
	 
end

reverse_words("She knows the pieces fit")
# Refactored Solution





# Reflection

