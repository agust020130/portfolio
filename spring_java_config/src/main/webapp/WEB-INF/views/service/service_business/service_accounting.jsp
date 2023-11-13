<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>category</title>
    <link rel="stylesheet" href="/resources/css/service/service.css">
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
   
  <div class="main_img_box">
        <img src="https://dmmj3ljielax6.cloudfront.net/upload/service/e0ecea9c-dfa9-4f6c-a3d4-034c40f1a03a.png?webp=1" alt="">
        <div id="blackBox"></div>
      </div>
  <div class="main_box">
      
        
        <div id="informationBox">
            <h2>회계/세무</h2>
            <div id="grade">
                <ul>
                    <li><img src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt=""></li>
                    <li><img src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt=""></li>
                    <li><img src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt=""></li>
                    <li><img src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt=""></li>
                    <li><img src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt=""></li>
                </ul>
                <h4>5</h4>
            </div>
            <div id="infoBox">
                <div class="detailInfoBox">
                    <h4>16,988</h4>
                    <p>활동 고수</p>
                </div>
                <div class="detailInfoBox">
                    <h4>172,093</h4>
                    <p>누적 요청서</p>
                </div>
            </div>
            
            
            <div id="selectMainBox">
                <span style="color: gray; font-size: 13px;">완료 시 평균 5개 견적 도착</span>
                <div id="selectBar"></div><div id="selectBarAni"></div>
                <span id="selectBarPercent">0%</span>
                <h2>의뢰인 유형을 선택해주세요.</h2>
                <ul id="selectUl">
                    <label><li class="selectLi"><div id="firstSelectLi"><input type="radio" name="estimate_purpose" class="radio" onclick="etcRedo()" value="개인"><p>개인</p></div></li></label>
                    <label><li class="selectLi"><div><input type="radio" name="estimate_purpose" class="radio" onclick="etcRedo()" value="개인사업자"><p>개인사업자</p></div></li></label>
                    <label><li class="selectLi"><div><input type="radio" name="estimate_purpose" class="radio" onclick="etcRedo()" value="법인사업자"><p>법인사업자</p></div></li></label>
                    <label><li class="selectLi"><div><input type="radio" name="estimate_purpose" class="radio" onclick="etcRedo()" value="개업 예정"><p>개업 예정</p></div></li></label>
                    <label><li class="selectLi"><div id="lastSelectLi"><input type="radio" name="estimate_purpose" class="radio" id="etc" onclick="etcEvent()"><p>기타</p></div></li></label>
                </ul>
                <input type="number" hidden="hidden" value="0" id="value">
                <button type="button" hidden="hidden" id="prevBtn" onclick="prevPage()">이전</button>
                <button type="submit" id="nextBtn" onclick="nextPage()">다음</button>
            </div>
            <div id="whatIsSoomgoBox">
                <div class="ExplainBox">
                    <h4>숨고는 어떤 곳인가요?</h4>
                    <p>서비스가 필요한 고객과 서비스를 제공하는 숨은 고수를 쉽고 빠<br>
                        르게 연결해드리는 전문가 매칭 서비스입니다.<br>
                        1분 내외의 요청서를 작성하면, 여러 고수님들이 맞춤형 견적을<br>
                        보내드려요.<br>
                        맘에 쏙 드는 고수의 맞춤형 서비스를 받아보세요.</p>
                </div>
                <div class="ExplainBox">
                    <h4>회계/세무 고수만을 모았다!</h4>
                    <p>회계사, 세무사가 필요하신가요?<br>
                        기업 회계부터 세무 컨설팅까지, 딱 맞는 회계/세무 서비스를 받을<br>
                        수 있어요. 숨고에는 다양한 경력의 회계/세무사가 활동하고 있답<br>
                        니다.<br>
                        지금 바로 요청서를 작성하시고, 회계/세무사를 만나보세요!</p>
                </div>
            </div>
        </div>
</div>
<script type="text/javascript">
	const login_auth = `<c:out value="${msg_login}" />`;
	const user = `<c:out value="${ses.userEmail}"/>`;
	console.log(login_auth);
	console.log(user);	
	if(user == null){
		alert('로그인된 회원만 견적 요청이 가능합니다.');
		history.back();   
	}
	
</script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/resources/js/service_business/service_accounting.js"></script>  
 <jsp:include page="/resources/final_project/footer.jsp"></jsp:include>
</body>
</html>