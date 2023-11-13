<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta charset="UTF-8"> <!-- 추가할부분 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- 추가할부분 -->
	<meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 추가할부분 -->
	<title>Home</title>
	
<!-- c:if 헤더들어갈자리 -->
	<link rel="stylesheet" href="/resources/css/main/footer.css">
	
</head>
<header>

 <!-- 비로그인  -->
<c:if test="${mdto.mvo eq null && mdto.uvo eq null}">

<link rel="stylesheet" href="/resources/css/main/header.css">
  <div class="header_box">
    <div class="header_list">
      <!-- 로고 -->
      <div class="logo">
        <a href="/">
          <p class="logo_p">E<span class="logo_m">z</span>e<span class="logo_m">n</span>g<span class="logo_m">o</span>
          </p>
        </a>
      </div>

      <!-- 헤더네비좌측 -->
      <div class="h_nav_left">
        <ul>
          <a href="">
            <li>견적요청</li>
          </a>
          <a href="">
            <li>고수찾기</li>
          </a>
          <a href="/board/community">
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
        <a href="/user/login"><span>로그인</span></a>
        <a href="/user/signup"><span>회원가입</span></a>
        <button class="gosu"><a href="/master/masterSignup"><span class="gosu">고수가입</span></a></button>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="/resources/js/main/header.js"></script>
</c:if>

<!-- USER 가 로그인시  -->
<c:if test="${mdto.mvo eq null && mdto.uvo ne null}">


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
	
</c:if>

<!--master 로그인시  -->
<c:if test="${mdto.mvo.masterEmail ne null && mdto.uvo.userEmail eq null }">
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
</c:if>
</header>
<body>

