// To reverse a string, I suppose we'd have to iterate through the string, 
// and get the last indexed character, and push it to the 0-index position.
// I would loop that until the length of the string is reached. 

// Iterate through the array, beginning with the last position, found by getting
// the length of the array iterating though, subtracting one each time, and pushing
// the letter at that index position into a new array

getSchwifty = true 
function reverse(txt) {

var txt = txt.split("");
console.log(txt.length);

var reverseTxt = txt.reverse();

var joinArray = reverseTxt.join("");

return joinArray;

}

if (getSchwifty) {
console.log(reverse("Schwifty"));
}

// However, it seems that there's a much easier way to do it. 

