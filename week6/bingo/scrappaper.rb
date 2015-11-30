bingo testing ground

# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


=begin Release 0: Pseudocode
# Outline:

1 - Initialize a new instance of the BingoBoard using the provided board array.
2 - Create a method to call letters and numbers (like B43). It will need to generate a letter ( "B", "I", "N", "G", "O") and a number from 1 to 100.
    - Any letter other than B,I,N,G,O raises argument error.
    - Any number other than 1-100 raises argument error.
    - 
Create a method to check whether that column has that number in the existing bingo_board.
If the number is in the column, replace it with an "X".
Display the new board to the console (Make it pretty).
board.inspect?[][]
=end


# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # def letter (number)
  #   
  #   
  #     


  # Do any of these make sense?

  #@letter = {
#   "B" => [[0,0], [1,0], [2,0], [3,0], [4,0]] 
  
#   "I" => [[0,1], [1,1], [2,1], [3,1], [4,1]]
     #}
#   {"B" => [[0,1,2,3,4],0]] 
  
#   "I" => [[0,1,2,3,4],1]]}
  

  #@letter = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}.sample
  #@letter = {0=>"B", 1=>"I", 2=>"N", 3=>"G", 4=>"O"}
  #          hash[rand(0..4)]
#   hash = {
#   0 => ["B", rand(1..100)],
#   1 => ["I", rand(1..100)],
#   2 => ["N", rand(1..100)], 
#   3 => ["G", rand(1..100)], 
#   4 => ["O", rand(1..100)]
#   } 

# p hash[rand(0..4)]
#   @letter = ["B", "I", "N", "G", "O"].sample
  @number = (1..100).sample

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  if call == board[][]
    board[][] = "x"

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def letter
    @letter = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
  end

  def number
    @number = rand(0..100)
  end
    

  def call (letter, number) #Pretty sure this is backwards. Need to input a letter s an argument and change it to the column number 0-4 so that I can get the value of the column[0..4][]
    @letter[letter][number] #this will be an error
  end








    #should return a letter and a number?
  
  end
  
  def check 
    if call = board[0||1||2||3||4][number]
  end


# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [
        [47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call.check


#Reflection

