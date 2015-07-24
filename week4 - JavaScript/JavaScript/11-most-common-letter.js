// Write a method that takes in a string. Your method should return the
// most common letter in the array, and a count of how many times it
// appears.
//[]
// Difficulty: medium.

function most_common_letter(string) {
	var times_repited = [];
	var counter = 0;
	object_repited_letter = repited_letter_times(string);
	for (var key in object_repited_letter){
		if (object_repited_letter[key] > counter) {
			counter = object_repited_letter[key];
			letter = key;
		}
	}
	console.log([letter, counter])
	return [letter, counter];
}


function repited_letter_times(string){
	var object_letter = {};
	var letters_string = string.split("");
	letters_string.forEach( function (letter) {
		if ( !object_letter[letter] )
			object_letter[letter] = 1;
		else
			object_letter[letter] += 1;
	})
	return object_letter;
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( most_common_letter('abca') === ['a', 2] );
console.log( most_common_letter('abbab') === ['b', 3] );