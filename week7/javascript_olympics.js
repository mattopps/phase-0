// // JavaScript Olympics

// // I paired [with Jenna Espueza] on this challenge.

// // This challenge took us [1.5] hours. plus 1 more for random research , testing, and refactoring.


// // Warm Up ??// What was supposed to be here?

// // Bulk Up
var athletes = [{name: "Sarah Hughes", event: "Ladies Singles"},{name: "Michael Phelps", event: "Boringest Man Alive"}, {name: "Apollo Anton Ohno", event: "Speed Skating"} ];

function athletesWin(array) {
  for (var i = 0; i < array.length; i++) {
    array[i].win = console.log(array[i].name + " won the " + array[i].event + "!");
  }
};

athletesWin(athletes);

console.log(athletes[2].event)
console.log(athletes[2]["event"])

// // Jumble your words


var reverseString = function (words) {
  return words.split("").reverse().join("");
};
var sentence = "It is Thursday";
console.log(reverseString(sentence));


// // 2,4,6,8

// // Initial Solution
// //   var evens = function (array) {
// //     var newArray = [];
// //     for (var i = 0 ; i < array.length; i++)
// //       if (array[i] % 2 == 0) {
// //           newArray.push(array[i]);
// //           }

// //     console.log(newArray);
// // }

numbers = [1,2,3,4,5,6,];

// //Refactor
   evens = console.log(numbers.filter(function(x) { return x % 2 == 0}));


// // "We built this city" Was Definitely expecting "On RocknRoll" Pretty surprising to fin Phelps here.
function Athlete(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

console.log(michaelPhelps.medal = "gold");

console.log(michaelPhelps.name)
console.log(michaelPhelps.age)
console.log(michaelPhelps.sport)
console.log(michaelPhelps.quote)
console.log(michaelPhelps.medal)



// // // Reflection

//What JavaScript knowledge did you solidify in this challenge? 
//			- for some reason I was surprised that if we added a property to an object from within a console.log call it permanently modifies the object. In other words. on line 15 - it didn't matter if console.log ws on the left of the assignment operator or the right side. creating functions both by expression and declaration; that every function needs a paren even if it is empty because no arguments are passed


// // What are constructor functions? 
//		They are a lot like classes in ruby. They identify a type of object that has certian characteristics or properties that are imbued upon creation by passing in arguments when new is called on that type of constructor and supplied with a var name for a new example of that type of object.


// // How are constructors different from Ruby classes (in your research)?

//  I think we saw that they can accept functions outside of their definition and outside of normal top down flow if the function is declared instead of created by expression. I actually 'learned' that from my partner reading the doc in the other pairing challenge, 7.5.
//  certainly the syntax is different. it could be a little confusing because it is also introduced by function, instead of its own expression literal ie constructor
// instead of initialize we call properties on this.


