function addPinkBorder(event) {
  console.log(event);
  event.target.style.border = "2px solid pink";
}

function addBlueBorder(event) {
  console.log(event);
  event.target.style.border = "2px solid blue";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("mouseover", addPinkBorder);
photo.addEventListener("mouseout", addBlueBorder);