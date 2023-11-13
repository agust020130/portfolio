// 이름수정
let newwindow;

document.getElementById("detailUpdate").addEventListener('click',()=>{
    // 수정 버튼을 누르면 기존에 띄워져있던 값은 사라짐
    let nameValue = document.getElementById('nameValue');
    nameValue.style.display = "none";
    // 수정버튼 저장으로 바꿈
    let detailUpdate = document.getElementById('detailUpdate');
    detailUpdate.style.display="none";
    let detailSave = document.getElementById('detailSave');
    detailSave.style.display="block";
    
    // 안보였던 인풋창을 다시 띄움
    let updateName = document.getElementById("updateName");
    let inputDetailHiddenOk = document.getElementById('inputDetailHiddenOk');
    updateName.style.display = "block";
    inputDetailHiddenOk.style.display = "block";
    nameValue = updateName.value;
   

    
    
})

async function updateNameFromServer(MmtDataMOD){
    try {
        const url = '/master/updateName/'+ MmtDataMOD.masterNum;
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

document.getElementById('detailSave').addEventListener('click',()=>{

    const updateNameText = document.getElementById('inputName').value;

    
    let inputDetailHiddenErr = document.getElementById('inputDetailHiddenErr');
    let inputDetailHiddenOk = document.getElementById('inputDetailHiddenOk');

    if( updateNameText==null || updateNameText==""){
       
        inputDetailHiddenErr.style.display="block";
        inputDetailHiddenOk.style.display="none";
        
        return false;
    }
    else{

       
        let MmtDataMOD={
            masterNum : masterNumVal,
            masterName : updateNameText
        }

        console.log(MmtDataMOD);
        updateNameFromServer(MmtDataMOD).then(result=>{
            console.log(result);
            if(result>0){
                  // 수정 버튼을 누르면 기존에 띄워져있던 값은 다시 나타냄
                    let nameValue = document.getElementById('nameValue');
                    nameValue.style.display = "block";
                    // 저장버튼 수정으로 바꿈
                    let detailUpdate = document.getElementById('detailUpdate');
                    detailUpdate.style.display="block";
                    let detailSave = document.getElementById('detailSave');
                    detailSave.style.display="none";
                    
                    // 나타났던 input 창 다시 가림
                    let updateName = document.getElementById("updateName");
                    let inputDetailHiddenOk = document.getElementById('inputDetailHiddenOk');
                    updateName.style.display = "none";
                    inputDetailHiddenOk.style.display = "none";
                    // 변경된 이름으로 새로고침
                    window.location.reload();
                    
            }else{
                alert("수정실패");
            }
        })
    }
})

// 대표서비스 설정
document.getElementById('detailUpdateCategory').addEventListener("click",()=>{
    let option = "resizable=yes, width=500px, height=700px"
    var newwindow = window.open("/master/mastercategory","_blank", option );

    let detailUpdate = document.getElementById('detailUpdateCategory');
    detailUpdate.style.display="none";
    let detailSave = document.getElementById('detailSaveCategory');
    detailSave.style.display="block";
    

})
// 다시 저장버튼을 눌렀을때 새로고침
document.getElementById('detailSaveCategory').addEventListener("click",()=>{
                    let detailUpdate = document.getElementById('detailUpdate');
                    detailUpdate.style.display="block";
                    let detailSave = document.getElementById('detailSave');
                    detailSave.style.display="none";

                    reloadwindow();
})

function reloadwindow(){
    window.location.reload();
}
// 한줄소개 
document.getElementById('detailIntroUpdate').addEventListener("click",()=>{

    let detailUpdate = document.getElementById('detailIntroUpdate');
    detailUpdate.style.display="none";
    let detailSave = document.getElementById('detailIntroSave');
    detailSave.style.display="block";

    let detailintroTextarea = document.getElementById('detailIntroTextarea');
    detailintroTextarea.style.display="block";
})

async function updateintroFromServer(MmtDataMOD){
    try {
        const url = '/master/updateintro/'+ MmtDataMOD.masterNum;
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

document.getElementById('detailIntroSave').addEventListener('click',()=>{

    const updateIntroText = document.getElementById("detailIntroTextarea").value;

    
 

    if( updateIntroText==null || updateIntroText==""){
       
       alert("빈칸입니다");
        
        return false;
    }
    else{

       
        let MmtDataMOD={
            masterNum : masterNumVal,
            masterIntro : updateIntroText
        }

        console.log(MmtDataMOD);
        updateintroFromServer(MmtDataMOD).then(result=>{
            
            if(result>0){
                  // 수정 버튼을 누르면 기존에 띄워져있던 값은 다시 나타냄
                    let introvalue = document.getElementById('introvalue');
                    introvalue.style.display = "block";
                    // 저장버튼 수정으로 바꿈
                    let detailIntroUpdate = document.getElementById('detailIntroUpdate');
                    detailIntroUpdate.style.display="block";
                    let detailIntroSave = document.getElementById('detailIntroSave');
                    detailIntroSave.style.display="none";
                    
                    // 나타났던 input 창 다시 가림
                    let detailIntroTextarea = document.getElementById("detailIntroTextarea");
                    detailIntroTextarea.style.display="none";
                    
                    // 변경된 이름으로 새로고침
                    window.location.reload();
                    
            }else{
                alert("수정실패");
            }
        })
    }
})

// 주소
//수정클릭시 바뀜 
document.getElementById('detailDesirUpdate').addEventListener("click",()=>{

    let detailUpdate = document.getElementById('detailDesirUpdate');
    detailUpdate.style.display="none";
    let detailSave = document.getElementById('detailDesirSave');
    detailSave.style.display="block";

    let diserInput = document.getElementById('diserInput');
    diserInput.style.display="block";
})
// 주소변경
async function updatediserFromServer(MmtDataMOD){
    try {
        const url = '/master/updatediser/'+ MmtDataMOD.masterNum;
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

document.getElementById('detailDesirSave').addEventListener('click',()=>{

    let city = document.getElementById('city').value;
    let gu = document.getElementById('gu').value;
    let dong = document.getElementById('dong').value;
    let disir = null;

    console.log(city);
    console.log(gu);
    console.log(dong);

   
    disir = city+"시 "+gu+"구 "+dong+"동";
    console.log(disir);
    
 

    if( disir==null || disir==""){
       
       alert("빈칸입니다");
        
        return false;
    }
    else{

       
        let MmtDataMOD={
            masterNum : masterNumVal,
            masterDesireregion : disir
        }

        console.log(MmtDataMOD);
        updatediserFromServer(MmtDataMOD).then(result=>{
            
            if(result>0){
                  // 수정 버튼을 누르면 기존에 띄워져있던 값은 다시 나타냄
                    let introvalue = document.getElementById('disirValue');
                    introvalue.style.display = "block";
                    // 저장버튼 수정으로 바꿈
                    let detailIntroUpdate = document.getElementById('detailDesirUpdate');
                    detailIntroUpdate.style.display="block";
                    let detailIntroSave = document.getElementById('detailDesirSave');
                    detailIntroSave.style.display="none";
                    
                    // 나타났던 input 창 다시 가림
                    let detailIntroTextarea = document.getElementById("diserInput");
                    detailIntroTextarea.style.display="none";
                    
                    // 변경된 이름으로 새로고침
                    // window.location.reload();
                    
            }else{
                alert("수정실패");
            }
        })
    }
})
// 연락가능시간
// 드랍다운버튼
const dorpdownItem = document.getElementsByClassName("dropdown-item");
const dorpdownItem1 = document.getElementsByClassName("dropdown-item1");
let startbtnVal = null;
const timebtnVal = document.getElementById("time");
const time = "ABCDEFGHIJKLMNOP";
const startSelect = document.getElementById('startSelect');
const lastSelect = document.getElementById('lastSelect');
let StimeVal = null;
let LtimeVal = null;
// 수정버튼 누를시




//연락 가능시간
const menubtn = document.getElementById("dropmenubtn");
document.getElementById('startbtn').addEventListener("click",()=>{

    menubtn.classList.add("show", "onmenu");
    

})

const menubtn1 = document.getElementById("dropmenubtntwo");
document.getElementById('lastbtn').addEventListener("click",()=>{

    menubtn1.classList.add("show", "onmenu1");
    

})



// 버튼누르면 드랍다운버튼 없애기
for(var i =0 ; i <dorpdownItem.length ; i++){
    
    var eachdropdwonitem = dorpdownItem[i];

    eachdropdwonitem.addEventListener("click",()=>{
       
        let menubtn = document.getElementById("dropmenubtn")
        if(menubtn.classList.contains("show")){
           menubtn.classList.remove("show");
        }
        if(menubtn.classList.contains("onmenu")){
           menubtn.classList.remove("onmenu");
        }
    })
}
// 버튼 누르는 시간 띄우기(1)
for(var i = 0 ; i < dorpdownItem.length ; i++){
     dorpdownItem[i].addEventListener("click",(e)=>{
        console.log(e.target);
            if(e.target.classList.contains("dropdown-item")){

                let li = e.target.closest("li");
                console.log("li : "+li);
                let timeval = e.target.textContent;
                console.log("timeval : "+timeval);

                StimeVal = e.target.dataset.value;
                console.log(StimeVal);
                console.log(startSelect.innerHTML);
                startSelect.innerHTML=`${timeval}`;
            }
    })
    
}

for(var i =0 ; i <dorpdownItem1.length ; i++){
    
    var eachdropdwonitem1 = dorpdownItem1[i];
   

    eachdropdwonitem1.addEventListener("click",()=>{
       
        let menubtn = document.getElementById("dropmenubtntwo")
        if(menubtn.classList.contains("show")){
           menubtn.classList.remove("show");
        }
        if(menubtn.classList.contains("onmenu1")){
           menubtn.classList.remove("onmenu1");
        }
    })
}

// 버튼 누르는 시간 띄우기(1)
for(var i = 0 ; i < dorpdownItem1.length ; i++){
     dorpdownItem1[i].addEventListener("click",(e)=>{
        console.log(e.target);
            if(e.target.classList.contains("dropdown-item1")){

                let li = e.target.closest("#dropmenubtntwo");
                console.log("li : "+li);
                let timeval1 = e.target.textContent;
                console.log("timeval : "+timeval1);

                LtimeVal = e.target.dataset.value;
                console.log(LtimeVal);

                console.log(lastSelect.innerHTML);
                lastSelect.innerHTML=`${timeval1}`;
            }
    })
    
}

document.getElementById('detailTimeUpdate').addEventListener("click",()=>{

    let detailUpdate = document.getElementById('detailTimeUpdate');
    detailUpdate.style.display="none";
    let detailSave = document.getElementById('detailTimeSave');
    detailSave.style.display="block";

    let timeInput = document.getElementById('info');
    timeInput.style.display="block";

    let timevalue = document.getElementById('timevalue');
    timevalue.style.display="none";
})
// 연락가능시간 변경
async function updatetimeFromServer(MmtDataMOD){
    try {
        const url = '/master/updatetime/'+ MmtDataMOD.masterNum;
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
// 저장버튼 누를시 변경
document.getElementById('detailTimeSave').addEventListener('click',()=>{

    console.log(StimeVal);
    console.log(LtimeVal);

    let updatetimeText = time.substring(StimeVal,Number(LtimeVal)+Number(1));
    console.log(updatetimeText);
    
 

    if( updatetimeText==null || updatetimeText==""){
       
       alert("빈칸입니다");
        
        return false;
    }
    else{

       
        let MmtDataMOD={
            masterNum : masterNumVal,
            masterTime : updatetimeText
        }

        console.log(MmtDataMOD);
        updatetimeFromServer(MmtDataMOD).then(result=>{
            
            if(result>0){
                  // 수정 버튼을 누르면 기존에 띄워져있던 값은 다시 나타냄
                     let timevalue = document.getElementById('timevalue');
                     timevalue.style.display = "block";
                    // 저장버튼 수정으로 바꿈
                    let detailIntroUpdate = document.getElementById('detailTimeUpdate');
                    detailIntroUpdate.style.display="block";
                    let detailIntroSave = document.getElementById('detailTimeSave');
                    detailIntroSave.style.display="none";
                    
                    // 나타났던 input 창 다시 가림
                    let detailIntroTextarea = document.getElementById("info");
                    detailIntroTextarea.style.display="none";
                    
                    // 변경된 이름으로 새로고침
                    // window.location.reload();
                    
            }else{
                alert("수정실패");
            }
        })
    }
})

//고용수

async function updateSizeFromServer(MmtDataMOD){
    try {
        const url = '/master/updatesize/'+ MmtDataMOD.masterNum;
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

document.getElementById('detailSizeUpdate').addEventListener("click",()=>{

    let detailUpdate = document.getElementById('detailSizeUpdate');
    detailUpdate.style.display="none";
    let detailSave = document.getElementById('detailSizeSave');
    detailSave.style.display="block";

    let sizeInput = document.getElementById("updateSize");
    sizeInput.style.display="block";

    let sizevalue = document.getElementById('sizeValue');
    sizevalue.style.display="none";
})
// 고용수 세이브버튼 누를시
document.getElementById('detailSizeSave').addEventListener('click',()=>{

    const updateSizeText = document.getElementById('inputSize').value;

    
    let inputDetailHiddenErr = document.getElementById('inputDetailHiddenErr');
    let inputDetailHiddenOk = document.getElementById('inputDetailHiddenOk');

    if( updateSizeText==null || isNaN(updateSizeText) == true){
       
        inputDetailHiddenErr.style.display="block";
        inputDetailHiddenOk.style.display="none";
        
        return false;
    }
    else{

       
        let MmtDataMOD={
            masterNum : masterNumVal,
            masterSize : updateSizeText
        }

        console.log(MmtDataMOD);
        updateSizeFromServer(MmtDataMOD).then(result=>{
            console.log(result);
            if(result>0){
                  // 수정 버튼을 누르면 기존에 띄워져있던 값은 다시 나타냄
                    let nameValue = document.getElementById('sizeValue');
                    nameValue.style.display = "block";
                    // 저장버튼 수정으로 바꿈
                    let detailUpdate = document.getElementById('detailSizeUpdate');
                    detailUpdate.style.display="block";
                    let detailSave = document.getElementById('detailSizeSave');
                    detailSave.style.display="none";
                    
                    // 나타났던 input 창 다시 가림
                    let updatesize = document.getElementById("updateSize");
                    let inputDetailHiddenOk = document.getElementById('inputDetailHiddenOk');
                    updatesize.style.display = "none";
                    inputDetailHiddenOk.style.display = "none";
                    // 변경된 이름으로 새로고침
                    window.location.reload();
                    
            }else{
                alert("수정실패");
            }
        })
    }
})