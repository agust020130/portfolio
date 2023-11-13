document.getElementById('target_img').addEventListener('click', function (e) {
  e.preventDefault();
  document.getElementById('file').click();
});


// document.getElementById("show_account").addEventListener("click", function (event) {
//   event.preventDefault();
//   window.scrollTo({
//     top: 0,
//     behavior: 'auto' // 스무스 스크롤을 위해 behavior 속성을 사용합니다.
//   });
//   var accountInfoDiv = document.getElementById("account_info");
//   accountInfoDiv.style.display = "block";

//   var mypageMainDiv = document.getElementById("mypage_main");
//   mypageMainDiv.style.display = "none";


// });


document.getElementById("ezengo_pay").addEventListener("click", function (event) {
  event.preventDefault();
  window.scrollTo({
    top: 0,
    behavior: 'auto' // 스무스 스크롤을 위해 behavior 속성을 사용합니다.
  });
  var ezengopay = document.getElementById("ezengo_pay_page");
  ezengopay.style.display = "block";

  var mypageMainDiv = document.getElementById("mypage_main");
  mypageMainDiv.style.display = "none";
});


document.getElementById("pickgosu").addEventListener("click", function (event) {
  event.preventDefault();
  window.scrollTo({
    top: 0,
    behavior: 'auto' // 스무스 스크롤을 위해 behavior 속성을 사용합니다.
  });
  var pickgosu = document.getElementById("pickgosu_page");
  pickgosu.style.display = "block";

  var mypageMainDiv = document.getElementById("mypage_main");
  mypageMainDiv.style.display = "none";

  var mainBoxDiv = document.getElementById("main_box");
  mainBoxDiv.style.width = "970px";
});



document.getElementById("community").addEventListener("click", function (event) {
  event.preventDefault();
  window.scrollTo({
    top: 0,
    behavior: 'auto' // 스무스 스크롤을 위해 behavior 속성을 사용합니다.
  });
  var pickgosu = document.getElementById("ezengo_board_page");
  pickgosu.style.display = "block";

  var mypageMainDiv = document.getElementById("mypage_main");
  mypageMainDiv.style.display = "none";

  var mainBoxDiv = document.getElementById("main_box");
  mainBoxDiv.style.width = "970px";
});



document.getElementById("name_modify").addEventListener("click", function (event) {
  event.preventDefault();
  window.scrollTo({
    top: 0,
    behavior: 'auto' // 스무스 스크롤을 위해 behavior 속성을 사용합니다.
  });
  var nameinput = document.getElementById("name_input");
  nameinput.style.display = "block";

  var accountinfo = document.getElementById("account_info");
  accountinfo.style.display = "none";
});



document.getElementById("password_modify").addEventListener("click", function (event) {
  event.preventDefault();
  window.scrollTo({
    top: 0,
    behavior: 'auto' // 스무스 스크롤을 위해 behavior 속성을 사용합니다.
  });
  var nameinput = document.getElementById("password_input");
  nameinput.style.display = "block";

  var accountinfo = document.getElementById("account_info");
  accountinfo.style.display = "none";
});


document.getElementById("phone_modify").addEventListener("click", function (event) {
  event.preventDefault();
  window.scrollTo({
    top: 0,
    behavior: 'auto' // 스무스 스크롤을 위해 behavior 속성을 사용합니다.
  });
  var nameinput = document.getElementById("phone_input");
  nameinput.style.display = "block";

  var accountinfo = document.getElementById("account_info");
  accountinfo.style.display = "none";
});


// 작성글/작성댓글 버튼구역
function toggleStyle(element) {
  var contentElement = document.getElementById('board_content');
  var commentElement = document.getElementById('board_comment');

  if (element.id === 'board_content') {
    contentElement.classList.add('clicked');
    commentElement.classList.remove('clicked');
  } else if (element.id === 'board_comment') {
    contentElement.classList.remove('clicked');
    commentElement.classList.add('clicked');
  }
}

// Add event listener to "작성글" span
document.getElementById("board_content").addEventListener("click", function (event) {
  event.preventDefault();
  var boardContentDiv = document.getElementById("board_contentDiv");
  var boardCommentDiv = document.getElementById("board_commentDiv");

  boardContentDiv.style.display = "block";
  boardCommentDiv.style.display = "none";
});

// Add event listener to "작성 댓글" span
document.getElementById("board_comment").addEventListener("click", function (event) {
  event.preventDefault();
  var boardContentDiv = document.getElementById("board_contentDiv");
  var boardCommentDiv = document.getElementById("board_commentDiv");

  boardContentDiv.style.display = "none";
  boardCommentDiv.style.display = "block";
});




// 비밀번호 확인 구역

function pwmodifyBtnOn() {
  var hiddenBtn = document.getElementById("hiddenBtn");
  var open = document.getElementById("openBtn");
  var f = document.getElementById("pw_input");

  hiddenBtn.style.display = "block";
  open.style.display = "none";
  f.type = "text";
}

function pwmodifyBtnOff() {
  var hiddenBtn = document.getElementById("hiddenBtn");
  var open = document.getElementById("openBtn");
  var f = document.getElementById("pw_input");

  hiddenBtn.style.display = "none";
  open.style.display = "block";
  f.type = "password";
}

function pwcheckInput() {
  var pwinput = document.getElementById("pw_input");
  var pwcheck = document.getElementById("pw_check");

  if (pwinput.value === "") {
    pwcheck.style.display = "block";
    pwinput.style.outlineColor = "red";
  } else {
    pwcheck.style.display = "none";
    pwinput.style.outlineColor = "#00c7a2";
  }

}

document.getElementById('pw_input').addEventListener('input', pwcheckInput);

function resetInput() {
  var pwinput = document.getElementById("pw_input");
  var pwcheck = document.getElementById("pw_check");

  if (pwinput.value != "") {
    return; // 입력된 값이 없으면 초기화하지 않음
  }

  pwinput.value = "";
  pwcheck.style.display = "none";
  pwinput.style.outlineColor = "initial";
}

document.addEventListener('click', function (event) {
  var clickedElement = event.target;

  if (!clickedElement.closest('.pw_main')) {
    resetInput();
  }
});


function checkPasswordsMatch() {
  var passwordInput = document.getElementById("passwordInput");
  var confirmPasswordInput = document.getElementById("confirmPasswordInput");

  var passwordsMatch = passwordInput.value === confirmPasswordInput.value;

  if (passwordsMatch) {
    passwordInput.style.outlineColor = "#00c7a2";
    confirmPasswordInput.style.outlineColor = "#00c7a2";
  } else {
    passwordInput.style.outlineColor = "red";
    confirmPasswordInput.style.outlineColor = "red";
  }
}

document.getElementById('passwordInput').addEventListener('input', checkPasswordsMatch);
document.getElementById('confirmPasswordInput').addEventListener('input', checkPasswordsMatch);