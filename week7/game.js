// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: This is a version of the card game 'war' The mission is to collect all 52 cards in a standard playing deck.
// Goals: win as many battles and wars as you can (of course it is all random so ....)
// Characters: Player 1 and Player 2
// Objects: Player 1's cards, Player 2's cards, Temporary war cards
// Functions: shuffle, deal, play, war, 

// Pseudocode
// 1- create a 4 series of 2-14.
// 2- shuffle the four arrays 
// 3- randomly give half to player 1 and half to player 2
// 4- each player plays one card at a time and the player with the higher card adds cards to his pile
//    -if the cards are equal, add (up to) three cards each (assuming a player has at least 4 cards) to the temporary war pile
//    -repeat step 4. player with higher card gets all played cards and all cards in temp war pile
// 5- repeat step 4 until one player has all 52 cards.
// 6- that player wins

// Initial Code
// simple version is an array with 4 each of the numbers from 2-14 => [2,2,2,2,3,3,3,3] etc. a much more complicated version has 4 arrays each as properties of names in an object
// var deck = {
// 	Spades:   [2,3,4,5,6,7,8,9,10,11,12,13,14],
// 	Hearts:   [2,3,4,5,6,7,8,9,10,11,12,13,14],
// 	Diamonds: [2,3,4,5,6,7,8,9,10,11,12,13,14],
// 	Clubs:    [2,3,4,5,6,7,8,9,10,11,12,13,14],

// };

// function numberAtRandom(min, max) {
//   return Math.floor(Math.random() * (max - min)) + min;
// };



// // var cards = [2,3,4,5,6,7,8,9,10,11,12,13,14,2,3,4,5,6,7,8,9,10,11,12,13,14,2,3,4,5,6,7,8,9,10,11,12,13,14,2,3,4,5,6,7,8,9,10,11,12,13,14]
// // var battleCards = []
// // var warPile =[]
// // var shuffledDeck = []

// // var player1 = {pile: []};
// // var player2 = {pile: []};

// // var shuffle = function(deck) {   
// // 	while (deck.length > 0){
// // 		shuffledDeck.push(deck.splice(numberAtRandom(0, deck.length),1))
// //   };
// //   for (var i = 0; i < shuffledDeck.length ; i++ ) {
// // shuffledDeck[i] = shuffledDeck[i][0];
// // }
// // }
  
// //   shuffle(cards);
// // var deal = function(){
// // //console.log(shuffledDeck); 
// // player1.pile.push(shuffledDeck.splice(0,26));
// // player2.pile.push(shuffledDeck.splice(0,26));
// // };
// // // var pick = function(){
 	
// //  deal();


// // var play = function(){
 	
// // 	battleCards = battleCards.push( player1.pile[0].shift(), player2.pile[0].shift() );
 
// //  	console.log(battleCards);
 
//  // 	var card1 = 
// // 		var card2 = 
// // 			if (player1.pile[0].length === 0)
// // 				return	console.log("player1 is defeated. player2 Wins");
// // 			else if (player2.pile[0].length === 0)
// // 				return	console.log("player2 is defeated. player1 Wins");
// // 			else
// //  		while ((player1.pile[0].length > 0) && (player2.pile[0].length > 0)){

// // 			 if (battleCards[0][0] > battleCards[0][1]
// // 				player1.pile[0][0].push(battleCards.splice(0,2));
// // 				console.log("player1 wins this round");
// // 			else if ((battleCards[0][0] < battleCards[0][1])
// // 				player2.pile[0][0].push(battleCards.splice(0,2));
// // 				console.log("player1 wins this round");
// // // 			else if (card1 == card2)
// // // 				console.log("Try Again");
// // // // 					warPile.push(battleCards.splice(0,2))
// // // // 					warPile.push(player1.pile[0].splice(0,3), player2.pile[0].splice(0,3));
// //  			else
// //  				console.log("What's going on here?");

// //-
// // function Player(name, pile){
// // this.name = name
// // this.pile = pile
// // };

// // var lee = new Player("Lee")
// // var grant = new Player("Grant")

// // play("Lee", "Grant"); This was when I thought I would use constructors to create a class of player and then actually create players.
// // -


// // Refactored Code (This is my MVP really, because it tooook me so long just to get it here and I changed around so many of the variabls and the structure of the functions and how they are called. THere is obviously much work to be done. not at all DRY. I literally pop 6 times in a row. because splice is too annoying because it nests the array, so then I would have to flatten it all over again.)
// // As of right now the game isn't actually finished. as it runs now it is only 1 hand at a time and it doesn't remember previous hands.
// function numberAtRandom(min, max) {
//   return Math.floor(Math.random() * (max - min)) + min;
// }

// var cards = [2,3,4,5,6,7,8,9,10,11,12,13,14,2,3,4,5,6,7,8,9,10,11,12,13,14,2,3,4,5,6,7,8,9,10,11,12,13,14,2,3,4,5,6,7,8,9,10,11,12,13,14]

