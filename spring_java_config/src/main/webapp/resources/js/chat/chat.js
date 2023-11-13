
// chatroom , chatroommaster 창이 열리면 한번만 실행
document.addEventListener("DOMContentLoaded", ()=>{
  getChatList(chatroomroomidval);
 
}),{once:true};


// jsp가 열리면 실행하는 코드
document.addEventListener("DOMContentLoaded",function(){
  
  var sockjs = new SockJS("/stomp/chat")
  var stomp = Stomp.over(sockjs); 


  // 데이터값으로 보내는 사람(user, master) 값 불러오기
  var div = document.querySelector('#data-writer');
  var writer = div.dataset.writer;
  console.log(writer);
  console.log(chatroomroomidval);

  var chatmessageRoomid = chatroomroomidval;
  var realWriter = writer;
   

  console.log(chatmessageRoomid + ":"+ realWriter);

  // 1.SockJS를 내부에 들고있는 stomp를 내어줌

  //2. connection 이 맺어지면 실행
   stomp.connect({},function(){

      console.log("STOMP CONNECTION");

      // 현재 제일 마지막에 쓴 채팅의 보낸시간 체크
      var lastdate = document.querySelectorAll("#chat-date");
      for(var i= 0 ; i < lastdate.length; i++){
        var savedateYn = lastdate[i].dataset.day;   
      }
      console.log(savedateYn);
  
      const ul = document.getElementById('chatListArea');

      //4. subscribe(path, callback)으로 메세지를 받을수 있음
    stomp.subscribe("/sub/chat/room/"+chatmessageRoomid, function(chat){
      console.log("subscribe 진입");
      var content = JSON.parse(chat.body);
      var writer = content.chatmessageWriter;
      var chatmessageMessage =content.chatmessageMessage;
      var chatmessageSendTime = content.chatmessageSendTime;
      var chatmessageReadCheck = content.chatmessageReadCheck;
      var chatmessageSendDay = content.chatmessageSendDay; 
      var chatmessageSendName = content.chatmessageSendName;
      // 실제 로그인한 아이디

      

      console.log(writer);
      console.log(realWriter);
      
      // 체크된 메세지 보낸시간 과 현재 채팅한 시간과 일치하는지 확인
      // 불일치하면 날짜 표기하고 일치하면 그냥 채팅으로 이어짐
      if(savedateYn != chatmessageSendDay){
        let li  = `<li>`
            li += `<div class="date" data-day="${chatmessageSendDay}" id="chat-date">` 
            li += `<div class="date-style">${chatmessageSendDay}</div>`
            li += `</div></li>`

            ul.innerHTML += li;
            savedateYn = chatmessageSendDay;
          }
        // 채팅과 쓴사람이 일치하면 오른쪽으로 채팅(카톡생각하면됨)
        if(writer === realWriter){

        
            let li = `<li class="send">`    
            li += `<div class="chat-timeCheckContainer">`   
            li += `<div class="read-check">${chatmessageReadCheck}</div>`   
            li += `<div class="sendtime">${chatmessageSendTime}</div>`
            li += `</div>`   
            li += `<div class="sendm">${chatmessageMessage}</div>`
            li += `</li>`
            
            ul.innerHTML+= li;
            
          }
          // 채팅과 쓴사람이 일치하지않으면 왼쪽으로 채팅
          else{
            
            let li = `<li class="recv">`
            li += `<div class="chat-profileimg"></div>`
            li += `<div>`
            li += `<div class=recvid>${chatmessageSendName}</div>`
            li += `<div class="recvm">${chatmessageMessage}</div>`
            li += 
            li += `</div></li>`
            
            ul.innerHTML += li;
            
          }
          
          //채팅이 화면에 띄워지면 맨아래부분으로 내려가는 이벤트

          document.getElementById('messageEndRef').scrollIntoView(false);
          
      })
    
      
});
 




//3. send(path,header,message) 로 보낼 수 있음

//이미지 클릭시 보내는 이벤트
document.getElementById('chattext').addEventListener('keydown',function(event){
  if(event.key =='Enter'){
    event.preventDefault();
    document.getElementById('summit-img').click();
  }
});

document.getElementById('summit-img').addEventListener('click',()=>{
  
  const cmtText = document.getElementById('chattext').value;
  // 데이터값으로 보내는 사람(user, master) 값 불러오기
  
  // 보내는 사람의 userNum or masterNum
  
  let div = document.querySelector('#data-writer');
  let writer = div.dataset.writer;
  console.log(writer);
  
  //보내는 사람 이름 
  let sendName = sendNameVal;
  console.log("sendName : " + sendName);
  let recvName = recvNameVal;
  console.log("recvName :" + recvName);
  
  let today = new Date();
  console.log(today);
  
  // 채팅 날짜
  
  
  let year = today.getFullYear();
  let month = ('0'+(today.getMonth()+1)).slice(-2);
  let day = ('0'+(today.getDate()+1)).slice(-2);
  
  
  
  var dateString = year + '년 '+month+ '월 ' + day + '일 ';
  console.log(dateString);
  
  
  
  
  // 채팅 시간
  
  let h = today.getHours() > 12 ? "오후":"오전";
  let hours =('0'+today.getHours()).slice(-2);
  console.log(hours);
  console.log(typeof(hours));
  
  intHours = Number(hours);
  if(intHours >= 12){
    hours = intHours-12;
  }
  
  let stringHour = String(hours);
  
  let minutes = ('0'+today.getMinutes()).slice(-2);
  
  // 채팅보낸시간 체크하기위한 명령어
  var timeString = h + stringHour + "시" + minutes + "분"
  console.log(timeString)
  
  
  console.log(cmtText);
  if(cmtText==""|| cmtText==null){
    return false;
  }
  //추후에 어떻게할지 결정(없어도 될거같긴함)
  else{
    let cmtData={
      chatmessageRoomid : chatroomroomidval,
      chatmessageWriter : writer,
      chatmessageMessage : cmtText ,
      chatmessageSendTime : timeString ,
      chatmessageReadCheck: "1",
      chatmessageSendDay : dateString,
      chatmessageSendName : sendName,
      chatmessageRecvName : recvName
    };
    console.log(cmtData);
  }
  
  
  //실제 채팅 보내는 부분
  
  stomp.send('/pub/chat/message',{},
  JSON.stringify({
    chatmessageRoomid:chatroomroomidval, 
    chatmessageMessage:cmtText,
    chatmessageWriter:writer,
    chatmessageSendTime : timeString ,
    chatmessageReadCheck: "1",
    chatmessageSendDay : dateString,
    chatmessageSendName : sendName,
    chatmessageRecvName : recvName
  }));
  
  //입력후 초기화
  document.getElementById('chattext').value="";
  document.getElementById('messageEndRef').scrollIntoView(false);
  
})
});






