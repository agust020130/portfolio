document.getElementById('target_img').addEventListener('click', function (e) {
  e.preventDefault();
  document.getElementById('file').click();
});


// 이름 수정 메서드
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

async function modifyNameUserFromServer(MmtDataMOD){
  try {
      const url = '/user/updateName/'+ MmtDataMOD.userNum;
      console.log(url);
      const config={
          method : 'put',
          headers : {
              'content-Type' : 'application/json; charset=utf-8'
          },
          body : JSON.stringify(MmtDataMOD)
      }
      const resp = await fetch(url,config);
      const result = await resp.text();
      return result;
  } catch (err) {
      console.log(err);
  }
}
// 버튼눌렀을때 실행
document.getElementById('modifyBtn').addEventListener('click',()=>{

  const updateNameText = document.getElementById('modifyUserName').value;

  


  if( updateNameText==null || updateNameText==""){
     
      return false;
  }
  else{

     
      let MmtDataMOD={
          userNum : userNumVal,
          userName : updateNameText
      }

      console.log(MmtDataMOD);
      modifyNameUserFromServer(MmtDataMOD).then(result=>{
          console.log(result);
          if(result>0){
                console.log("수정성공")  
                window.location.reload();
          }else{
              alert("수정실패");
          }
      })
  }
})
// 여기까지 이름수정
// 비밀번호 수정
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

async function updatePwUserFromServer(MmtDataMOD){
  try {
      const url = '/user/updatePw/'+ MmtDataMOD.userNum;
      console.log(url);
      const config={
          method : 'put',
          headers : {
              'content-Type' : 'application/json; charset=utf-8'
          },
          body : JSON.stringify(MmtDataMOD)
      }
      const resp = await fetch(url,config);
      const result = await resp.text();
      return result;
  } catch (err) {
      console.log(err);
  }
}

document.getElementById('modifypwBtn').addEventListener('click',()=>{

  const updatePwText = document.getElementById('passwordInput').value;


  if( updatePwText==null || updatePwText==""){
      console.log("이리로들어옴");
      return false;
  }
  else{

     
      let MmtDataMOD={
          userNum : userNumVal,
          userPw : updatePwText
      }

      console.log(MmtDataMOD);
      updatePwUserFromServer(MmtDataMOD).then(result=>{
          console.log(result);
          if(result>0){

                  // 변경된 이름으로 새로고침
                  window.location.reload();
                  
          }else{
              alert("수정실패");
          }
      })
  }
})

//핸드폰 번호 수정

async function updatePhoneUserFromServer(MmtDataMOD){
  try {
      const url = '/user/updatePhone/'+ MmtDataMOD.userNum;
      console.log(url);
      const config={
          method : 'put',
          headers : {
              'content-Type' : 'application/json; charset=utf-8'
          },
          body : JSON.stringify(MmtDataMOD)
      }
      const resp = await fetch(url,config);
      const result = await resp.text();
      return result;
  } catch (err) {
      console.log(err);
  }
}

document.getElementById('modifyPhoneBtn').addEventListener('click',()=>{

  const updatePhoneText = document.getElementById('phoneInput').value;


  if( updatePhoneText==null || updatePhoneText==""){
      console.log("이리로들어옴");
      return false;
  }
  else{

     
      let MmtDataMOD={
          userNum : userNumVal,
          userPhone : updatePhoneText
      }

      console.log(MmtDataMOD);
      updatePhoneUserFromServer(MmtDataMOD).then(result=>{
          console.log(result);
          if(result>0){

                  // 변경된 이름으로 새로고침
                  window.location.reload();
                  
          }else{
              alert("수정실패");
          }
      })
  }
})