// //for (var i = 1; cards.length > 0;}
// var battleCards = [];
// var warPile =[];
// var shuffledDeck = [];
// var player1BattleCount = 0;
// var player2BattleCount = 0;
// var battleCount = 0;
// var warCount = 0;

// var player1 = {pile: []};
// var player2 = {pile: []};
// var victory = ""

// var shuffle = function(deck) {   
// 	while (deck.length > 0){
// 		shuffledDeck.push(deck.splice(numberAtRandom(0, deck.length),1));
//   };
//   		for (var i = 0; i < shuffledDeck.length ; i++ ) {
// 			shuffledDeck[i] = shuffledDeck[i][0];
// };
// }
// // console.log(cards.length); //Test
// // console.log(shuffledDeck.length); //Test


// var deal = function(){

// player1.pile.push(shuffledDeck.splice(0,26));
// player2.pile.push(shuffledDeck.splice(0,26));
// };

//  var battleReport = function(){
//  	if (player2.pile[0].length === 0)
//   				return	console.log("player2 is defeated. player1 Wins. \n There were " + battleCount + "battles and " + warCount + "wars. \n player1 won " + player1BattleCount + " battles. player2 won " + player2BattleCount + "battles.");
// 	if (player1.pile[0].length === 0)
// 				return	console.log("player1 is defeated. player2 Wins. \n There were " + battleCount + "battles and " + warCount + "wars. \n player1 won " + player1BattleCount + " battles. player2 won " + player2BattleCount + "battles.");
//    }

// var battle = function(){ 
// 	while ((player1.pile[0].length > 0) && (player2.pile[0].length > 0)){
// 			if (battleCount > 5000 && player1.pile[0].length === 26)
// 				break
// 	battleCards.push(player1.pile[0].shift(), player2.pile[0].shift());
// 	console.log(battleCards);
//   if (battleCards[0] > battleCards[1]) {
// 		player1.pile[0] = player1.pile[0].concat(battleCards).concat(warPile);
// 		battleCards = []
// 		warPile = []
// 		console.log("player1 wins this round");
// 		player1BattleCount += 1
// 		battleCount += 1
// 		console.log("player1 has " + player1.pile[0].length + " in his pile");
// 		battleReport();
  			 
//  }				
// else if (battleCards[0] < battleCards[1]) {
// 		player2.pile[0] = player2.pile[0].concat(battleCards).concat(warPile);
// 		battleCards = []
// 		warPile = []
// 		player2BattleCount += 1
// 		battleCount += 1
// 		console.log("player2 wins this round");
// 		console.log("player2 has " + player2.pile[0].length + " in his pile");
// 		battleReport();
// 	}

//     else{
//     		war();
//     }
// }	
// }
// var war = function(){
//  			console.log("WAAAAAAAAAA\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARRRRRR!!!!!!!!");
//  			warCount += 1
//  			warPile.push(battleCards.pop(),battleCards.pop(), player1.pile[0].shift(), player1.pile[0].shift(), player1.pile[0].shift(), player2.pile[0].shift(), player2.pile[0].shift(), player2.pile[0].shift());
//  			console.log(warPile);
//  			battleReport();
//  			battle();	
 		
// }


// var play = function(){
 
// shuffle(cards);
// deal();
// battle();
// }

// play();
// // 		    	
// 			
// console.log(player1.pile[0].length); // Test
// console.log(player2.pile[0].length); // Test
// console.log(player1.pile[0]); // Test
// console.log(player2.pile[0]); // Test


//Refactored


function numberAtRandom(min, max) {
  return Math.floor(Math.random() * (max - min)) + min;
}

var cards = [2,3,4,5,6,7,8,9,10,11,12,13,14,2,3,4,5,6,7,8,9,10,11,12,13,14,2,3,4,5,6,7,8,9,10,11,12,13,14,2,3,4,5,6,7,8,9,10,11,12,13,14]

//for (var i = 1; cards.length > 0;}
var battleCards = [];
var warPile =[];
var shuffledDeck = [];
var player1BattleCount = 0;
var player2BattleCount = 0;
var battleCount = 0;
var warCount = 0;

var player1 = {pile: []};
var player2 = {pile: []};
//var victory = "" 

var shuffle = function(deck) {   
	while (deck.length > 0){
		shuffledDeck.push(deck.splice(numberAtRandom(0, deck.length),1));
  };
  		for (var i = 0; i < shuffledDeck.length ; i++ ) {
			shuffledDeck[i] = shuffledDeck[i][0];
};
}
// console.log(cards.length); //Test
// console.log(shuffledDeck.length); //Test


var deal = function(){

player1.pile.push(shuffledDeck.splice(0,26));
player2.pile.push(shuffledDeck.splice(0,26));
};

