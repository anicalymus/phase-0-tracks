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

// Release 2: Generate Random Test Data
var generateRandomTestData = (lengthOftestDataArr) => {
  var letters = ['a', 'g', 't', 'k', 'p'];
  var testData = [];

  for (var i = 0; i < lengthOftestDataArr; i++) {
    var wordLength = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
    var newWord = [];
    for (var k = 0; k <= wordLength; k++) {
      var letterIndex = Math.floor(Math.random() * (4 - 0 + 1)) + 0;
      newWord.push(letters[letterIndex]);
    }
    testData.push(newWord.join(''));
  }
  return testData;
};

// Driver Code

  generateRandomTestData(4)
  generateRandomTestData(5)
  generateRandomTestData(9)
  generateRandomTestData(3)
  generateRandomTestData(8)
  generateRandomTestData(10)
  generateRandomTestData(1)
  generateRandomTestData(2)
  generateRandomTestData(6)
  generateRandomTestData(7)

