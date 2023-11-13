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
<link rel="stylesheet" href="/resources/css/mypage/mydetailpage1.css">
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

<body>
 <!--계정 설정 페이지 html start -->
        <div class="account_info" id="account_info">

            <div class="info_title">
                <a href=""><span>마이페이지</span></a>
                <span> > </span>
                <span>계정설정</span>

                <h1>계정설정</h1>
                <div class="info_img">
                    <img src="/resources/image/header/프로필box.png" alt="">
                </div>
                <div class="info_input">
                    <img id="target_img" src="/resources/image/마이페이지/사진등록icon.svg" alt="이미지없음">
                </div>

                <form name="signform" method="POST" enctype="multipart/form-data">
                    <input type="file" id="file" name="file" style="display:none;">
                </form>
            </div>

            <div class="info_nav">
                <a href="#" id="name_modify">
                    <div class="info_nav_title">
                        <div class="name_title">
                            <p>이름</p>
                            <h3>${uvo.userName}</h3>
                        </div>
                        <div class="name_title_btn">
                            >
                        </div>
                    </div>
                </a>

                
                <div class="info_nav_email">
                        <div class="name_title">
                            <p>이메일</p>
                            <h3>${uvo.userEmail}</h3>
                        </div>
                        <div class="name_title_btn">
                            >
                        </div>
                </div>
                

                <a href="" id="password_modify">
                    <div class="info_nav_password" >
                        <div class="name_title">
                            <p>비밀번호</p>
                            <h3>********</h3>
                        </div>
                        <div class="name_title_btn">
                            >
                        </div>
                    </div>
                </a>

                <a href="" id="phone_modify">
                    <div class="info_nav_tell">
                        <div class="name_title">
                            <p>휴대전화 번호</p>
                            <h3>${uvo.userPhone}</h3>
                        </div>
                        <div class="name_title_btn">
                            >
                        </div>
                    </div>
                </a>

                <a href="/user/delete">
                    <div class="info_nav_title">
                        <div class="name_title">
                            <h3>계정 탈퇴</h3>
                        </div>
                        <div class="name_title_btn">
                            >
                        </div>
                    </div>
                </a>
            </div>

        </div>

        <div class="name_input" id="name_input">
            <div class="name_input_box">
                <h1>이름 수정</h1>
                <div class="name_content">
                    <img src="/resources/image/마이페이지/이름수정icon.svg" alt="">
                    <span>이름(실명)을 사용하시면 고용율이 150% 상승합니다</span>
                </div>
                <div class="name_modify">
                    <p>이름</p>
                    <input type="text" id="modifyUserName" value="${uvo.userName }">
                    <div class="name_input_Btn">
                       <a href="/user/detailmypage?userNum=${uvo.userNum } "><button type="button" id="backBtn" class="backBtn">취소</button></a> 
                        <button type="button" id="modifyBtn" class="modifyBtn">수정 완료</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="password_input" id="password_input">
            <div class="password_input_box">
                <h1>비밀번호 변경</h1>
                <div class="password_modify">
                    <p>기존 비밀번호</p>
                    <div class="pw_main">
                        <div class="pw_box">
                            <input type="password" name="" id="pw_input" onclick="pwcheckInput()" placeholder="현재 비밀번호를 입력해주세요">
                            <button type="button" class="hiddenBtn" id="hiddenBtn" onclick="pwmodifyBtnOff()">숨김</button>
                            <button type="button" class="openBtn" id="openBtn" onclick="pwmodifyBtnOn()">표시</button>
                        </div>
                        <p id="pw_check">비밀번호를 입력해주세요.</p>
                    </div>

                    <p>새로운 비밀번호</p>
                    <div class="pw_box2">
                        <input type="password" id="passwordInput" placeholder="영문+숫자 조합 8자리 이상 입력해주세요">
                    </div>

                    <p>새로운 비밀번호 확인</p>
                    <div class="pw_box3">
                        <input type="password" id="confirmPasswordInput" placeholder="비밀번호를 한번 더 입력해주세요">
                    </div>

                    <div class="password_input_Btn">
                         <a href="/user/detailmypage?userNum=${uvo.userNum } "><button type="button" id="backBtn" class="backBtn">취소</button></a>
                        <button type="button" id="modifypwBtn" class="modifyBtn">변경 완료</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="phone_input" id="phone_input">
            <div class="phone_input_box">
                <h1>휴대전화 번호 변경</h1>
                <div class="phone_modify">
                    <p>휴대전화 번호</p>
                    <input type="text" id="phoneInput" value="${uvo.userPhone }">
                    <div class="phone_input_Btn">
                       <a href="/user/mypage?userNum=${uvo.userNum }"> <button type="button" id="backBtn" class="backBtn">취소</button></a>
                       <button type="button" id="modifyPhoneBtn" class="modifyBtn">수정 완료</button>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="/resources/js/mypage/mypagedetail.js"></script>
    	<script type="text/javascript">
	    const userNumVal = `<c:out value="${uvo.userNum}"/>`;
	    console.log("userNumVal : "+ userNumVal);
	   </script>

</body>
</html>