<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/chat/chat.css">
<style type="text/css"> /*css 안먹어서 여기다해둠  */
	a:link { color: black; }
	a:visited { color: black; }
	a:hover { color: black; }
	a:active { color: black; }
</style>
<link rel="stylesheet" href="/resources/css/main/header_master1.css">
<link rel="stylesheet" href="/resources/css/main/footer.css">
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
          <a href="/chat/roominmaster?chatroomRoomid=${cdto.crvo.chatroomRoomid}" style="text-decoration: none;" id="chattag">
            <ul id="chat">
                <li id="chat-list">
                    <section class="profilecontatiner">
                        <div class="profileimg" style="background-color: black  ;"> 
                        </div>
                        <div>
                            <div id="master-name"><h5>${cdto.uvo.userName }</h5></div>
                            <div id="master-info">
                                ${cdto.uvo.userNum }
                                <span class="divider">|</span>
                                ${cdto.uvo.userEmail }
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
<footer>
  <div class="footer_line">
    <div class="footer_top">

      <div class="tel_line">

        <!-- 전화번호 -->
        <div class="tel_box">
          <p class="tel_text_top">1599-5319</p>
          <p class="tel_text_bottom">
            평일 10:00 ~ 18:00<br>
            (점심시간 13:00 ~ 14:00 제외 주말/공휴일 제외)
          </p>
        </div>

        <!-- 스토어 버튼 -->

        <!-- 버튼 1 -->
        <a class="ap_btn" href="">
          <img src="https://assets.cdn.soomgo.com/icons/icon-download-appstore.svg" alt="">
          APP STORE
        </a>

        <!-- 버튼 2 -->
        <a class="pl_btn" href="">
          <img src="https://assets.cdn.soomgo.com/icons/icon-download-palystore.svg" alt="">
          PLAY STORE
        </a>

      </div>


      <!-- text List -->
      <div class="text_list">

        <ul class="list_ul">
          <li class="list_li">
            <a href=""><span class="list_span">숨고소개</span></a>
            <div class="firstBox">
              <a href="">회사소개</a>
              <a href="">채용안내</a>
              <a href="">팀블로그</a>
            </div>
          </li>
          <li>
            <a href=""><span class="list_span">고객안내</span></a>
            <div class="firstBox">
              <a href="">이용안내</a>
              <a href="">안전정책</a>
              <a href="">예상금액</a>
              <a href="">고수찾기</a>
              <a href="">숨고보증</a>
              <a href="">고수에게묻다</a>
            </div>
          </li>
          <li>
            <a href=""><span class="list_span">고수안내</span></a>
            <div class="firstBox">
              <a href="">이용안내</a>
              <a href="">고수가이드</a>
              <a href="">고수가입</a>
              <a href="">고수센터</a>
            </div>
          </li>
          <li>
            <a href=""><span class="list_span">고객센터</span></a>
            <div class="firstBox">
              <a href="">공지사항</a>
              <a href="">자주묻는질문</a>
            </div>
          </li>
        </ul>

      </div>
    </div>



    <div class="footer_bot">
      <div class="bot_text">
        <ul class="part_o">
          <li>이용약관</li>
          <li> | </li>
          <li>개인정보처리방침</li>
          <li> | </li>
          <li>위치기반 서비스 이용약관</li>
          <li> | </li>
          <li>사업자 정보확인</li>
        </ul>

        <p class="part_t">(주)브레이브모바일은 통신판매중개자로서 통신판매의 당사자가 아니며 개별 판매자가 제공하는 서비스에 대한 이행,
          계약사항 등과 관련한 의무와 책임은 거래당사자에게 있습니다.</p>

        <p class="part_to">상호명:(주)브레이브모바일 · 대표이사:KIM ROBIN H · 개인정보책임관리자:김태우 · 주소:서울특별시 강남구 테헤란로 415, L7 강남타워 5층
          사업자등록번호:120-88-22325 · 통신판매업신고증:제 2021-서울강남-00551 호 · 직업정보제공사업 신고번호:서울청 제 2019-21호
          고객센터:1599-5319 · 이메일:support@soomgo.com
          Copyright ©Brave Mobile Inc. All Rights Reserved.</p>
      </div>

      <div class="Fbtnbox">
        <a href=""><img src="https://assets.cdn.soomgo.com/icons/icon-footer-sns-facebook.svg" alt=""></a>&nbsp;
        <a href=""><img src="https://assets.cdn.soomgo.com/icons/icon-footer-sns-instagram.svg" alt=""></a>&nbsp;
        <a href=""><img src="https://assets.cdn.soomgo.com/icons/icon-footer-sns-naverblog.svg" alt=""></a>&nbsp;
        <a href=""><img src="https://assets.cdn.soomgo.com/icons/icon-footer-sns-naverpost.svg" alt=""></a>&nbsp;
        <a href=""><img src="https://assets.cdn.soomgo.com/icons/icon-footer-sns-tistory.svg" alt=""></a>
      </div>
    </div>


  </div>
</footer>
</html>