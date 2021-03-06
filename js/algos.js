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

// define a function that takes two objects and checks to see if they share at least one key-value pair
	//define a variable for match as false
	//check to see if any key-value pairs in object1 are in object2
		// if so update matche variable to true
		// return true or false
function keyValueMatch(object1, object2) {
	var match = false;
	for (key in object1) {
		if (object2.hasOwnProperty(key)) {
			match = true;
		}
	}
return match 
}

// define a function that takes an integer for length and builds and returns an array of strings of the given length
	// define letters to be used for string creation
	// create a function that combines those letters at varying lengths

function randomStringGenerator(length) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var newString = '';
  for (var i=0; i<length; i++) {
    newString = newString + alphabet[Math.floor(Math.random() * (26 - 0))];
  }
  return newString;
}
function randomStringArray(number) {
  var returnArray = [];
  for (var i=0; i<number; i++) {
 // ran out of time
 // couldn't figure out how to randomize the number so arbitrary picked ten
    returnArray.push(randomStringGenerator(10));
  }
  return returnArray;
}


// DRIVER CODE
// Tests for Release 0 (longestPhrase)
console.log(longestPhrase([ "test", "whatever", "ball"]));
console.log(longestPhrase(["Opal", "Mewpers", "Crookshanks"]));
console.log(longestPhrase(["I", "am happy this", "is working"]))
// Tests for Release 1
var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};
console.log(keyValueMatch(object1, object2)); // true
var object3 = {cat: "Mewpers", dog: "Opal"};
var object4 = {breed: "pitbull", color: "brown", eyes: "brown"}
console.log(keyValueMatch(object3, object4)); // false
// Tests for Release 2
console.log(randomStringArray(3));
for (var i = 0, i<10; i++) {
	var array = randomStringArray(5);
	console.log(array);
	console.log(longestPhrase(array));
}