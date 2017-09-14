console.log("This is a test!");

function mouseOver() {
  document.getElementById("test").style.color = "blue";
}

function mouseOut() {
	document.getElementById("test").style.color = "green";
}

var header = document.getElementById("test");
header.addEventListener("mouseout", mouseOut);
header.addEventListener("mouseover", mouseOver);
