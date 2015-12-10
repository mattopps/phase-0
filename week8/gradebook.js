

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// /*var gradebook = {};
// gradebook['Joseph']={};
// gradebook['Susan']={};
// gradebook['William']={};
// gradebook['Elizabeth']={};
// gradebook['Joseph']= {testScores: scores[0]};
// gradebook['Susan']={testScores: scores[1]};
// gradebook['William']={testScores: scores[2]};
// gradebook['Elizabeth']= {testScores: scores[3]};
// gradebook['addScore'] = function(name, score){gradebook[name]['testScores'].push(score)};


// gradebook['getAverage'] = function(){};

// var average = function(array){
//   var sum = array.reduce(function(a, b) {
//   return a + b;});
  
//   var avg = sum/array.length;
//   return avg
// };

// gradebook['getAverage'] = function(name){
//     average(gradebook[name]['testScores']);   
  
// };
// console.log(gradebook.getAverage('Joseph'))*/

// __________________________________________
// Refactored Solution


var gradebook = {

Joseph: {testScores: scores[0]},
Susan: {testScores: scores[1]},
William: {testScores: scores[2]},
Elizabeth: {testScores: scores[3]},
addScore:function(name, score){gradebook[name]['testScores'].push(score)},
getAverage: function(name){
    return average(gradebook[name]['testScores'])
}
}


var average = function(array){
  var sum = array.reduce(function(a, b) {
  return a + b;});
  
  var avg = sum/array.length;
  return avg
}
  
//console.log(gradebook.getAverage('Joseph'))








// __________________________________________
// Reflect

What did you learn about adding functions to objects?
  -I learned that it is exactly as easy as adding any other property to an object. If using object literal creation it is just like any other property with the name of the function added with a semicolon and the word function to specify it as a function any arguments, and then a code block. If added to an existing object it is again just like any other propert being added. its nameOfObject.something = function(){} or nameOfObject['something'] = function(){} 
  -I am still trying to experiment with when it makes sense for a function to be specifically defined inside an object and not outside. 
  
How did you iterate over nested arrays in JavaScript?
  -We didn't need to do that in this challenge. you could use a nested for(var - in -) loop. eg 
              for (var i in scores){
                   for (var a in scores){
                       console.log(scores[i][a] += 50);}}
Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  -reduce. much more complicated than in Ruby. requires the anonymous function qualifier, which threw me a bit. I didn't realize you literally type the word 'function'I thought you put an actual function where it says function.




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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)

