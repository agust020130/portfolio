<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숨은고수</title>
<link rel="stylesheet" href="/resources/css/chat/chat.css">
<style type="text/css"> /*css 안먹어서 여기다해둠  */
	a:link { color: black; }
	a:visited { color: black; }
	a:hover { color: black; }
	a:active { color: black; }
</style>
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
  <div class="allchat-list">
        <div id="container">
            <section id="pagetitle">
                <span class="subtitle">
                <h3>채팅</h3>   
                </span>

                <a href=""><span class="editoricon">편집</span></a> 
            </section>
            <section id="titlecontents">
                <div id="searchinput">
                    <div id="searchicon">
                       <img src="/resources/image/chat/chatlist/search_FILL0_wght400_GRAD0_opsz48.png" alt="검색아이콘" id="searchicon1">
                    </div>
                    <input type="text" id="serach" placeholder="이름과 서비스를 검색하세요">
            
                    <br>
                </div>
            </section>
            <section>
                <div id="chat-list-container">
                    <ul id="chat-filter">
                        <li id="chat-filter-item1" class="chat-filter-item">전체</li>
                        <li id="chat-filter-item2" class="chat-filter-item">안읽음</li>
                        <li id="chat-filter-item2" class="chat-filter-item">즐겨찾기</li>
                        <li id="chat-filter-item3" class="chat-filter-item">고용</li>
                    </ul>
                </div>
                
            </section>
        </div>
            <div class="pagebody">
            <!-- 채팅방리스트 들어가자리 -->
          <c:forEach items="${chatList }" var="cdto">
          	<div class="chat-list-room">
          <a href="/chat/roomin?chatroomRoomid=${cdto.crvo.chatroomRoomid}" style="text-decoration: none;" id="chattag">
            <ul id="chat">
                <li id="chat-list">
                    <section class="profilecontatiner">
                        <div class="profileimg" style="background-color: black  ;"> 
                        </div>
                        <div>
                            <div id="master-name"><h5>${cdto.mvo.masterName }</h5></div>
                            <div id="master-info">
                                ${cdto.mvo.masterCategoryCode }
                                <span class="divider">|</span>
                                ${cdto.mvo.masterDesireregion }
                            </div>
                        </div>
                    </section>
                    
                    <div id="last-msg">
                            <p>${cdto.crvo.chatroomLastMsg }</p> <!--마지막메세지 들어갈자리  --> 
                            <span class="badge unread-count">${cdto.crvo.chatroomReadCount }</span> <!--UNREADCOUNT 들어갈자리  -->
                    </div>
               
                    <div class="divider"></div>
                    <div class="row">
                        <div class="price">
                            <span class="payhow">
                                <img src="/resources/image/chat/chatlist/payimag.png" alt="" class="payimg">
                                <span class="payname">숨고페이</span>
                            </span>
                            <p>
                                <label for="">총</label>
                                ${cdto.mvo.masterPrice}
                                <span>부터~</span>
                            </p>
                        </div>
                        <div class="updated-at">
                            <p class="updatedate">어제</p> <!-- 최종 메세지 시간 (시간되면 구현)  -->
                        </div>
                    </div>
                </li>
            </ul>
        </a>
        </div>
          </c:forEach>
           </div>
           </div>
        
</body>
</html>