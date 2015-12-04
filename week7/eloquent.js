// // // Eloquent JavaScript

// // // Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Ch. 1: Values, Types, and Operators (Links to an external site.)
//  Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// 		-The operators are almost all identical except for null in JS seems to be what nil is is in ruby. Ruby does not have an undefined object as far as I know. False and nil are the only falsy objects. JS has false, null, and undefined, as well as a whole other thing NaN, which is its own special kind of nothing. 
// 		 A huge difference between Ruby and JS is object type conversion. If you try to multiply a number by a string in ruby, or perform a method call on a string that only works on numbers, Ruby will producean error that one object type can not be coerced into the other. In JS , at least for a simple case, I have no idea about methods yet, there is a cascading list of attempts by JS to convert one of the objects to another type. It will for example convert "5" to 5. 
// 		Another differenc eof semantics is that I believe methods are called functions. And printing to the console seems to require typing console.log in JS. I don't know if it has any of the three Ruby (p, puts, print) methods.



// Ch. 2: Program Structure (Links to an external site.)
// What is an expression? 
// 	- Any code that produces a value is an expression.
// What is the purpose of semicolons in JavaScript? Are they always required?
// 	-They end a statement. no.
// What causes a variable to return undefined?
// 	- If the variable has not been assigned a value. If it has simply been declared but no other action or assignment has been done to it.
// Write your own variable and do something to it in the eloquent.js file.
	
var weirdWord = "Farfegnugen"; 
console.log(weirdWord);

var word = "bird";
console.log(word + " is the") 

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// 		-prints the evaluted code to the screen. p, puts, print.
// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
	
// 	 console.log(prompt("food?"));
//	 console.log(alert("Hey! That's my favorite too!"))




// Describe while and for loops     
// 	- loops execute a code block under certain conditions. usually as long as a conditional evaluates as true. In a while loop,if no conditional is supplied the loop will not ever stop. A for loop must have a conditional and obviates the need for an incremented counter variable to use as a check for truth in the conditional as is uusually odne in a while loop. For loops will always execute at least once before testing the conditional for truth. a while loop checks each time and so will not even run at all if the conditional is false to begin with. 

// What other similarities or differences between Ruby and
// JavaScript did you notice in this section?    
// 	 - booleans are pretty much exactly the same. incrementation is very similar with special exceptions when changing by exactly one ++ or -- add or subtract one to, and change the variable.
// 	 		else if is spelled as two real words and not combined into elsif like in Ruby.
// 	 			JS has switch/case/default for Ruby's Case/when/else.
// 	 		comments are different. single line is // multi lini is /**/ like css

// 	 		Big difference -  there are no 'ends' {} are used to isolate blocks of code. there are no ends to signify where an if, while or other block stops. the conditionals evaluted by if seem to need to be in parenthesis.
// 	 		Also - Functions in JS always seem to need parenthesis even if it takes no parameters when called, like so  function().

// Complete at least one of the
// exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js
// file.   
for (var number = "#"; number.length <= 7; number = number + "#" )console.log(number);

// Ch. 3: Functions 
// What are the differences between local and global variables in JavaScript?
//		local is only available inside the function where it is defined. it will override a (global) variable of the same name outside the function
// When should you use functions? 
//		-when ever you want to save time by not having to write similar or identical code multiple times or perform an operation and be able to reference the value of the operation.
// What is a function declaration? 
//		-the creation of a function without assigning a variable name ie without actually using var --- = function / but instead just writing function ---() = 
// Complete the minimum exercise in the eloquent.js file.

function min(num1, num2) {
	if (num1 > num2) console.log(num2);
	else console.log(num1)};

min(10,23)

// Ch. 4: Data Structures: Objects and Arrays (
// 
// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"] 
//		-no difference. dot max is quicker and easier. just saves you keystrokes.
// Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.

var me = {
age: 33,
name: "Matt",
"Foods": ["sriracha", "cereal", "salmon"],
"quirk": "swirl"
};
console.log(me)
//  What is a JavaScript objectwith a name and value property similar to in Ruby?
//a hash.

// REFl

// similarities are operators.
// ummm, local variables maybe
// like it will be annoying to have to call hashes objects and write all the extra semicolons and parenthesis.
