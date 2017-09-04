// Release 0: Find the Longest Phrase
var Largest  = function(arrOfStrings) {
		arrOfStrings.forEach(function(item) {
			if (largestInArray.length < item.length); {
				largestInArray = item;
			}
		});
		return largestInArray;
};
var largestInArray = ["let's eat food", "i like lasagna", "let's go to mountain"];

Largest(largestInArray)


// Release 1: Find a Key-Value Match
function checkKeyValPair(first, second){
  for (var key in first){
    if (first[key] === second[key]){
      return true;
    }
  }
	return false;
}
// checkKeyValPair(first, second)

// Driver Code
checkKeyValPair({day: "sunny", night: "dark"}, {day: "cloudy", night: "dark"});

checkKeyValPair({clothes: "shirt", fruit: "apple"}, {clothes: "pants", weather: "hot"});