<link rel="stylesheet" href="/resources/css/main/main.css">
<div class="main_box">
    <!-- 메인 이미지 슬라이드 영역-->
    <div class="slide_wrap">
      <div class="slide_box">
        <div class="slide_list">
          <div class="slide_content"><img src="/resources/image/main/메인 1번.png" alt=""></div>
          <div class="slide_content"><img src="/resources/image/main/메인 2번.png" alt=""></div>
          <div class="slide_content"><img src="/resources/image/main/메인 3번.png" alt=""></div>
          <div class="slide_content"><img src="/resources/image/main/메인 4번.png" alt=""></div>
          <div class="slide_content"><img src="/resources/image/main/메인 5번.png" alt=""></div>
          <div class="slide_content"><img src="/resources/image/main/메인 6번.png" alt=""></div>
        </div>
      </div>
      <div class="controller">
        <button type="button" class="left_btn"><img src="/resources/image/main/방향버튼 좌.svg" alt=""></button>
        <button type="button" class="right_btn"><img src="/resources/image/main/방향버튼 우.svg" alt=""></button>
      </div>
      <ul class="slide_pagination">
      </ul>
    </div>

    <!-- 견적 아이콘 영역-->
    <div class="icon_box">
      <div class="icon_list">
        <div class="icon">
          <div class="icon_hv">
            <a href="/category/categoryLesson"><img src="/resources/image/body_img/icon_img/레슨.svg" alt=""></a>
          </div>
          <span class="icon_hv">레슨</span>
        </div>
        <div class="icon">
          <div>
            <a href="/category/categoryHouseLiving"><img src="/resources/image/body_img/icon_img/홈리빙.svg" alt=""></a>
          </div>
          <span>홈/리빙</span>
        </div>
        <div class="icon">
          <div>
            <a href="/category/categoryEvent"><img src="/resources/image/body_img/icon_img/이벤트.svg" alt=""></a>
          </div>
          <span>이벤트</span>
        </div>
        <div class="icon">
          <div>
            <a href="/category/categoryBusiness"><img src="/resources/image/body_img/icon_img/비즈니스.svg" alt=""></a>
          </div>
          <span>비즈니스</span>
        </div>
        <div class="icon">
          <div>
            <a href="/category/categoryDesignDevelop"><img src="/resources/image/body_img/icon_img/디자인개발.svg" alt=""></a>
          </div>
          <span>디자인/개발</span>
        </div>
      </div>
      <div class="grbg"
        style="width: 970px; height: 165px; background: linear-gradient(360deg, rgba(255, 255, 255, 0.20) 0%, rgba(221.16, 171.33, 243.31, 0.20) 29%, rgba(0, 199, 163.18, 0.08) 67%, rgba(147.74, 211.03, 234.81, 0) 100%);">
      </div>
    </div>

    <!-- 서비스 / 커뮤니티 버튼 영역-->
    <div class="service_box">
      <div class="service_line">
        <svg class="line_hv" id="line_hv" xmlns="http://www.w3.org/2000/svg" width="970" height="42"
          viewBox="0 0 970 42" fill="none">
          <path
            d="M0 41H162.09V11C162.09 5.47715 166.567 1 172.09 1H264.507H315.081H355.654C361.177 1 365.654 5.47715 365.654 11V41H371.156H580.223H789.712H970"
            stroke="#D1B6DD" stroke-width="2" stroke-linejoin="round" />
        </svg>
        <svg class="line_ht" id="line_ht" xmlns="http://www.w3.org/2000/svg" width="970" height="42"
          viewBox="0 0 970 42" fill="none">
          <path
            d="M0 41H411.201V11C411.201 5.47715 415.678 1 421.201 1H560.778C566.301 1 570.778 5.47715 570.778 11V41H970"
            stroke="#D1B6DD" stroke-width="2" stroke-linejoin="round" />
        </svg>
        <svg class="line_htt" id="line_htt" xmlns="http://www.w3.org/2000/svg" width="970" height="42"
          viewBox="0 0 970 42" fill="none">
          <path
            d="M0 41H162.09H506.156H626.201V11C626.201 5.47715 630.678 1 636.201 1H775.778C781.301 1 785.778 5.47715 785.778 11V41H970"
            stroke="#D1B6DD" stroke-width="2" stroke-linejoin="round" />
        </svg>
      </div>
      <div class="service_text">
        <button type="button" id="showpopbtn"><span id="svgSpanon">이젠고 인기 서비스</span></button>
        <button type="button" id="showstory"><span id="svgSpanto">이젠고 이야기</span></button>
        <button type="button" id="showknowhow"><span id="svgSpanth">고수의 노하우</span></button>
      </div>
    </div>


    <!-- 서비스 / 커뮤니티 슬라이드 영역 -->
    <div class="popular_service">

      <!-- 이젠고 인기 서비스  -->
      <div class="popslide">
        <div class="popsvc_list">
          <div class="popsvc_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/인기 서비스/영어 과외.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="title">영어 과외</p>
              <div class="content">
                <img src="/resources/image/header/편지.png" alt="">
                <P> 885,614명 요청</p>
              </div>
            </div>
          </div>

          <div class="popsvc_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/인기 서비스/퍼스널트레이닝(PT).png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="title">퍼스널트레이닝(PT)</p>
              <div class="content">
                <img src="/resources/image/header/편지.png" alt="">
                <p>559,412명 요청</p>
              </div>
            </div>
          </div>

          <div class="popsvc_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/인기 서비스/보컬레슨.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="title">보컬 레슨</p>
              <div class="content">
                <img src="/resources/image/header/편지.png" alt="">
                <p>350,553명 요청</p>
              </div>
            </div>
          </div>

          <div class="popsvc_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/인기 서비스/욕실화장실 리모델링.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="title">욕실/화장실 리모델링</p>
              <div class="content">
                <img src="/resources/image/header/편지.png" alt="">
                <p>321,741명 요청</p>
              </div>
            </div>
          </div>

          <div class="popsvc_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/인기 서비스/도배장판 시공.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="title">도배장판 시공</p>
              <div class="content">
                <img src="/resources/image/header/편지.png" alt="">
                <p>303,353명 요청</p>
              </div>
            </div>
          </div>

          <div class="popsvc_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/인기 서비스/전기배선 설치 및 수리.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="title">전기 배선 설치 및 수리</p>
              <div class="content">
                <img src="/resources/image/header/편지.png" alt="">
                <p>242,036명 요청</p>
              </div>
            </div>
          </div>

          <div class="popsvc_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/인기 서비스/집 인테리어.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="title">집 인테리어</p>
              <div class="content">
                <img src="/resources/image/header/편지.png" alt="">
                <p>296,695명 요청</p>
              </div>
            </div>
          </div>

          <div class="popsvc_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/인기 서비스/수학 과외.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="title">수학 과외</p>
              <div class="content">
                <img src="/resources/image/header/편지.png" alt="">
                <p>236,174명 요청</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 이젠고 이야기  -->
      <div class="storyslide">
        <div class="ezengo_story">
          <div class="story_box">
            <div class="story_img">
              <img src="/resources/image/body_img/이젠고 이야기/img_1.png" alt="">
            </div>
            <div class="story_text">
              <p class="stitle">생활 속 안전을 책임진다는 생각으로 임해요</p>
            </div>
          </div>

          <div class="story_box">
            <div class="story_img">
              <img src="/resources/image/body_img/이젠고 이야기/img_2.png" alt="">
            </div>
            <div class="story_text">
              <p class="stitle">사주 명리학, 나의 맞춤형 사용설명서에요</p>
            </div>
          </div>

          <div class="story_box">
            <div class="story_img">
              <img src="/resources/image/body_img/이젠고 이야기/img_3.png" alt="">
            </div>
            <div class="story_text">
              <p class="stitle">교사였던 경험으로 일본어를 가르쳐요</p>
            </div>
          </div>

          <div class="story_box">
            <div class="story_img">
              <img src="/resources/image/body_img/이젠고 이야기/img_4.png" alt="">
            </div>
            <div class="story_text">
              <p class="stitle">괜찮아요. 처음부터 잘 하는 사람은 없어요</p>
            </div>
          </div>

          <div class="story_box">
            <div class="story_img">
              <img src="/resources/image/body_img/이젠고 이야기/img_5.png" alt="">
            </div>
            <div class="story_text">
              <p class="stitle">행복을 선물하는 꽃의 힘을 전해요</p>
            </div>
          </div>

          <div class="story_box">
            <div class="story_img">
              <img src="/resources/image/body_img/이젠고 이야기/img_6.png" alt="">
            </div>
            <div class="story_text">
              <p class="stitle">반려견과 함께 좋은 삶을 고민해요</p>
            </div>
          </div>

          <div class="story_box">
            <div class="story_img">
              <img src="/resources/image/body_img/이젠고 이야기/img_7.png" alt="">
            </div>
            <div class="story_text">
              <p class="stitle">글쓴이의 감성을 담아 글을 완성해요</p>
            </div>
          </div>

          <div class="story_box">
            <div class="story_img">
              <img src="/resources/image/body_img/이젠고 이야기/img_8.png" alt="">
            </div>
            <div class="story_text">
              <p class="stitle">좋은 영향력을 주는 마술사가 될 거에요</p>
            </div>
          </div>
        </div>
      </div>

      <!-- 고수의 노하우  -->
      <div class="knowhowslide">
        <div class="gosu_know_how">
          <div class="gosu_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/고수의 노하우/img_1.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="gtitle">지상에서 즐기는 서핑 꿀팁</p>
              <div class="gcontent">
                <P>김광현</p>
              </div>
            </div>
          </div>

          <div class="gosu_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/고수의 노하우/img_2.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="gtitle">식단관리하며 매일 먹은 음식</p>
              <div class="gcontent">
                <p>성민정</p>
              </div>
            </div>
          </div>

          <div class="gosu_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/고수의 노하우/img_3.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="gtitle">블라인드의 종류에 대해 알아보아요^^</p>
              <div class="gcontent">
                <p>김민철</p>
              </div>
            </div>
          </div>

          <div class="gosu_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/고수의 노하우/img_4.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="gtitle">당신이 영어를 못하는 진짜 이유</p>
              <div class="gcontent">
                <p>JASON</p>
              </div>
            </div>
          </div>

          <div class="gosu_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/고수의 노하우/img_5.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="gtitle">구옥 상가 화장실 리모델링 시 체크사항</p>
              <div class="gcontent">
                <p>인큐디자인</p>
              </div>
            </div>
          </div>

          <div class="gosu_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/고수의 노하우/img_6.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="gtitle">변기 교체 시 미리 알아야 할 2가지 팁</p>
              <div class="gcontent">
                <p>하수구끝판왕⭐(숨고리뷰상위1%)</p>
              </div>
            </div>
          </div>

          <div class="gosu_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/고수의 노하우/img_7.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="gtitle">에어컨 클리닝 노하우 알려 드립니다.</p>
              <div class="gcontent">
                <p>아트홈케어</p>
              </div>
            </div>
          </div>

          <div class="gosu_box">
            <div class="popsvc_img">
              <img src="/resources/image/body_img/고수의 노하우/img_8.png" alt="">
            </div>
            <div class="popsvc_text">
              <p class="gtitle">좋은 줄눈시공 업체 고르는 노하우</p>
              <div class="gcontent">
                <p>프리미엄하우징</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="popscv_controller">
        <button type="button" class="pop_left_btn"><img src="/resources/image/header/방향버튼_좌.png" alt=""></button>
        <button type="button" class="pop_right_btn"><img src="/resources/image/header/방향버튼_우.png" alt=""></button>
      </div>

    </div>


    <!-- 지금 인기 있는 고수 리스트-->
    <div class="hotgosu">

      <!-- 인기 고수 헤더 -->
      <div class="hottitle">
        <span>지금 인기있는 고수</span>
        <a href="">
          <p>전체보기 ></p>
        </a>
      </div>

      <!-- 인기 고수 버튼 (출력종류는 상의후 결정)-->
      <div class="hotbtn">
        <button type="button" id="lesson" class="clicked" value="A">레슨</button>
        <button type="button" id="home_living" value="B">홈/리빙</button>
        <button type="button" id="event" value="C">이벤트</button>
        <button type="button" id="business" value="D">비즈니스</button>
        <button type="button" id="design" value="E">디자인/개발</button>
      </div>

      <!-- 인기 고수 슬라이드 영역 (class="gosuprofile" = 경력이나 응답 시간대출력)-->
      <div class="hotgosu_slidebox">

        <!---------카테고리 슬라이드 1 --------->
        <div class="lessonslide">
          <div class="lesson_list">
            <div class="hotmainbox">
              <a href="#">
                <div class="hoticon">
                  <img src="/resources/image/body_img/지금 인기 있는 고수/icon_1.png" alt="">
                </div>
                <div class="hotcontent" id="hotcontentMasterCount1">
               
                </div>
              </a>
            </div>
			<div id="lessonlist">
			
			</div>	

          </div>
        </div>

        <!---------카테고리 슬라이드 2 --------->
        <div class="home_livingslide">
          <div class="home_living_list">

            <div class="hotmainbox">
              <a href="">
                <div class="hoticon">
                  <img src="/resources/image/body_img/지금 인기 있는 고수/icon_1.png" alt="">
                </div>
                <div class="hotcontent" id="hotcontentMasterCount2">
                 
                </div>
              </a>
            </div>
		<div id="homelist" style="display: flex">
			
		</div>	
           

          </div>
        </div>

        <!---------카테고리 슬라이드 3 --------->
        <div class="eventslide">
          <div class="event_list">

            <div class="hotmainbox">
              <a href="">
                <div class="hoticon">
                  <img src="/resources/image/body_img/지금 인기 있는 고수/icon_1.png" alt="">
                </div>
                <div class="hotcontent" id="hotcontentMasterCount3">
                 
                </div>
              </a>
            </div>
		<div id="eventlist" style="display: flex">
			
		</div>	
         
         
          </div>
        </div>

        <!---------카테고리 슬라이드 4 --------->
        <div class="businessslide">
          <div class="business_list">

            <div class="hotmainbox">
              <a href="">
                <div class="hoticon">
                  <img src="/resources/image/body_img/지금 인기 있는 고수/icon_1.png" alt="">
                </div>
                <div class="hotcontent" id="hotcontentMasterCount4">
               
                </div>
              </a>
            </div>
			<div id="businesslist" style="display: flex">
			
			</div>
			
            
          </div>
        </div>

        <!---------카테고리 슬라이드 5 --------->
        <div class="designslide">
          <div class="design_list">

            <div class="hotmainbox">
              <a href="">
                <div class="hoticon">
                  <img src="/resources/image/body_img/지금 인기 있는 고수/icon_1.png" alt="">
                </div>
                <div class="hotcontent" id="hotcontentMasterCount5">
                  
                </div>
              </a>
            </div>
			<div id="designlist" style="display: flex">
			
			</div>
            

          </div>
        </div>        

      </div>

      <!-- 인기 고수 슬라이드 컨트롤러 -->
      <div class="hotgosu_controller">
        <button type="button" class="hot_left_btn"><img src="/resources/image/header/방향버튼_좌.png" alt=""></button>
        <button type="button" class="hot_right_btn"><img src="/resources/image/header/방향버튼_우.png" alt=""></button>
      </div>

    </div>


    <!-- 중간 이미지 영역 -->
    <div class="middlebox">
      <div class="middleimg">
        <a href=""><img src="/resources/image/main/중간 이미지.png" alt=""></a>
      </div>
    </div>


    <!-- 전국 숨은 고수 영역 -->
    <div class="NationGosu">

      <div class="NationContent">
        <p>전국 숨은 고수</p>
        <span>믿을 수 있는 전문가를 숨고 단 한 곳에서 찾으세요</span>
      </div>
      
      <div class="NationBtn_box">
        <a href=""><div class="NationBtn">서 울</div></a>
        <a href=""><div class="NationBtn">경 기</div></a>
        <a href=""><div class="NationBtn">인 천</div></a>
        <a href=""><div class="NationBtn">세 종</div></a>
        <a href=""><div class="NationBtn">강 원</div></a>
        <a href=""><div class="NationBtn">충 북</div></a>
        <a href=""><div class="NationBtn">충 남</div></a>
        <a href=""><div class="NationBtn">경 북</div></a>
        <a href=""><div class="NationBtn">대 전</div></a>
      </div>
      <div class="NationBtn_box2">
        <a href=""><div class="NationBtn">대 구</div></a>
        <a href=""><div class="NationBtn">전 북</div></a>
        <a href=""><div class="NationBtn">경 남</div></a>
        <a href=""><div class="NationBtn">울 산</div></a>
        <a href=""><div class="NationBtn">광 주</div></a>
        <a href=""><div class="NationBtn">부 산</div></a>
        <a href=""><div class="NationBtn">전 남</div></a>
        <a href=""><div class="NationBtn">제 주</div></a>
      </div>
    </div>


    <!-- 하단 고수 가입 영역-->
    <div class="GosuJoin">
      
      <div class="JoinContent">
        <p>전문가로 활동하시나요?</p>
        <p>숨고에서 새로운 고객을</p>
        <p>만나보세요</p>
        <a href=""><div class="JoinBtn">고수가입</div></a>
      </div>

      <div class="JoinSlideBox">
        <div class="JoinSlide">
          <div class="JoinList">
            <div class="Listbox">
              <img src="/resources/image/body_img/하단 고수가입/img-main-signup-pro-step-1.webp" alt="">
              <p>고객의 요청서를 무료로 받으세요</p>
            </div>
            <div class="Listbox">
              <img src="/resources/image/body_img/하단 고수가입/img-main-signup-pro-step-2.webp" alt="">
              <p>조건이 맞는 고객에게 견적을 보내세요</p>
            </div>
            <div class="Listbox">
              <img src="/resources/image/body_img/하단 고수가입/img-main-signup-pro-step-3.webp" alt="">
              <p>채팅, 전화로 빠르게 상담하고 거래하세요</p>
            </div>
          </div>          
        </div>
        <div class="Join_controller">
          <button type="button" class="Join_left_btn"> < </button>
          <button type="button" class="Join_right_btn"> > </button>
        </div>
      </div>

    </div>



  </div>
 
  <script type="text/javascript" src="/resources/js/main/main.js"></script>

