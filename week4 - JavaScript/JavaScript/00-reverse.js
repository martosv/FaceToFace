// Write a method that will take a string as input, and return a new
// string with the same letters in reverse order.

/*
function reverse( string ) {
	if (string === "") {
		return "";
	} else {
		var capicua = string.split("").reduce(function (a,b){
			return b + a;
		});
		return capicua;
	}
}
*/

function reverse(string) {
	var capicua = "", length = string.length
	for (var i = length; i>=0; i--){
		capicua += string.charAt(i);
	}
	return capicua;
}
// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( reverse("") === "" )
console.log( reverse("a") === "a" )
console.log( reverse("lmthzz") === "zzhtml" )
