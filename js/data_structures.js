var horseyColors = ["Red", "Green", "Blue", "Orange"];

var horseyNames = ["Ed", "Elmer", "Horseface", "Jim"];

var horseyCombo = [];

horseyNames.forEach(function(value, index) {
  horseyCombo[value] = horseyColors[index];

});

console.log(horseyCombo);



function Car(make, model, copMagnet) {
	//console.log("My new car:", this);
	this.make = make;
	this.model = model;
	this.copMagnet = copMagnet;
	this.boom = function() { console.log("BOOM!");};		//figure out how to make this not print
	this.vroom = function() { console.log("VROOOOOOM");}; 	//nor this
}

console.log("Building car...");
var Car1 = new Car("Ferrari", 456, true);
console.log(Car1);
console.log(Car1.make + " goes...");
console.log(Car1.vroom());

console.log("Building another car...");
var Car2 = new Car("Ford", "Pinto", false);
console.log(Car2);
console.log(Car2.model + " goes...");
console.log(Car2.boom());