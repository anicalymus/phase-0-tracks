// Creating a function that will reverse a string. In the parenthesis
//is the placeholder for the string that will be reversed. 
function reverseString(str) {
// Splitting the string into an array of letters
	var splitString = str.split(''); 
// Taking the result of the array of letters and reversing them
	var reverseArray = splitString.reverse();
// Joining the the string that was split into an array of letters and the reversed array.
	var joinArray = reverseArray.join('');
// Returning the array that was joined together. This is the string reversed.
  return joinArray;
}
// Printing the the original string but reversed.
console.log(reverseString("outside"));