<!-- 이전  -->
<%-- <c:if test="${mdto.uvo.userEmail ne null && mdto.mvo.masterEmail eq null}">

</c:if>
<c:if test="${mdto.mvo eq null && mdto.uvo eq null}">
<a href="/user/login"><button type="button">로그인</button></a>
<a href="/user/signup"><button type="button">회원가입</button></a>
<a href="/service/category"><button type="button">카테고리 홈</button></a>
</c:if>
<c:if test="${mdto.uvo.userEmail ne null && mdto.mvo.masterEmail eq null}">
<a href="/chat/room?chatroomSendid=${ses.userNum }&chatroomRecvid=${3}"><button>채팅방개설</button></a>

<form action="/user/profileRegister?userNum=${ses.userNum }" method="post" enctype="multipart/form-data" > 
<input type="file" id="fileup" name="file">
<button type="button" id="trigger123" >사진올리기</button>
<div id="fileZone" >

</div>
<button type="submit" id="regBtn" >등록</button>

</form> 

<script type="text/javascript" src="/resources/js/file/fileregister.js"></script>


<a href="/user/edit"><button type="button">내 정보수정</button></a>
<a href="/user/delete"><button type="button">회원탈퇴</button></a>
</c:if>

<c:if test="${mdto.mvo.masterEmail ne null && mdto.uvo.userEmail eq null }">


<a href="/user/logout"><button type="button">로그아웃</button></a>
<a href="/user/edit"><button type="button">내 정보수정</button></a>
<a href="/user/delete"><button type="button">회원탈퇴</button></a>
</c:if>
 --%>




<script type="text/javascript">
const msg_login = `<c:out value="${msg_login}" />`;

console.log(msg_login);

if(msg_login === '0'){
	alert('이메일 및 비밀번호를 잘못 입력하셨습니다.');
}

</script>

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
