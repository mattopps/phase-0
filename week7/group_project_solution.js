
// PSEUDOCODE - from person 2
// 1. Create two arrays of integers - one an even length and one an odd length
// 2. Create a sum function that calculates the sum of all integers in the array (must work on both our test arrays). To do this:
//  A. Create an empty sum variable
//  B. Loop through all elements in an array - at each step, increment the sum variable by each element in the array
// 3. Create a mean function that calculates the mean of all integers in an array (their sum divided by the length of the array). To do this:
//  A. Create an empty sum variable.
//  B. Loop through all elements in an array - at each step, increment the sum variable by each element in the array
//  C. Divide the final sum variable by the length of the array
// 4. Create a median function that calculates the median of an array (the "mid" point.). For an odd length array, this is the element array[length/2], and for an even length array, it's ((array[length/2] + array[length/2-1])/2)
//  A. Sort array from smallest to largest
//  B. Create empty median variable
//  C. IF Array.length is odd,
//    C1. return array[length/2]
//  D. IF Array.length is even,
//    D1. return (array[length/2] + array[(length/2)-1])/2
	
var arrayEven = [1,3,5,10,20,30];
var arrayOdd =  [2,13,14,15,26,27,28];


var sumFunction = function(array){
	var sum = 0;
	for(var i = 0; i < array.length; i++){
		sum = sum + array[i];
	};
}

var meanFunction = function(array){
	var sum = 0;
	for(var i = 0; i < array.length; i++){
		var mean = sumFunction(array)/(array.length);
	};
}


var medianFunction = function(array){

	function sortNumbers(a, b) {
 		 return a - b;
		}

	sortArray = array.sort(sortNumbers);
	var median = 0;

	if (array.length % 2 === 1)
		return array[array.length/2]	// from psuedocode above
	
	if (array.length % 2 === 0)
		return array[array.length/2] + array[(array.length/2-1)/2]// from psueodcode above
	};



console.log(sumFunction(arrayEven)); /
console.log(sumFunction(arrayOdd));
console.log(meanFunction(arrayEven));
console.log(meanFunction(arrayOdd));
console.log(medianFunction(arrayEven));
console.log(medianFunction(arrayOdd));


