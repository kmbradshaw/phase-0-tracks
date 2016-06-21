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

// create a constructor function for a car 
  // function: drive 
  // property: color 
  // property: year 

function Car(color, year) {
  this.color = color;
  this.year = year;
  
  this.drive = function() { console.log("Car is driving"); }; 
  console.log("CAR INITIALZATION COMPLETE");
}

var newCar = new Car("red",2016);
newCar.drive();
console.log(newCar);
var anotherCar = new Car("white",2015);
anotherCar.drive();
console.log(anotherCar);
var yetAnotherCar = new Car("black",2014);
yetAnotherCar.drive();
console.log(yetAnotherCar);