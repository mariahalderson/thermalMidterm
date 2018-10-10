//hamburger menu
var hamburger = document.querySelector("#hamburger"),
    hamburgerLines = Array.from(document.querySelectorAll(".hamburger-line"));


    hamburger.addEventListener('click', function(){
        hamburgerLines.forEach(line=>line.classList.toggle("change"));
    });