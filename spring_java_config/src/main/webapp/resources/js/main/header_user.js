//헤더 스크롤 JS
window.addEventListener("scroll", handleScroll);

function handleScroll(event) {
  const scrollPosition = window.scrollY;

  if (scrollPosition > 70) {
    var headerBoxElements = document.getElementsByClassName("header_box");
    for (var i = 0; i < headerBoxElements.length; i++) {
      headerBoxElements[i].style.borderBottom = "1px solid rgb(228, 228, 228)";
    }
  } else {
    var headerBoxElements = document.getElementsByClassName("header_box");
    for (var i = 0; i < headerBoxElements.length; i++) {
      headerBoxElements[i].style.borderBottom = "none";
    }
  }
}

//헤더 버튼 js
document.addEventListener("DOMContentLoaded", function() {
    const bellimg = document.getElementById("image");
    const newtext = document.getElementById("new");
    const downbtn = document.getElementById("downbtn");
    const btnbox = document.getElementById("btnbox");
    const profile = document.getElementById("profile");
    const bellbox = document.getElementById("bellbox");
    const btnimg = document.getElementById("downbtn_img");

    bellimg.addEventListener("click", function() {
      newtext.style.display = (newtext.style.display === "none") ? "block" : "none";
      bellbox.style.display = (bellbox.style.display === "none") ? "block" : "none";
      btnimg.src = "/resources/image/header/아래방향버튼.png";
      btnbox.style.display = "none";
      profile.style.display = "none";
    });

    downbtn.addEventListener("click", function() {
      btnbox.style.display = (btnbox.style.display === "none") ? "block" : "none";
      profile.style.display = (profile.style.display === "none") ? "block" : "none";
      btnimg.src = (btnbox.style.display === "none") ? "/resources/image/header/아래방향버튼.png" : "/resources/image/header/위방향버튼.png";
      bellbox.style.display = "none";
      newtext.style.display = "none";
    });

    document.body.addEventListener("click", function(event) {
      if(event.target === document.body) {
        newtext.style.display = "none";
        btnbox.style.display = "none";
        profile.style.display = "none";
        bellbox.style.display = "none";
        btnimg.src = "/resources/image/header/아래방향버튼.png";
      }
    });
  });      