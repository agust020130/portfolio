<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/master/master_profile.css">
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
   <div class="container">
        <div class="webbody">
            <div class="profile-body">
                <div class="my-profile-body">
                    <div class="observe-container">
                        <div class="thumb-contaner">
                            <div class="thumb">
                                <div data-name="image" class="profileimg" style="background-image: url(/img/123.jpg);">
                                </div>
                            </div>
                            <div class="sideContainer">
                                <div class="countContainer">
                                    <div class="employCount">1</div>
                                    <div class="master-info">현재 고용수</div>
                                </div>
                                <div class="buttonContainer">
                                    <button type="button" class="photoChange">사진등록하기</button>
                                    <button type="button" class="preview">미리보기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--실제 프로필 작성 구간 -->
                    <div class="detailProfileBody">
                        <!-- 이름수정칸 -->
                        <div class="detailContainer">
                            <div class="nameTitle">
                         
                                <h2>이름</h2>
                                <div>
                                    <div class="nameUpdate"><button type="button" class="detailButton" id="detailUpdate">수정</button></div>
                                    <div class="nameSave"><button type="button" class="detailHiddenButton"id="detailSave">저장</button></div>
                                </div>
                            </div>
                            <div>
                                <div class="value" id="nameValue">${cmdto.mvo.masterName }</div>
                                <div class="updateName" id="updateName">
                                    <input type="text" id="inputName" class="inputName">
                                    <div class="inputDetailHiddenOk" id="inputDetailHiddenOk">이름또는 업체명을 등록해주세요</div>
                                    <div class="inputDetailHiddenErr" id="inputDetailHiddenErr">이름을 입력해주세요</div>
                                </div>
                            </div>
                            
                        </div>
                        <!-- 대표서비스 -->
                        <div class="detailContainer">
                            <div class="nameTitle">
                                <h2>대표서비스</h2>
                                <div>
                                    <div class="nameUpdate"><button type="button" class="detailButton" id="detailUpdateCategory">수정</button></div>
                                    <div class="nameSave"><button type="button" class="detailHiddenButton"id="detailSaveCategory">저장</button></div>
                                </div>
                               
                            </div>
                            <div class="value" id="serviceValue">${cmdto.cgvo.categoryName }</div>
                        </div>
                        <!-- 상세소개 -->
                        <div class="detailContainer">
                            <div class="nameTitle">
                                <h2>한줄소개</h2>
                                <div>
                                    <div class="nameUpdate"><button type="button" class="detailButton" id="detailIntroUpdate">수정</button></div>
                                    <div class="nameSave"><button type="button" class="detailHiddenButton"id="detailIntroSave">저장</button></div>
                                </div>
                            </div>
                            <div>
                                <div class="value" id="introvalue">${cmdto.mvo.masterIntro}</div>
                                <div>
                                    <textarea placeholder="고수 자신에 대한 소개"  rows="4" wrap="soft" class="form-control is-valid" maxlength="80" id="detailIntroTextarea"></textarea>
                                </div>
                            </div>
                        </div>
                        <!-- 활동 지역 -->
                        <div class="detailContainer">
                            <div class="nameTitle">
                                <h2>활동지역</h2>
                               	   <div>
                                    <div class="nameUpdate"><button type="button" class="detailButton" id="detailDesirUpdate">수정</button></div>
                                    <div class="nameSave"><button type="button" class="detailHiddenButton"id="detailDesirSave">저장</button></div>
                                </div>
                            </div>
                            <div>
                                <div class="value" id="disirValue">${cmdto.mvo.masterDesireregion }</div>
                            </div>
                            
                            <div class="diserInput" id="diserInput">
                            	<input type="text" id="city"> 시
                            	<input type="text" id="gu" > 구
                            	<input type="text" id="dong" > 동
            
                            </div>
                        </div>
                        <!-- 연락가능시간 -->
                        <div class="detailContainer">
                            <div class="nameTitle">
                                <h2>연락 가능 시간</h2>
                                <div>
                                    <div class="nameUpdate"><button type="button" class="detailButton" id="detailTimeUpdate">수정</button></div>
                                    <div class="nameSave"><button type="button" class="detailHiddenButton"id="detailTimeSave">저장</button></div>
                                </div>
                            </div>
                            <div>
                                <div class="value" id="timevalue">오전12시-오전1시 </div>
                                    <div class="info" id="info">
                                        
                                        <div class="dropdown time-picker btn-group">
                                            <button type="button" class="btn startTime" id="startbtn" >
                                                <span class="time" id="startSelect"> 
                                                오전 9시
                                                </span>
                                                <span>▼</span>
                                                <span>부터</span>
                                            </button>
                                            <span class="timecomma">ㅡ</span>
                                           <div>
                                            <ul class="dropdown-menu" id="dropmenubtn">
                                        
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="0">오전9시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="1">오전10시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="2">오전11시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="3">오후12시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="4">오후1시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="5">오후2시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="6">오후3시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="7">오후4시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="8">오후5시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="9">오후6시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="10">오후7시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="11">오후8시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="12">오후9시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="13">오후10시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item" data-value="14">오후11시</a>
                                                </li>
                								<li role="presentation">
                                                    <a role="menui tem" href="#" target="_self" class="dropdown-item" data-value="15">오전12시</a>
                                                </li>
                                            </ul>
                                           
                                           </div>
                                   			<button type="button" class="btn lasttime" id="lastbtn" >
                                   				<span class="time" id="lastSelect">오후2시</span>
                                   				<span>▼</span>
                                   				<span>까지</span>
                                   			</button>
                                   			 <div>
                                            <ul class="dropdown-menu" id="dropmenubtntwo">
                                        
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="0">오전9시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="1">오전10시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="2">오전11시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="3">오후12시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="4">오후1시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="5">오후2시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="6">오후3시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="7">오후4시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="8">오후5시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="9">오후6시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="10">오후7시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="11">오후8시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="12">오후9시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="13">오후10시</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" href="#" target="_self" class="dropdown-item1" data-value="14">오후11시</a>
                                                </li>
                								<li role="presentation">
                                                    <a role="menui tem" href="#" target="_self" class="dropdown-item1" data-value="15">오전12시</a>
                                                </li>
                                            </ul>
                                           
                                           </div>
                                        </div>
                                    </div>
                               
                            </div>
                            
                        </div>
                       <!-- 고용수 수정칸 -->
                        <div class="detailContainer">
                            <div class="nameTitle">
                         
                                <h2>직원수(본인포함)</h2>
                                <div>
                                    <div class="nameUpdate"><button type="button" class="detailButton" id="detailSizeUpdate">수정</button></div>
                                    <div class="nameSave"><button type="button" class="detailHiddenButton"id="detailSizeSave">저장</button></div>
                                </div>
                            </div>
                            <div>
                                <div class="value" id="sizeValue">${cmdto.mvo.masterSize }명</div>
                                <div class="updateName" id="updateSize">
                                    <input type="text" id="inputSize" class="inputName">
                                    <div class="inputDetailHiddenOk" id="inputDetailHiddenOk">정상입력입니다</div>
                                    <div class="inputDetailHiddenErr" id="inputDetailHiddenErr">숫자를입력해주세요</div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
      <script type="text/javascript">
	    const masterNumVal = `<c:out value="${cmdto.mvo.masterNum}"/>`;
	    console.log("masterNumVal : "+ masterNumVal);
	   </script>
	   
<script src="/resources/js/master/masterprofile.js"></script>
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