// # A Nested Array to Model a Bingo Board SOLO CHALLENGE

// # I spent [#] hours on this challenge.


// # Release 0: Pseudocode
// # Outline:

// # Create a fucntion to generate a letter ( b, i, n, g, o) and a number (1-100)

// // the real bingo board had a range of 15 for each letter and a blank spot in the middle. maybe we should do that here.
//   -Create an object with the letter as properties and the column numbers as values.
//      -generate a number and letter from the object and random

// # Check the called column for the number called.
//     -look through the board and see if any of the 5 numbers in the column of each section of the board corresponding to the randomly generated letter contain the randomly generated number.
//       - If the number is in the column, replace with an 'x'. set the value of that element to 'x'
 

// # Display a column to the console
//   - write a way to look through the board and vertically display just the elements corresponding to a letter's column.

// # Display the board to the console (prettily)
//     - write a way to look through the board and vertically display each set of letters in one row each on top of the next row to produce 5 vertical columns in a neat grid.


//# Initial Solution

function BingoBoard(board){
  this.board = board;
  this.randomNumber = function(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
  }

  this.letters = ["B", "I", "N", "G", "O"];
  this.column = this.randomNumber(0, 4)
  this.letter = this.letters[this.column];
  this.number = this.randomNumber(1, 100);
  //this.number = 80 // for easy testing
  this.call = function(){
    console.log(this.letter + this.number);
  }
  this.check = function(){
    for (var row in board){
        if (this.board[row][this.column] == this.number)
          this.board[row][this.column] = "X" ;
    }
  }
  this.printColumn = function(){
    for (var row in board){
        console.log(this.board[row][this.column]);
    }
  }
  
  this.print = function(){
    console.log(this.board);
  }

}



// Refactored Solution

//this.letters = {"B" : 0, "I" : 1, "N" : 2, "G" : 3, "O" : 4};

// this.print = function(){
//   for (var row in board){
//     for(var column in row){
//       console.log(this.board[row][column]);
//   }
// }
// }

//DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

// //var board = [[47, 44, 71, 8, 88],
//              [22, 69, 75, 65, 73],
//              [83, 85, 97, 89, 57],
//              [25, 31, 96, 68, 51],
//              [75, 70, 54, 80, 83]];

 var board = [[47, 44, 71, 8, 88],
             [22, 69, 75, 65, 73],
             [83, 85, 97, 89, 57],
             [25, 31, 96, 68, 51],
             [75, 70, 54, 80, 83]];

var newBoard = new BingoBoard(board);

newBoard.call();
newBoard.check();
newBoard.printColumn();
newBoard.print();


//Reflection





