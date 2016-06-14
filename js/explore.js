// Create a functin that reverses a string
// declare an empty variable
// create a method that takes the variable as input
// beginning at the end last letter OF the word, print each letter until all letters have been printed

function reverse(str) {
	var reversedStr = "";
    for (var i = str.length - 1; i >= 0; i--){
	reversedStr += (str[i]); }
	return reversedStr
}
// driver code
// store reserved word as it's own variable
var reversedHelloWorld = reverse("Hello World!")
// print the stored variable if a condition evaluates to true

if ( 1 == 1) {
	console.log(reversedHelloWorld)
}
