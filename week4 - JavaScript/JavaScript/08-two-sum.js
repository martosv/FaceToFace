// Write a method that takes an array of numbers. If a pair of numbers
// in the array sums to zero, return the positions of those two numbers.
// If no pair of numbers sums to zero, return `null`.
//
// Difficulty: medium.

function two_sum( nums ) {
	var length = nums.length;
	var if_is_sum = false;
	var result, i = 0, j = 0;

	while (i < length) {
		while (j < length  && i != j) {
			if ( sum_equal_zero(nums[i], nums[j] ) ) {
				if_is_sum = true;
				result = [j, i];
			}
			j++;
		}
		j = 0;
		i++;
	}
	
	if (!if_is_sum) 
		result = null;

	console.log(result)
	return result;
}


function sum_equal_zero(num1, num2) {
	return num1 + num2 === 0;
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( two_sum([1, 3, 5, -3]) === [1, 3] )
console.log( two_sum([1, 3, 5, -3]) === [1, 3] )
console.log( two_sum([1, 3, 0, 0]) === [2, 3] )
console.log( two_sum([1, 3, 0, 6]) === null )
console.log( two_sum([1, 3, 5]) === null )