var battleReport = function(){
 	if (player2.pile[0].length === 0)
  				return	console.log("player2 is defeated. player1 Wins. \n There were " + battleCount + " battles and " + warCount + " wars. \n player1 won " + player1BattleCount + " battles. player2 won " + player2BattleCount + "battles.");
	if (player1.pile[0].length === 0)
				return	console.log("player1 is defeated. player2 Wins. \n There were " + battleCount + " battles and " + warCount + " wars. \n player1 won " + player1BattleCount + " battles. player2 won " + player2BattleCount + "battles.");
   }

var nextRound = function(){
		battleCards = [];
		warPile = [];
		battleCount += 1;
		battleReport();
}

var battle = function(){ 
	while ((player1.pile[0].length > 0) && (player2.pile[0].length > 0)){
			if (battleCount > 5000 && player1.pile[0].length === 26)
				break
	  
	  battleCards.push(player1.pile[0].shift(), player2.pile[0].shift());
	  console.log(battleCards);
		  	
		  	if 		(battleCards[0] > battleCards[1]) {
					player1.pile[0] = player1.pile[0].concat(battleCards).concat(warPile);
					player1BattleCount += 1
					console.log("player1 wins this round");
					console.log("player1 has " + player1.pile[0].length + " in his pile");
  			 		nextRound();
 			}				
			else if (battleCards[0] < battleCards[1]) {
					player2.pile[0] = player2.pile[0].concat(battleCards).concat(warPile);
					player2BattleCount += 1
					console.log("player2 wins this round");
					console.log("player2 has " + player2.pile[0].length + " in his pile");
					nextRound();
			}

    		else{
    				war();
    		}
}	
}
var war = function(){
 			console.log("WAAAAAAAAAA\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARRRRRR!!!!!!!!");
 			warCount += 1
 			warPile.push(battleCards.pop(),battleCards.pop(), player1.pile[0].shift(), player1.pile[0].shift(), player1.pile[0].shift(), player2.pile[0].shift(), player2.pile[0].shift(), player2.pile[0].shift());
 			console.log(warPile);
 			battleReport();
 			battle();	
 		
}


var play = function(){
 
shuffle(cards);
deal();
battle();
}

play();
// 		    	
// 			
// console.log(player1.pile[0].length); // Test
// console.log(player2.pile[0].length); // Test
// console.log(player1.pile[0]); // Test
// console.log(player2.pile[0]); // Test









// // // Reflection

// I tried to set time delays for each battle and war but couldnt get it yet. otherwise the whole program just runs in a second. 
//Sometimes the cards get shuffled randomly so that the battles are traded back and forth forever. So I instituted a break for that. 

// There is so much refactoring I could do. But I it took me so many hours just to get to this point. Got to be enough for now.
// As mentioned above with all the pushing and popping splicing and flattening. There must be a better way.
// Also creating a variable for the pile so I don't have to type out player.pile[0] and that.length so many times. lotttts to do.
//
//

// What was the most difficult part of this challenge?
//      - Finding built in methods. I just don't get how to read the docs/find stuff in the docs. I feel like I could have done this game in Ruby in like an hour because there are so many amazing built in methods that do work that I had to do myself here which, then added more work because of formatting. Like I could have just done shuffle, here I couldnt. and even after splicing , the unwanted extra level deep array disappears with flatten. no flatten...
//		- Syntax. I was constantly forgtting a closing ),}, or ; - and if I would change the code, or comment out a function or while or if..else, then there would be a hanging } way down in the code that I forgot to get rid of as well
//		- Here is a biggie - forgetting empty parens after functions that don't take arguments. sometimes .shift,pop etc I would just write the word without the paren. took me a loooong time to find it. Then again If I was more familiar with the error raising in JS it would be obvious(if I was remembering to print every line as a test), because it printed "Function: Shift"  soooo hindsight ...

// What did you learn about creating objects and functions that interact with one another?
// 		- hmm. a lot, but hard to say. I was having issues with loops. So I thought of maybe defining variables inside functions instead of having that huge list of variables declared at the top. Which I think would have necessitated passing in each function to the next function. Opted not to try it. 
//	      due to the long time it took me to get around the fact that splice creates a further level of nested arrays I had a lot of issues with accessing the level I wanted of the palyers cards. Probably I was tired and not focusing on the many different parts of the code. But I could have sworn that I would use a single bracket, but then get an error. so change it to a double bracket. but then get an error. just had to cut paste, repaste, and eventually somehow it clicked and I had it right. Helped that I finally figured out how to flatten the array. Although my solution only works with subarrays of 1 item each. if any of the subarrays were longer I wouldnt get the linear flat array I need. 
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//		-Well I saw some that I thought could work like forEach. but I did not figure out how it worked.
// How can you access and manipulate properties of objects?
//		-type the name of the array followed by a dot and the name of the property and from there you can do whatevery you would do the value in the same way you would normally act upon that ype of value. if it is a string, number, or array, you can treat it as you would normally treat those types of values. if it is an array you access it with brackets. if you want to reassign it you can just do object.property = ------
//       you can call whatever function you would normally call on that ype of value like object.property.toString() if ex. it is a number that you want to convert to a string, no different than Number.toString()	



