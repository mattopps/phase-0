// User Stories
// 1 - Create a new list. 
// 	-I want to be able to create a new gorcery list.
// 2 - Add an item with a quantity to the list.
// 	- I want to be able to add an item to the list(like if I realize I forgot something I wanted)
// 3 - Remove an item from the list
// 	- I want to be able to remove an item form my list after I purchase the item on the list, or if I become aware that I have a sufficient quantity of that item already and do not need more. 
// 4 - Update quantities for items in your list.
// 	- I want to be able to update the amount of an item to buy in case I become aware that I need more or initially wrote the wrong quantity for some reason.
// 5 - Print the list (Consider how to make it look nice!)
// 	I want to be able to print the list so I can see clearly what I should buy.

// Psuodeocode.

// -Create a function that can store a list of items with a corresponding number for the quantity of each item.

// -create a function which can add an item to the list  

// -create a function that can remove of of the items from the list

// -create a function that can change the quantity of an item on the list.

// -create a function that can print the list of items with each items' quantity.

//Initial solution
 // var createList = function(){
 // 	var groceryList = {}
 // 	console.log(groceryList);
 // }

 // createList();

 // var addToList = function(list, item, number){

 // }

 // var removeFromList = function(list, item){
 // 	list.delete(item)
 // }

 // var updateList = function(list, item, number){

 // }

 // var printList = function(list){

 // }

 // //Refactored solution
 // function createList(listName){
 // 	var listName = {}
 // 	console.log(listName);
 // }

//  var List = function (){
//  	this.amount = 1
//  }

//  function createList(list){
//  	var list = new List;
// }

//  function addToList(list, item, number){
//  	list[item] = number;
//  }

//  function removeFromList(list, item){
//  	list.delete(item);
//  }

//  function updateList(list, item, number){
//  	list[item] = number;
//  }

//  function printList(list){
//  	for (var item in list){
//  		console.log(list[item]);
//  	}

//  }


 function List() {
 	this.amount = 1;
    this.createList = function(list){
 	 var list = new List;
};
    this.addToList = function(item, amount){
 	this.item = item;
 	this.amount = amount
 	list.item = amount
 };
	this.removeFromList = function(item){
 	this.delete(item);
 };
	this.updateList = function(item, amount){
 	if (this.hasOwnProperty(item)){
 		list.item = amount;
 	}
 };
	this.printList = function(){
 		for (var item in list){
 		console.log(item);
 	}
 };
 }
 
 //List.prototype = Object
//createList('groceries');

// Driver Code

var groceries = new List;
groceries.addToList('onions', 5);
console.log(list.item);
//removeFromList('groceries','onions');
//printList('groceries');
// groceries.addToList('milk', 2);
// groceries.addToList('eggs', 4);
// groceries.addToList('spinach', 1);
// groceries.updateList 'milk', 10);
//groceries.printList();

