<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/resources/css/chat/chatbang0725.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1.6.1/dist/sockjs.min.js"></script>
</head>
<header>
<link rel="stylesheet" href="/resources/css/main/header_master1.css">

 <div class="header_box">
        <div class="header_list">

            <!-- 로고 -->
            <div class="logo">
                <a href="/master/masterhome?masterNum=${mdto.mvo.masterNum }">
                    <p class="logo_p">E<span class="logo_m">z</span>e<span class="logo_m">n</span>g<span
                            class="logo_m">o</span>
                    </p>
                </a>
            </div>

            <!-- 헤더네비좌측 -->
            <div class="h_nav_left">
                <ul>
                    <a href="#">
                        <li>견적요청</li>
                    </a>
                    <a href="#">
                        <li>고수찾기</li>
                    </a>
                    <a href="#">
                        <li>커뮤니티</li>
                    </a>
                </ul>
            </div>

            <!-- 헤더네비우측 -->
            <div class="h_nav_right">
                <a href="#"><span>받은요청</span></a>
                <a href="/chat/roomlistmaster?chatroomRecvid=${ses.masterNum }"><span>채팅</span></a>
                <a href="/master/getProfile?masterNum=${ses.masterNum }"><span>프로필</span></a>
                <div class="bell" id="bell">
                    <img src="/resources/image/header/알람종.png" id="image" class="bellimg" alt="이미지">
                    <span class="new" id="new">NEW</span>
                </div>
                <div class="profile_box" id="downbtn">
                    <div class="profile">
                        <div class="profile_bg" id="profile"></div>
                    </div>
                    <img src="/resources/image/header/아래방향버튼.png" class="downbtn" id="downbtn_img">
                </div>
            </div>

            <!-- 프로필 버튼 창-->
            <div class="btnbox" id="btnbox">
                <div class="b_box_bg">
                    <div class="name_box">
                        <h4>${mdto.mvo.masterName } 고수님</h4>
                    </div>
                    <div class="list_box">
                        <ul>
                            <li><a href="/master/getProfile?masterNum=${ses.masterNum }">프로필 관리</a></li>
                            <li><a href="#">마이페이지</a></li>
                        </ul>
                    </div>
                    <div class="logout">
                        <a href="/user/logout"><button type="button">로그아웃</button></a>
                    </div>
                </div>
            </div>
            <!-- 알림 버튼 창 -->
            <div class="bellbox" id="bellbox">
                <div class="bellbox_bg">
                    <header class="bell_name_box">
                        <h3>알림</h3>
                    </header>

                    <div class="bell_body">
                        <div class="bell_text_box">
                            <ul>
                                <li>
                                    <div class="chat_list">
                                        <a href=""><!--chat link-->
                                            <div class="chat_header">
                                                <div class="chat_header_l">
                                                    <span>알림</span>
                                                </div>
                                                <div class="chat_header_r">
                                                    <p>{reg_date}일 전</p>
                                                </div>
                                            </div>

                                            <div class="chat_text_box">

                                                <div class="chat_text">
                                                    <h4>{한성재}고수님이 {베이스 기타} 레슨 견적을 보냈습니다.</h4>
                                                    <p>견적 내용을 자세히 확인해보세요</p>
                                                </div>

                                                <div class="chat_btn">></div>
                                            </div>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <div class="chat_list">
                                        <a href=""><!--chat link-->
                                            <div class="chat_header">
                                                <div class="chat_header_l">
                                                    <span>알림</span>
                                                </div>
                                                <div class="chat_header_r">
                                                    <p>{reg_date}일 전</p>
                                                </div>
                                            </div>

                                            <div class="chat_text_box">

                                                <div class="chat_text">
                                                    <h4>{한성재}고객님이 {베이스 기타} 레슨 견적 요청을 보냈습니다.</h4>
                                                    <p>상세 요청 내용을 자세히 확인해보세요</p>
                                                </div>

                                                <div class="chat_btn">></div>
                                            </div>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <div class="chat_list">
                                        <a href=""><!--chat link-->
                                            <div class="chat_header">
                                                <div class="chat_header_l">
                                                    <span>알림</span>
                                                </div>
                                                <div class="chat_header_r">
                                                    <p>{reg_date}일 전</p>
                                                </div>
                                            </div>

                                            <div class="chat_text_box">

                                                <div class="chat_text">
                                                    <h4>{한성재}고객님이 {베이스 기타} 레슨 견적 요청을 보냈습니다.</h4>
                                                    <p>상세 요청 내용을 자세히 확인해보세요</p>
                                                </div>

                                                <div class="chat_btn">></div>
                                            </div>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <div class="chat_list">
                                        <a href=""><!--chat link-->
                                            <div class="chat_header">
                                                <div class="chat_header_l">
                                                    <span>알림</span>
                                                </div>
                                                <div class="chat_header_r">
                                                    <p>{reg_date}일 전</p>
                                                </div>
                                            </div>

                                            <div class="chat_text_box">

                                                <div class="chat_text">
                                                    <h4>{한성재}고객님이 {베이스 기타} 레슨 견적 요청을 보냈습니다.</h4>
                                                    <p>상세 요청 내용을 자세히 확인해보세요</p>
                                                </div>

                                                <div class="chat_btn">></div>
                                            </div>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <div class="chat_list">
                                        <a href=""><!--chat link-->
                                            <div class="chat_header">
                                                <div class="chat_header_l">
                                                    <span>알림</span>
                                                </div>
                                                <div class="chat_header_r">
                                                    <p>{reg_date}일 전</p>
                                                </div>
                                            </div>

                                            <div class="chat_text_box">

                                                <div class="chat_text">
                                                    <h4>{한성재}고객님이 {베이스 기타} 레슨 견적 요청을 보냈습니다.</h4>
                                                    <p>상세 요청 내용을 자세히 확인해보세요</p>
                                                </div>

                                                <div class="chat_btn">></div>
                                            </div>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <div class="chat_list">
                                        <a href=""><!--chat link-->
                                            <div class="chat_header">
                                                <div class="chat_header_l">
                                                    <span>알림</span>
                                                </div>
                                                <div class="chat_header_r">
                                                    <p>{reg_date}일 전</p>
                                                </div>
                                            </div>

                                            <div class="chat_text_box">

                                                <div class="chat_text">
                                                    <h4>{한성재}고객님이 {베이스 기타} 레슨 견적 요청을 보냈습니다.</h4>
                                                    <p>상세 요청 내용을 자세히 확인해보세요</p>
                                                </div>

                                                <div class="chat_btn">></div>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>

                        </div>

                    </div>

                </div>
            </div>

        </div>
    </div>
    <script type="text/javascript" src="/resources/js/main/header_master.js"></script>
