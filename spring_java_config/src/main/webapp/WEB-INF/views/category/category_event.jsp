<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>category</title>
    <link rel="stylesheet" href="/resources/css/category_home.css">
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
   


    <div id="mainContent">
        <!-- 검색창 부분 -->
        <div id="searchBox">
            <div id="blackBox"></div>
                <h2>원하는 서비스를 요청하고<br>견적을 받아보세요</h2>
                <input type="text" placeholder="어떤분야의 전문가를 찾으시나요?"><button type="submit" id="serviceBtn">
                    <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0iI0Q4RDhEOCIgZmlsbC1vcGFjaXR5PSIwIiBkPSJNMCAwaDE4djE4SDB6Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRkZGRiIgZD0iTTE0Ljk0NCAxMy44ODdsNC44MzcgNC44MzhhLjc0Ny43NDcgMCAxIDEtMS4wNTYgMS4wNTZsLTQuODM4LTQuODM3YTguNDU4IDguNDU4IDAgMSAxIDEuMDU3LTEuMDU3em0tMS41MDUtLjU2M2E2Ljk2NCA2Ljk2NCAwIDEgMC0uMTE0LjExNC43NTUuNzU1IDAgMCAxIC4xMTQtLjExNHoiLz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="">
                    &nbsp;<p>서비스 검색</p></button>
                <img src="https://assets.cdn.soomgo.com/images/services/img-service-home.png?webp=1" alt="">
        </div>
        <!-- category부분 -->
        <div id="categoryListBox">
            <ul>
                <li><a href="/service/categoryLesson"><img src="https://assets.cdn.soomgo.com/icons/category1/lesson.svg" alt=""><span id="category1">레슨</span></a></li>
                <li><a href="/service/categoryHouseLiving"><img src="https://assets.cdn.soomgo.com/icons/category1/home-living.svg" alt=""><span id="category2">홈/리빙</span></a></li>
                <li><a href="/service/categoryEvent"><img src="https://assets.cdn.soomgo.com/icons/category1/event.svg" alt=""><span id="category3">이벤트</span></a></li>
                <li><a href="/service/categoryBusiness"><img src="https://assets.cdn.soomgo.com/icons/category1/business.svg" alt=""><span id="category4">비즈니스</span></a></li>
                <li><a href="/service/categoryDesignDevelp"><img src="https://assets.cdn.soomgo.com/icons/category1/design-development.svg" alt=""><span id="category5">디자인/개발</span></a></li>
            </ul>
        </div>

        <div id="popularServiceBox">
            <h2>인기 서비스</h2>
            <div class="service_box">
                <div class="img_line">
                    <div class="img_box">
                        <img style="width: 310px; height: 180px; border-radius: 15px 15px 0 0;" src="https://dmmj3ljielax6.cloudfront.net/upload/service/990d34b0-4c57-4941-aada-56aec3c303d6.png?webp=1" alt="">
                        <div class="img_boxText"><p>웨딩 사진 촬영(본식)</p></div>
                    </div>
                    <div class="img_box">
                        <img style="width: 310px; height: 180px; border-radius: 15px 15px 0 0;" src="https://dmmj3ljielax6.cloudfront.net/upload/service/3a0a78bd-d0d4-4186-9010-2ec6e8115cdf.jpg?webp=1" alt="">
                        <div class="img_boxText"><p>결혼식 사회자</p></div>
                    </div>
                    <div class="img_box">
                        <img style="width: 310px; height: 180px; border-radius: 15px 15px 0 0;" src="https://dmmj3ljielax6.cloudfront.net/upload/service/eef09b22-0a57-4b95-8c37-c0fe34ab1e07.png?webp=1" alt="">
                        <div class="img_boxText"><p>개인용 영상 촬영</p></div>
                    </div>                    
                </div>
                <div class="img_line">
                    <div class="img_box">
                        <img style="width: 310px; height: 180px; border-radius: 15px 15px 0 0;" src="https://dmmj3ljielax6.cloudfront.net/upload/service/06ee7cd0-ffc2-49fd-89d0-43f98e99be9d.png?webp=1" alt="">
                        <div class="img_boxText"><p>영상 편집</p></div>
                    </div>
                    <div class="img_box">
                        <img style="width: 310px; height: 180px; border-radius: 15px 15px 0 0;" src="https://dmmj3ljielax6.cloudfront.net/upload/service/395f7f93-6d78-4b2b-98b6-0be5afcc22c8.png?webp=1" alt="">
                        <div class="img_boxText"><p>댄스 공연</p></div>
                    </div>
                    <div class="img_box">
                        <img style="width: 310px; height: 180px; border-radius: 15px 15px 0 0;" src="https://dmmj3ljielax6.cloudfront.net/upload/service/b750cc2d-f30d-4567-9d0a-885f0260c55b.png?webp=1" alt="">
                        <div class="img_boxText"><p>클래식 공연</p></div>
                    </div>                    
                </div>
                <div class="img_line">
                    <div class="img_box">
                        <img style="width: 310px; height: 180px; border-radius: 15px 15px 0 0;" src="https://dmmj3ljielax6.cloudfront.net/upload/service/e7c1f58f-53fe-48f8-8457-540ec16eb4fc.png?webp=1" alt="">
                        <div class="img_boxText"><p>행사 MC</p></div>
                    </div>
                    <div class="img_box">
                        <img style="width: 310px; height: 180px; border-radius: 15px 15px 0 0;" src="https://static.cdn.soomgo.com/upload/service/166147a5-0cfa-4888-95d4-63a57982307e.png?webp=1" alt="">
                        <div class="img_boxText"><p>헤어/메이크업</p></div>
                    </div>
                    <div class="img_box">
                        <img style="width: 310px; height: 180px; border-radius: 15px 15px 0 0;" src="https://dmmj3ljielax6.cloudfront.net/upload/service/f986ec71-c39c-4c4b-96a6-5db5d96ed6b4.png?webp=1" alt="">
                        <div class="img_boxText"><p>파티/행사 기획</p></div>
                    </div>                    
                </div>
            </div>
            
        </div>
    
    </div>
   
    <jsp:include page="/resources/final_project/footer.jsp"></jsp:include>

</body>
</html>