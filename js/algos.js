var Largest  = function(arrOfStrings) {
		arrOfStrings.forEach(function(item) {
			if (largestInArray.length < item.length); {
				largestInArray = item;
			}
		});
		return largestInArray;
};
var largestInArray = ["food", "lasagna", "mountain"];

Largest(largestInArray)