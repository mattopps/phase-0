// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Hannah Yendler

// Pseudocode
// 
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Matthew O.

// Pseudocode
// input an integer
// output a string of the integer with commas
  
 
// steps

// define a function that accepts an integer as argument
// convert to string
//
// separate digits
// add comma every 4th character starting from the end of the string



// Initial Solution

// var commas = function(num) {
//   var testArray = num.toString().split(""); 
//      for (var i = testArray.length-3; i > 0; i -= 3) {
//     testArray.splice(i, 0, ",");

//   }; 
//   console.log(testArray.join(""));
// }




// Refactored Solution

var commas = function(num) {
console.log(num.toLocaleString());
}


// Your Own Tests (OPTIONAL)

commas(3039415123)// commas(1)
// commas(-1)
// commas(111)

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//		-no. because I was under the misapprehension that -indexes could be used to access the end of the array and work to the front. Turns out JS doesn't allow that. But the fix wasn't that different we just had to use .length - 1 and then subtract 3 from that instead of incrementing an index variable.

// What did you learn about iterating over arrays in JavaScript?
//		-for loops in JS are really useful and easy to control iteration in whatever way you want, instead of every item in an array.

// What was different about solving this problem in JavaScript?
//		-we had some of those little basic syntax problems like forgetting that functions need arguments even if they are empty parens. this was especiialy an issue for .toString().split(""). for many minutes of debugging we didn't realize that the missing paren was the problem in toString.split("")
// What built-in methods did you find to incorporate in your refactored solution?
//			-splice. I wish I found it. Hannah found it.




