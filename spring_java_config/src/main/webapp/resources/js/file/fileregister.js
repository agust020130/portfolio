document.getElementById("trigger123").addEventListener('click', ()=>{
    document.getElementById("fileup").click();
})

//정규표현식을 사용하여 생성자 함수를 만들기
//실행파일 막기, 이미지 파일인지 아닌제 체크
// fileupload시 형식제한 함수

const regExp = new RegExp(".\(exe|sh|bat|msi|dll|js)$"); //실행파일 막기
const regExpImg = new RegExp(".\(jpg|jpeg|png|gif|bmp)$") // 이미지파일

const maxSize = 1024*1024*20 // 20M

function fileSizeValidation(fileName, fileSize){    // 첨부 가능한 파일인지 체크
    if(regExp.test(fileName)){  //실행파일임
        return 0;
    }else if(fileSize> maxSize){
        return 0;
    }else {
        return 1;
    }

}

//첨부 file 에 따라서 체크하여 등록 가능한지 확인

document.addEventListener("change",(e)=>{
    console.log(e.target);
    if(e.target.id == 'file'){
        //첨부되지 말아야하는 파일이 들어왔을때 전송되는 것을 방지
        document.getElementById('regBtn').disabled = false;
       let div = document.getElementById('fileZone');
        div.innerHTML="";
        let isOk = 1; // filesizeValidation 의 통과 여부 체크
        
        let validResult = fileSizeValidation(file.name, file.size);
        isOk = validResult; //모든 첨부파일의 겨로가가 1이여야 통과

        if(isOk==0){
            document.getElementById('regBtn').disabled = true;
        }
       
    }
})