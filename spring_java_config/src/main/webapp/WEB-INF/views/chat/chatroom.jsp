<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1.6.1/dist/sockjs.min.js"></script>

<link rel="stylesheet" href="/resources/css/chat/chatbang0725.css">
</head>
<header>
 <link rel="stylesheet" href="/resources/css/main/header_user1.css">
<%--  <c:set value="${mdto.flist.fvo}" var="flist"></c:set>  --%>
 <div class="header_box">
      <div class="header_list">
        <!-- 로고 -->
        <div class="logo">
          <a href="/user/logo?userNum=${mdto.uvo.userNum }">
            <p class="logo_p">S<span class="logo_m">o</span>o<span class="logo_m">m</span>g<span class="logo_m">o</span>
            </p>
          </a>
        </div>
  
        <!-- 헤더네비좌측 -->
        <div class="h_nav_left">
          <ul>
            <a href="/category/category">
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
  
        <!-- 검색 -->
        <div class="search">
          <img src="/resources/image/header/돋보기.png"><input class="searchinput" type="text" placeholder="어떤 서비스가 필요하세요?" onfocus="this.placeholder = ''"  onblur="this.placeholder = '어떤 서비스가 필요하세요?'">
        </div>
  
 
        <!-- 헤더네비우측 -->

        <div class="h_nav_right">
          <a href="/service/serviceRequest"><span>받은견적</span></a>
          <a href="/chat/roomlist?chatroomSendid=${ses.userNum }"><span>채팅</span></a>
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
              <h4>${ses.userName } 고객님</h4>
            </div>
            <div class="list_box">
              <ul>
                <li><a href="/service/serviceRequest">받은 견적</a></li>
                <li><a href="/user/mypage?userNum=${ses.userNum }">마이페이지</a></li>
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
                            <p>reg_date일 전</p>
                          </div>
                        </div>
  
                        <div class="chat_text_box">
  
                          <div class="chat_text">
                            <h4>한성재고수님이 베이스 기타 레슨 견적을 보냈습니다.</h4>
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
                            <p>reg_date일 전</p>
                          </div>
                        </div>
  
                        <div class="chat_text_box">
  
                          <div class="chat_text">
                            <h4>한성재고수님이 베이스 기타 레슨 견적을 보냈습니다.</h4>
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
                            <p>reg_date일 전</p>
                          </div>
                        </div>
  
                        <div class="chat_text_box">
  
                          <div class="chat_text">
                            <h4>한성재고수님이 베이스 기타 레슨 견적을 보냈습니다.</h4>
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
                            <p>reg_dat일 전</p>
                          </div>
                        </div>
  
                        <div class="chat_text_box">
  
                          <div class="chat_text">
                            <h4>한성재고수님이 베이스 기타 레슨 견적을 보냈습니다.</h4>
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
                            <p>reg_dat일 전</p>
                          </div>
                        </div>
  
                        <div class="chat_text_box">
  
                          <div class="chat_text">
                            <h4>한성재고수님이 베이스 기타 레슨 견적을 보냈습니다.</h4>
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
                            <p>reg_date일 전</p>
                          </div>
                        </div>
  
                        <div class="chat_text_box">
  
                          <div class="chat_text">
                            <h4>한성재고수님이 베이스 기타 레슨 견적을 보냈습니다.</h4>
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
                            <p>reg_date일 전</p>
                          </div>
                        </div>
  
                        <div class="chat_text_box">
  
                          <div class="chat_text">
                            <h4>한성재고수님이 베이스 기타 레슨 견적을 보냈습니다.</h4>
                            <p>견적 내용을 자세히 확인해보세요</p>
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
     <script type="text/javascript" src="/resources/js/main/header_user.js"></script>
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
                                        <a href="/chat/roomlist?chatroomSendid=${ses.userNum }" class="btn backbutton">
                                            <img src="/resources/image/chat/chat/back.png" alt="뒤로가기" class="small-img">
                                        </a>
                                        <div class="info-name">
                                            ${cdto.mvo.masterName }
                                        </div>
                                    </div>
                                </div>
                                <div class="button-area">
                                    <div class="quick-btn-container right-align">
                                        <button type="button" class="btn quick-button">
                                        <a>
                                             <img src="/resources/image/chat/chat/phone_call.png" alt="전화" class="small-img">                                        
                                        </a>
                                        </button>
                                        <button type="button" class="btn quick-button">
                                            <img src="/resources/image/chat/chat/favorite.png" alt="찜 "class="small-img">
                                        </button>
                                        <button type="button" class="btn quick-button">
                                        <a href="/chat/deletRoom?chatroomRoomid=${cdto.crvo.chatroomRoomid}">
                                            <img src="/resources/image/chat/chat/logout.png" alt="나가" class="small-img">                                        
                                        </a>
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
                            <ul class="chat-nopadding" id="chatListArea">
                             <!--날짜 들어갈자리  -->
                             
                             
                
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
                                            <img src="/resources/image/chat/chat/upload_file.png" alt="업로드" class="img-f" id="upload-img">
                                        </li>
                                    </ul>
                                    </div>
                                </div> 
                                
                                <div class="textarea-input" data-writer="${ses.userNum }"id="data-writer">
                                    <textarea name="message-input" id="chattext" rows="1" wrap="soft" maxlength="400"  style="resize: none; height: 28px; overflow: hidden;" ></textarea>
                                </div>                                
                               
                             
                                
                                <div>
                                    <img src="/resources/image/chat/chat/sumit.png" alt="전송" class="img-f" id="summit-img" >
                                </div>
                            </div>
                        </div>
                    
                </section>
                <section class="aside-sheet-section">
                    <div class="chat-aside-container">
                        <div class="card-header">
                            <div class="card-header-title">고수 프로필</div>  <!-- 사이드 헤더부분 -->
                        </div>
                        <div class="card-contents">
                            <div class="content-scroll">
                                <div class="card-profile"> <!-- 프로필 -->
                                    <div class="backdrop">  <!-- 프로필 사진 -->
                                        <div class="thum-profile-img">
                                            <div class="thum-issqure"></div>
                                        </div>
                                    </div>
                                    <div class="info">
                                        <div class="info-section-header">
                                            <h1 class="nickname">${cdto.mvo.masterName }</h1>
                                        </div>
                                        <div class="info-section-subheader">
                                            <div class="category">${cdto.mvo.masterCategoryCode }</div>
                                            <div class="adress">
                                                 ${cdto.mvo.masterDesireregion }
                                            </div>
                                            <div class="introduce"> ${cdto.mvo.masterIntro }</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="background-block"></div>
                                <div class="profile-provider">
                                    <div class="profile-provider-container">
                                        <section id="about">
                                            <div class="profile-provider-info">
                                                <div class="profile-provider-info-title">
                                                    <h2 class="about-title">고수 정보</h2> <!-- 고수 개인정보 들어갈자리 -->
                                                </div>
                                                <ul>
                                                    <li class="business-size">
                                                          <div class="business-size-img"></div>
                                                           ${cdto.mvo.masterSize }
                                                    </li>
                                                    <li class="active-time">
                                                        <div class="active-time-img"></div>
                                                          오전9시~오후6시 <!-- 추후  -->
                                                    </li>
                                                    <li class="payment">
                                                        <div class="payment-img"></div>
                                                        현금결재, 카드결재	<!-- 추후  -->
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="profile-service-desc">
                                                <div class="profile-service-desc-title">
                                                    <h2 class="about-title">서비스 상세설명</h2>
                                                </div>
                                                <div class="description">   <!-- 서비스 상세설명 들어갈자리 -->
                                                    안녕하세요 
                                                    음악을 처음 접하였을때부터 보컬코칭을 꿈꾸며 보컬강사로 삶을 활동하고있는 
                                                    구수영입니다.
                                                    저는 교육인이 되고자 경희대학교 일반대학원 포스트모던음악학과에 진학하여 2021년 8월 음악학 석사학위를 취득하였습니다.
                                                    보컬강사로 처음 실용음악학원에서 3년간 강사로 일한적이있으며, 각종 실용음악 고등학교 및 전공학생들에게 특강형식으로 레슨을 진행한 바 있습니다.
                                                    다른 보컬강사와의 차별점이라고함은 교육자가 되기위한 심화과정으로 석사학위를 취득한 점과 레슨시간 외에 궁금한것이 있으면 언제든지 카톡으로 질문을 받고 궁금증을 해결하기위해 노력하고, 또한 제가 부족한것이 있다면 주변 동료들에게 자문을 구해서  해결합니다.
                                                    대학원 진학을 위해 부득이하게 학원 강사직을 그만두게 되었는데, 레슨을 했을 당시 배웠던 수강생들의 수많은 요청으로 실용음악학원에서 나와 개인레슨을 진행하고있습니다.
                                                    언제나 수강생 중심의 레슨을 진행하고 수강생이 재밌는 레슨을 하는것이 제 모토입니다.
                                                    감사합니다. 
                                                    <!-- 추후 -->
                                                </div>
                                            </div>
                                            <div class="profile-service-list">
                                                <h2 class="about-title">제공 서비스</h2>
                                                <div class="view">
                                                    <ul>  <!-- 제공서비스 데이터 들어갈자리 -->
                                                        <li class="cursor-default">
                                                             ${cdto.mvo.masterCategoryCode }
                                                        </li>
                                                        <li class="cursor-default">
                                                            축가 요청
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="profile-media">
                                                <h2 class="about-title">사진 및 동영상</h2>
                                                <div class="image-list-viewer">
                                                    <ul class="img-row">
                                                        <li>
                                                            <div class="image-list-viewer-img"style="background-image:url(/img/사진및동영상예시.PNG)"></div>
                                                        </li>
                                                        <li>
                                                            <div class="image-list-viewer-img"style="background-image:url(/img/사진및동영상예시.PNG)"></div>
                                                        </li>
                                                        <li>
                                                            <div class="image-list-viewer-img"style="background-image:url(/img/사진및동영상예시.PNG)"></div>
                                                        </li>
                                                        <li>
                                                            <div class="image-list-viewer-img"style="background-image:url(/img/사진및동영상예시.PNG)"></div>
                                                        </li>
                                                        <li>
                                                            <div class="image-list-viewer-img"style="background-image:url(/img/사진및동영상예시.PNG)"></div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </section>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </section>
            </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
    const chatroomroomidval= `<c:out value="${cdto.crvo.chatroomRoomid}"/>`;
    console.log("chatroomroomid : "+chatroomroomidval);
    </script>
 	<script type="text/javascript">
 	 const sendNameVal= `<c:out value="${cdto.uvo.userName}"/>`;
     console.log("sendName : "+sendNameVal);
 	</script>
 	<script type="text/javascript">
 	 const recvNameVal= `<c:out value="${cdto.mvo.masterName}"/>`;
     console.log("sendName : "+recvNameVal);
 	</script>
 	<script type="text/javascript">
 	 const sendIdVal= `<c:out value="${cdto.crvo.chatroomSendid}"/>`;
     console.log("sendid : "+sendIdVal);
 	</script>
    <script src="/resources/js/chat/chat.js"></script>
</body>
</html>