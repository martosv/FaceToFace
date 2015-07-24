// Write a method that takes a string and returns true if it is a
// palindrome. A palindrome is a string that is the same whether written
// backward or forward. Assume that there are no spaces; only lowercase
// letters will be given.
//
// Difficulty: easy.

function is_palindrome( string ) {
	var inverse_word = "";
	inverse_word = delete_whitespaces(string).split("").reverse().join("");
	if ( inverse_word === delete_whitespaces(string) )
		return true;
	else 
		return false;
}

function delete_whitespaces(string){
	var word = string.split(" ").join("")
	return word
}


// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( is_palindrome('a bc c ba') === true )
console.log( is_palindrome('abcba') === true )
console.log( is_palindrome('z') === true )
