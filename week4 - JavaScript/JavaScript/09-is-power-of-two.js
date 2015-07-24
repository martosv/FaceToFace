// Write a method that takes in a number and returns true if it is a
// power of 2. Otherwise, return false.
//
// You may want to use the `%` modulo operation. `5 % 2` returns the
// remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
// of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
//
// Difficulty: medium.

/*
Esta función es para sacar la raiz cuadrada de un numero, me equivoqué al entender el enunciado.

function is_power_of_two(num) {
	var n, if_is_power_of_two = false
	for (var n = 1; power_two_of_a_number(n) <= num; n++) {
		if (num/power_two_of_a_number(n) === 1) 
			if_is_power_of_two = true
		else
			if_is_power_of_two = false
	}
	return if_is_power_of_two
}

function power_two_of_a_number(n){
	return n * n
}

*/

function is_power_of_two(num) {
	
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( is_power_of_two(1) === true)
console.log( is_power_of_two(16) === true)
console.log( is_power_of_two(64) === true)
console.log( is_power_of_two(78) === false)
console.log( is_power_of_two(0) === false)
