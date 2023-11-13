<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/main/header_user1.css">
<link rel="stylesheet" href="/resources/css/main/footer.css">
<link rel="stylesheet" href="/resources/css/mypage/mypage.css">
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
     <div class="main_box" id="main_box">

        <!--마이 페이지 html start -->
        <div class="mypage_main" id="mypage_main">
            <!-- 마이 페이지 타이틀-->
            <div class="mytitle">
                <h1>마이페이지</h1>
                <a href="" id="show_account">
                    <div class="account_page">
                        <div class="myprofile">
                            <img src="/resources/image/header/프로필box.png" alt="">
                        </div>
                        <div class="myname">
                            <span class="name">${ses.userName}고객님</span>
                            <span class="email">${ses.userEmail}</span>
                        </div>
                        <div class="accountBtn">
                          <a href="/user/detailmypage?userNum=${ses.userNum }"><button type="button">계정설정</button></a>
                        </div>
                    </div>
                </a>
            </div>

            <!-- 마이 페이지 nav-->
            <div class="mymenu">
                <div class="ezengo-pay">
                    <h1>이젠고페이</h1>
                    <a href="" id="ezengo_pay">
                        <span>이젠고페이 거래내역</span>
                    </a>
                </div>

                <div class="gosu-bucket">
                    <h1>고수찾기</h1>
                    <a href="" id="pickgosu">
                        <span>찜한 고수</span>
                    </a>
                </div>

                <div class="community">
                    <h1>커뮤니티</h1>
                    <a href="" id="community">
                        <span>숨고생활 작성글/댓글</span>
                    </a>
                </div>

                <div class="setting">
                    <h1>설정</h1>
                    <a href="">
                        <span>알림</span>
                    </a>
                    <a href="">
                        <span>공지사항</span>
                    </a>
                    <a href="">
                        <span>이젠고안내</span>
                    </a>
                </div>
            </div>

        </div>
        <!--마이 페이지 html end -->



       
        <!--계정 설정 페이지 html end -->



        <!-- 이젠 페이 페이지 thml start-->
        <div class="ezengo_pay_page" id="ezengo_pay_page">
            <div class="paytitle">
                <a href=""><span>마이페이지</span></a>
                <span> > </span>
                <span>이젠고페이 거래내역</span>

                <h1>이젠고페이 거래내역</h1>
            </div>

            <div class="paycontent">
                <div class="imgbox">
                    <img src="/resources/image/마이페이지/거래내역icon.svg" alt="">
                </div>
                <div class="conbox">
                    <p>거래 내역이 없습니다.</p>
                    <span>숨고페이 거래 내역이 없습니다.</span>
                    <span>서비스 이용 후 다시 확인해 주세요!</span>
                </div>
            </div>
        </div>
        <!-- 이젠 페이 페이지 thml end-->



        <!-- 찜한고수 페이지 thml start-->
        <div class="pickgosu_page" id="pickgosu_page">
            <div class="pro_title">
                <a href=""><span>마이페이지</span></a>
                <span> > </span>
                <span>찜한고수</span>

                <h1>찜한 고수</h1>
                <p>{category}</p>
            </div>

            <div class="pro_content">
                <div class="request">
                    <span>고수들에게 요청서를 한 번에 보내세요!</span>
                    <button type="button">견적 요청하기</button>
                </div>

                <div class="pro_profile_box">
                    <div class="pro_profile">
                        <a href="">
                            <div class="pro_text">
                                <img src="/resources/image/마이페이지/체크전icon.svg" alt="">
                                <h5>{pro_name}</h5>
                            </div>
                            <p>{pro_profile}</p>
                            <div class="profile_img">
                                <img src="/resources/image/header/프로필box.png" alt="">
                                <a href=""><span>X</span></a>
                            </div>
                        </a>
                    </div>
                </div>


            </div>

        </div>
        <!-- 찜한고수 페이지 thml end-->



        <!-- 작성글/댓글 페이지 thml start-->
        <div class="ezengo_board_page" id="ezengo_board_page">
            <div class="board_title">
                <a href=""><span>마이페이지</span></a>
                <span> > </span>
                <span>이젠고 작성글/댓글</span>

                <h1>이젠고 작성글/댓글</h1>
            </div>

            <div class="boardcontent">
                <div class="board_comment">
                    <span id="board_content" onclick="toggleStyle(this)" class="clicked">작성글</span>
                    <span id="board_comment" onclick="toggleStyle(this)">작성 댓글</span>
                </div>
                <div class="board_content" id="board_contentDiv">
                    <div class="content_box">
                        <a href="">
                            <div class="content_text">
                                <div class="con_type">{커뮤니티 타입}</div>
                                <div class="con_title">{title}</div>
                                <div class="con_content">{content}</div>
                                <div class="con_date">{reg_date}</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="board_comment_text" id="board_commentDiv">
                    <div class="content_box">
                        <a href="">
                            <div class="content_text">
                                <div class="con_title">{title}</div>
                                <div class="con_content">{content}</div>
                                <div class="con_date">{reg_date}</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 작성글/댓글 페이지 thml end-->


    </div>
<!-- js  -->
<script type="text/javascript" src="/resources/js/mypage/mypage.js"></script>
<script type="text/javascript" src="/resources/js/main/header_user.js"></script>
 

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
                        <span class="list_span">숨고소개</span>
                        <div class="firstBox">
                            <a>회사소개</a>
                            <a>채용안내</a>
                            <a>팀블로그</a>
                        </div>
                    </li>
                    <li>
                        <span class="list_span">고객안내</span>
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
                        <span class="list_span">고수안내</span>
                        <div class="firstBox">
                            <a href="">이용안내</a>
                            <a href="">고수가이드</a>
                            <a href="">고수가입</a>
                            <a href="">고수센터</a>
                        </div>
                    </li>
                    <li>
                        <span class="list_span">고객센터</span>
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

            <div class="btnbox">
                <a href=""><img src="https://assets.cdn.soomgo.com/icons/icon-footer-sns-facebook.svg" alt=""></a>&nbsp;
                <a href=""><img src="https://assets.cdn.soomgo.com/icons/icon-footer-sns-instagram.svg"
                        alt=""></a>&nbsp;
                <a href=""><img src="https://assets.cdn.soomgo.com/icons/icon-footer-sns-naverblog.svg"
                        alt=""></a>&nbsp;
                <a href=""><img src="https://assets.cdn.soomgo.com/icons/icon-footer-sns-naverpost.svg"
                        alt=""></a>&nbsp;
                <a href=""><img src="https://assets.cdn.soomgo.com/icons/icon-footer-sns-tistory.svg" alt=""></a>
            </div>
        </div>


    </div>
</footer>
</html>