// async function postChatToServer(cmtData){
  //     try{
    //         const url = '/chat/post';
    //         const config ={
      //             method : "post",
      //             headers : {
        //                 'content-type' : 'application/json; charset=utf-8'
        //             },
        //             body : JSON.stringify(cmtData)
        //         };
        //         const resp = await fetch(url,config);
        //         const result = await resp.text(); //isok
        //         return result;
        //     } catch(err){
          //         console.log(err);
          //     }
          // }
          
          // document.getElementById('summit-img').addEventListener('click',()=>{
            
            
            async function spereadChatFromServer(chatroomroomidval){
              console.log(chatroomroomidval);
              
              try {
                const resp = await fetch('/chat/'+chatroomroomidval);
                const result = await resp.json();
                return result;
              } catch (err) {
                console.log(err);
              }
            }
            
            async function updateReadCheck(cmtdataMod){
              try {

                const url = '/chat/readCheck/'+ chatroomroomidval
                const config={
                  method : "put",
                  headers : {
                    'content-Type' : 'application/json; charset=utf-8'
                  },
                  body : JSON.stringify(cmtdataMod)
                }

                const resp = await fetch(url,config);
                const result = await resp.text();

                return result;

              } catch (err) {
                console.log(err);
              }
            }

         
              
              document.addEventListener("DOMContentLoaded", ()=>{
                var div = document.querySelector('#data-writer');
                var writer = div.dataset.writer;
                var chatroomSendId = sendIdVal;
                if(chatroomSendId != writer){

                  let cmtdataMod = {
                    chatmessageRoomid : chatroomroomidval,
                    chatmessageReadCheck: "0"
                  }
                  updateReadCheck(cmtdataMod).then(result=>{
                    if(result>0){
                      window.location.reload();

                    }
                    else{
                      alert("쪽지실패");
                    }
                  })

                }
              })
            
            
            
    function getChatList(chatroomroomidval){
      spereadChatFromServer(chatroomroomidval).then(result=>{
                
      let div = document.querySelector('#data-writer');
      let writer = div.dataset.writer;
      console.log("writer :"+writer);
      let savedateYn ="";
      let saveNameYn ="";
      
      const ul = document.getElementById('chatListArea');
      if(result.length>0){
        ul.innerHTML="";
        
        
        for(let cvo of result){
             
              // 날짜 생성 함수
              if(savedateYn != cvo.chatmessageSendDay){
                let li  = `<li>`
                li += `<div class="date" data-day="${cvo.chatmessageSendDay}" id="chat-date">` 
                li += `<div class="date-style">${cvo.chatmessageSendDay}</div>`
                li += `</div></li>`
                
                ul.innerHTML += li;
                savedateYn = cvo.chatmessageSendDay;
              }
              
              // 채팅 쓰는사람이 본인이라면
              if(cvo.chatmessageWriter === writer){
                
                let li = `<li class="send">`  
                li += `<div class="chat-timeCheckContainer">`   
                li += `<div class="read-check" data-readcheck=${cvo.chatmessageReadCheck}>${cvo.chatmessageReadCheck}</div>`  
                li += `<div class="sendtime">${cvo.chatmessageSendTime}</div>`
                li += `</div>`
                li += `<div class="sendm">${cvo.chatmessageMessage}</div>`
                li += `</li>`
                ul.innerHTML+=li;
              }
              // 본인이 아니라면
              else{
                
                // 이전채팅이 같은 사람이 아니라면
                if(saveNameYn != cvo.chatmessageSendName){
                  
                  let li = `<li class="recv">`
                  li += `<div class="chat-profileimg"></div>`
                  li += `<div>`
                  li += `<div class=recvid>${cvo.chatmessageSendName}</div>`
                  li += `<div class="recvm">${cvo.chatmessageMessage}</div>`
                  li += `</div>`
                  li += `<div class="recv-time">${cvo.chatmessageSendTime}</div>`
                  li += `</li>`
                  
                  ul.innerHTML+=li;
                  saveNameYn =cvo.chatmessageSendName;
                }
                //이전 채팅이 같은사람이라면
                else{

                  let li = `<li class="recv">`
                  li += `<div class="chat-profileimg"></div>`
                  li += `<div>`
                  li += `<div class="recvm">${cvo.chatmessageMessage}</div>`
                  li += `</div>`
                        li += `<div class="recv-time">${cvo.chatmessageSendTime}</div>`
                        li += `</li>`
                        
                        ul.innerHTML+=li;
                        saveNameYn=cvo.chatmessageSendName;
                      }
                      
                    }
                    
                    
                  }
                  var isRead = document.querySelectorAll(`[data-readcheck*="0"]`);
                  
                  for(var i = 0 ; i < isRead.length ; i++){
                      const item = isRead.item(i);
                      item.classList.add("readCheckHide");                     
                    
                  }
                  document.getElementById('messageEndRef').scrollIntoView(false);
                }
              })
            }
            