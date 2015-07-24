// Write a method that takes a string and returns the number of vowels
// in the string. You may assume that all the letters are lower cased.
// You can treat "y" as a consonant.
//
// Difficulty: easy.

function count_vowels(string) {
	var counter = 0;
	string.toLowerCase().split("").forEach( function (letter) {
		if (is_vowel(letter)) {
			counter += 1;	
		}
	})
	return counter
}

function is_vowel(letter){
	var vowels = "aeiou".split("");
	var if_vowel_is_found = false;
	var i = 0;
	while (!if_vowel_is_found && i < vowels.length) {
		if (vowels[i] == letter) {
			found = true;
		}
		i++;
		
	}
	return found;
}


// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( count_vowels('abcd') === 1 )
console.log( count_vowels('color') === 2 )
console.log( count_vowels('colour') === 3 )
console.log( count_vowels('cecilia') === 4 )
