// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//Need to create a function that will count the number of votes Bob received for president and update voteCount with it.


// var countVotes = function (object) {
//   for (var i in object) {
//     if (isNaN(voteCount["president"][object[i]['president']])){
//       voteCount["president"][object[i]['president']] = 1;
//     }
//     else {  
//     voteCount["president"][object[i]['president']] += 1;
//     };
     
//     if (isNaN(voteCount["vicePresident"][object[i]['vicePresident']])){
//       voteCount["vicePresident"][object[i]['vicePresident']] = 1;
//     }
//     else {  
//     voteCount["vicePresident"][object[i]['vicePresident']] += 1;
//     };
//     if (isNaN(voteCount["secretary"][object[i]['secretary']])){
//       voteCount["secretary"][object[i]['secretary']] = 1;
//     }
//     else {  
//     voteCount["secretary"][object[i]['secretary']] += 1;
//     }
//     if (isNaN(voteCount["treasurer"][object[i]['treasurer']])){
//       voteCount["treasurer"][object[i]['treasurer']] = 1;
//     }
//     else {  
//     voteCount["treasurer"][object[i]['treasurer']] += 1;
//     }
//   }  
// }

// countVotes(votes);

// 

// var max_count = 0;
// for (var a in voteCount["president"]){
//   if (voteCount["president"][a] > max_count) {
//     officers.president = a;
//     max_count = voteCount["president"][a];
//   };
// };

// var max_count = 0;
// for (var a in voteCount["vicePresident"]){
//   if (voteCount["vicePresident"][a] > max_count) {
//     officers.vicePresident = a;
//     max_count = voteCount["vicePresident"][a];
//   };
// };
// var max_count = 0;
// for (var a in voteCount["secretary"]){
//   if (voteCount["secretary"][a] > max_count) {
//     officers.secretary = a;
//     max_count = voteCount["secretary"][a];
//   };
// };
// var max_count = 0;
// for (var a in voteCount["treasurer"]){
//   if (voteCount["treasurer"][a] > max_count) {
//     officers.treasurer = a;
//     max_count = voteCount["treasurer"][a];
//   };
// };

// __________________________________________
// Refactored Solution

for (var officer in officers){
  for (var i in votes) {
    if (isNaN(voteCount[officer][votes[i][officer]])){ // try variable in object
      voteCount[officer][votes[i][officer]] = 1;       // ex if !(name in voteCount[officer]) then 
    }
    else {  
    voteCount[officer][votes[i][officer]] += 1;
    };
  }
}

for (var officer in officers){
  var max_count = 0;
  for (var a in voteCount[officer]){
    if (voteCount[officer][a] > max_count) {
      officers[officer] = a;
      max_count = voteCount[officer][a];
    };
  };
};
console.log(voteCount);
console.log(officers);




// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
//   -It is both not as hard as I thought and still very difficult. As we have it now it simply takes time and effort to be precise about what bracketed calls need to be appended to each other.
//   -Line 135 takes a minute to get when looking at it but it is ultimately straightforward.
// Were you able to find useful methods to help you with this?
//   -We used isNaN to test for the value of a property being undefined. ie, when the object was empty, before we added properties to it. Other than that we just used for loops. We tried so many things. we tried using so many different functions that didn't pan out. We tried creating an array of the values of the votes, which would have been unnnecessary anyway, but for somereason when itrerating over that array it always returned NaN also, so then any function we ran on those numbers , like Math.max(), returned undefined. We tried to use.values() but it turns out that it isn't functional yet. It is experimental.
//   -
// What concepts were solidified in the process of working through this challenge?
//   -How to iterate through an object and access the values in the properties and sub objects. Using a nested for loop is unbelievably powerful. I still didn't expect the refactor that we came up with to work. It almost seemed to simple.
//   -




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)

