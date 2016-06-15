// declare an array of colors
var colorArray = ["Blue", "Green", "Indigo", "Hot Pink"];

// declare an array of horse names
var horseNames = ["Maria", "Phillip", "Penelope", "Sasha"];

// add color to array of colors
colorArray.push("Teal");
// add horse name to list of horses
horseNames.push("Lilah");

// test code
console.log(colorArray);
console.log(horseNames);

// create an object from existing arrays, with horse names as the identifier names and colors as the properties

var  horsesWithColors= {};

for (var i = 0; i < horseNames.length; i++) {
    horsesWithColors[horseNames[i]] = colorArray[i];
}

console.log(horsesWithColors);

