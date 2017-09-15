function mouseOver() {
  document.getElementById("text").style.color = "pink";
}

function mouseOut() {
	document.getElementById("text").style.color = "blue";
}


var header = document.getElementById("text");
header.addEventListener("mouseout", mouseOut);
header.addEventListener("mouseover", mouseOver);