</header>
<body>
  <div id="app-body">
        <div id="chat-room">
            <div class="chat-room-de">
                <section class="chatbody-section col">
                    <div data-name="chat-header">
                        <div>
                            <div class="chat-header">
                                <div class="info-area">
                                    <div class="base">
                                        <a href="/chat/roomlistmaster?chatroomRecvid=${ses.masterNum }" class="btn backbutton">
                                            <img src="/resources/image/chat/chat/back.png" alt="뒤로가기" class="small-img">
                                        </a>
                                        <div class="info-name">
                                            ${cdto.uvo.userName }
                                        </div>
                                    </div>
                                </div>
                                <div class="button-area">
                                    <div class="quick-btn-container right-align">
                                        <button type="button" class="btn quick-button">
                                            <img src="/resources/image/chat/chat/phone_call.png" alt="전화" class="small-img">
                                        </button>
                                        <button type="button" class="btn quick-button">
                                            <img src="/resources/image/chat/chat/favorite.png" alt="찜 "class="small-img">
                                        </button>
                                        <button type="button" class="btn quick-button">
                                            <img src="/resources/image/chat/chat/logout.png" alt="나가" class="small-img">
                                        </button>
                                    </div>
                                    <div class="transaction-button">
                                        <div>
                                            <button type="button" class="sg-button transac-button">거래하기</button>
                                        </div>
                                    </div>
                                    <div>
                                        <button type="button" class="sg-button reviewreg">리뷰쓰기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div data-name="chat-messages">
                        <div class="chat-messages">
                            <ul class="chat-nopadding"id="chatListArea">
                               
                                <!--메세지 들어갈자리  -->
                               
                            </ul>
                            <div id="messageEndRef"></div>
                        </div>
                    </div>
                    <div class="chat-messages-input">
                        <div class="messages-input-form">
                            <div class="chat-upload">
                                <div class="button-container">
                                    <ul class="chat-function-button">
                                        <li class="add-file">
                                            <img src="/img/upload_file_FILL0_wght400_GRAD0_opsz48.png" alt="업로드" class="img-f" id="upload-img">
                                        </li>
                                    </ul>
                                    </div>
                                </div> 
                                
                                <div class="textarea-input" data-writer="${cdto.mvo.masterNum }"id="data-writer">
                                    <textarea name="message-input" id="chattext" rows="1" wrap="soft" maxlength="1000" style="resize: none; height: 36px; overflow: hidden;"></textarea>
                                </div>                                
                               
                             
                                
                                <div>
                                    <img src="/resources/image/chat/chat/sumit.png" alt="전송" class="img-f" id="summit-img">
                                </div>
                            </div>
                        </div>
                    
                </section>
   
            </div>
            </div>
        </div>
  

    <script type="text/javascript">
    const chatroomroomidval= `<c:out value="${cdto.crvo.chatroomRoomid}"/>`;
    console.log("chatroomroomid : "+chatroomroomidval);
    </script>
 
    <script src="/resources/js/chat/chat.js"></script>
    <script type="text/javascript">
     const sendNameVal= `<c:out value="${cdto.mvo.masterName}"/>`;
     console.log("sendName : "+sendNameVal);
 	</script>
 	
 	<script type="text/javascript">
 	 const recvNameVal= `<c:out value="${cdto.uvo.userName}"/>`;
     console.log("recvName : "+recvNameVal);
 	</script>
	<script type="text/javascript">
 	 const sendIdVal= `<c:out value="${cdto.crvo.chatroomSendid}"/>`;
     console.log("sendid : "+sendIdVal);
 	</script>
  
</body>
</html>