// Write a method that takes a string in and returns true if the letter
// "z" appears within three letters **after** an "a". You may assume
// that the string contains only lowercase letters.
//
// Difficulty: medium.

function nearby_az( string ){
	var isNearbyAZ = false
	var length = string.length
	for (var i = 0; i < length; i++) {
		if (is_letter_a(string[i]) && is_z_after_a(string[i+1], string[i+2], string[i+3]) ) {
			isNearbyAZ = true;
		} 

	}
	return isNearbyAZ;
}

function is_letter_a(letter){
	return (letter === 'a');
}

function is_z_after_a(letter1, letter2, letter3){
	return (letter1 === "z" || letter2 === "z" || letter3 === "z");
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( nearby_az('a') === false )
console.log( nearby_az('z') === false )
console.log( nearby_az('za') === false )
console.log( nearby_az('baz') === true )
console.log( nearby_az('abz') === true )
console.log( nearby_az('abcz') === true )
console.log( nearby_az('abcdz') === false )
