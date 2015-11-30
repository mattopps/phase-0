# # A Nested Array to Model a Bingo Board SOLO CHALLENGE

# # I spent [#] hours on this challenge.


# # Release 0: Pseudocode
# # Outline:

# # Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#   #fill in the outline here
#   generate a random selection from the list of letters and a random number from the list of numbers
#   change the number to a string
#   Display the number and letter as a single string

# # Check the called column for the number called.
#   #fill in the outline here
#     check each position corresponding to the letter in each subarray for the number

# # If the number is in the column, replace with an 'x'
#   #fill in the outline here
#   set the item in the 

# # Display a column to the console
#   #fill in the outline here
#   puts each item occupying the same position of each subarray

# # Display the board to the console (prettily)
#   #fill in the outline here
#   p board

# # Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @letter = ['B', 'I', 'N', 'G', 'O'].sample 
#     @number = rand(1..100).to_s
#     p @letter + @number # tests to make sure the right column is accessed for the letter called.
#   end

#   def check
#     letter_hash =  {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
#      sub_array = 0
#      p column = letter_hash[@letter]

#      while sub_array <= 4  
    
#     if @number.to_i == @bingo_board[sub_array][column]
#          @bingo_board[sub_array][column] = "X"
#       end
#       sub_array += 1
#       end
#      @bingo_board.each {|x| p x}
#   end

### Lightly Refactored Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @letter = ['B', 'I', 'N', 'G', 'O'].sample 
#     @number = rand(1..100)
#     p #{@letter}#{@number}
#   end

#   def check
#      letter_hash =  {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
#      sub_array = 0
#      p column = letter_hash[@letter]

#      while sub_array_index <= 4  
#       if @number == @bingo_board[sub_array_index][column]
#          @bingo_board[sub_array][column] = "X"
#       end
#       sub_array_index += 1
#      end
#      @bingo_board.each {|x| p x}
#   end
# end

# end

# Refactored Solution

class BingoBoard
    
  def initialize(board)
     @bingo_board = board
  end
  
  def call
    @letter = ['B', 'I', 'N', 'G', 'O'].sample 
    @number = rand(1..100)
    #@number = 68 # This line is here to use for easy testing. Comment out the previous line and look for a specific number.
    p "#{@letter}#{@number}"
  end

  def check
    letter_hash =  {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
    
    column = letter_hash[@letter]
    
    @bingo_board.each {|x| x[column] = "X" if x[column] == @number}
    @bingo_board.each {|x| p x}
  end
end

#eachwithindex method

#instead of line 112 use this
#@bingo_board.each_with_index {|x,i| x[i] = "X" if x[i] == @number && i == column}
# I don't actually think it is an improvement.

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check


#Reflection
#WOWOWOWW This was one of those challenges where I could have sworn everything was working and I couldn't understand what was going on(my second pass at it. My first time I spent three hours and got sidetracked and ran around in circles trying to determine what kind of hash to use to access the letters and columns and where to put the variables. ) I got it to the point that I could print the board, and identify which column was called. As a check I printed the number of the column corresponding to the letter in #call. and it printed right. But instead of only marking an X if the number was called it marked the entire column as X. I could not understand why at all. after a long time I changed some stuff and the I realized that I had set my conditional with an assignment operator instead of the boolean conditional. so It was resetting @number on every loop. So problem solved. Except then It didn't mark X even when the number called was in the column called. And after too much time I saw that @number was a string and needed to be unconverted(or reconverted or however you choose to look at it) to an integer. My initial construction of #call had string interpolation to display the letter and the number. In which case it might be possible that the number wouldn't need to be switched to a string.
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  -Very difficult. Maybe it was because there were very specific prompts here, as opposed to other challenges which just had 'input,output,pseudocode' maybe that threw me off. Also the first time I attempted it the psuedocode was pretty much done for us in the releases, meaning, the instructions very clearly contained step by step actions and considerations about what would be happening in the code. So I didn't strictly wait until I had a full psuedocode to start defining #call and #check.

What are the benefits of using a class for this challenge?
  -The ability to access the same variables outside of each method i.e. the shared access to @number and @letter.

How can you access coordinates in a nested array?
  -Unsure about the scope of this question. Is the meaning - how do you iterate through arrays and subarrays to find specific subindex locations? 
   Or is simply asking how do you access a specific item at an index of a subarray, like the challenge of the first 3 releases in Assignment 6.5? 
   If that is the case you simply need to match the level you are trying to access with the same number brackets appended to the parent array. EX. if you are trying to access an item 4 subarrays deep in the parent array you would use Parent_array[#][#][#][#].

What methods did you use to access and modify the array?
  -Initially, none really. sample and rand to get the call. but no methods to modify. just a loop to find the right column and row and then I directly set the new value.
   On refactoring I used # each. I could have used #eachwithindex but I actually think each reads more simply and cleanly.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  - I didn't use any new methods. I researched a lot and found some that I had come across from recent challenges that seemed to work. #each_with_index seemed like a good idea but proved unnecessary. I even toyed with the idea of using #flatten to turn the 5 subarrays into one big array and then locate the number and then use #each_slice to turn it back into an array with 5 subarrays. but it was exceedingly difficult to determine the appropriate index in the flat array as a multiple of the columns of the original array.
    I did come across #first which returns the first value of an array for which a supplied code block returns true. 

How did you determine what should be an instance variable versus a local variable?
  -The things that needed to be accessed by multiple methods. The big important stuff like the letter and number called. I would hope I would realize that the @board also needed to be instance, but it was provided for us, so I will never know. Then again the result of the flow of the week was such that I had gotten into the habit of assigning with @ for all the obvious things. When in doubt I used an @. Did it in the die class assignment and in others.

What do you feel is most improved in your refactored solution?
  -My first attempt at refactoring didn't change much. I switched the output method in #call to interpolation so as to also be able to avoid having to change @number to a string, which then necessitates turning that string back into an integer. That was actually my initial idea, but didn't think it looked as nice so I changed it. That little switch turned out to be quite costly, because I didn't notice that I was missing the step later on to convert@number back to integer. I now consider the ease of the whole code without redundant to_s and to_i calls and the fact that I overlooked needing to change @number back to an integer for so long to be more significant than how the one line looks a little less nice. Having said that. If I would have interpolated to start I would literally not have changed anything for the refactor. So... hmmm.
  -Anytime you can get rid of while loops it could be an improvement. reduces the risk of the loop continuing. It is certainly shorter and easier to read.

#flatten - failed refactor attempt.

new_board = []
temp = @bingo_board.flatten!
temp.each_with_each do |number,index|
      if (number == @number) && ((index + 1) % (column + 1) == 0) 

#needs to be any multiple of column - but somehow avoiding the problem of false positives because 1 will work for everything and 2 will work for 4. I guess I could just iterate backwards through the array so B is the last column tested. hmmmmmm. that doesn't seem so hard. Nope. sad there is no reverse each with index. but there is just reverse each. which doesnt help unless I can go another level deeper.)
#I tried to use flatten to make the board into one long array and then iterate through it to look for the number. then if that number's index was a a multiple of the hash value of the corresponding letter call it would change the number to X and then I used eachslice to return the flattened array to its original shape. 
#A few problems. everything is a multiple of 1. So I got false positives. I suppose I could hard code in each of the appropriate column index numbers so B would be (0 || 5 || 10 || 15 ||20) but at that point it is pretty repetitive and probably not a better solution than the while loop
            

            temp[index] = "X"
            temp.each_slice(5) {|x| new_board.push(x)}
      end
    end
    new_board.each{|x| p x}
end
end

=end