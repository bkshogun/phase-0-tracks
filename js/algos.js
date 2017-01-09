// To find the longest string in an array of strings, the cleanest method would be to 
// iterate through the array, comparing the length of each string to the prior string, 
// and assigning a variable in the iteration loop to store the current longest string 

var wordArray = ["red", "orange", "green", "blue"];
var longWord = ""

for (i = 0; i < wordArray.length; i++) {
  if (wordArray[i].length > longWord.length);
  longWord = wordArray[i];
 }
console.log(longWord);


var person1 = {name: "Sabrina", age: 19
};

var person2 = {name: "Mike D",age: 30
};

var person3 = {name: "Batman", age: 30
};

console.log(person1)

// Logically, as compared to Ruby, the most straightforward way would be to make a series
// of conditional statements, and extracting each element of the pair, and use OR or || operators
// combined with == equality operators to check for a match, returning true if any were matched. Still
// figuring out how to do that in javascript...




