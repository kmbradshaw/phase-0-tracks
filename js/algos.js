// define a function that takes an array of words / phrases
	// iterate through the words / phrases and determine the length
	// return the longest word / phrase

function longestPhrase(array) {
var longestLength = array[0]
var length = array.length
for ( i=0; i < length; i ++) {
	if (array[i].length > longestLength.length) {
		longestLength = array[i]
	}
}
return longestLength;
}

console.log(longestPhrase([ "test", "unoasdsad", "ball"]));