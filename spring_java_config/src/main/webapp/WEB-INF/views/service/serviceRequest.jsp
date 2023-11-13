<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test</title>
<link rel="stylesheet" href="/resources/css/service/serviceRequest1.css">
<link rel="stylesheet" href="/resources/css/service/chat.css">
<link rel="stylesheet" href="/resources/css/service/emptyList.css">
<style type="text/css"> /*css 안먹어서 여기다해둠  */
   a:link { color: black; }
   a:visited { color: black; }
   a:hover { color: black; }
   a:active { color: black; }
</style>
</head>
<%--  <jsp:include page="/resources/final_project/header.jsp"></jsp:include> --%>
<link rel="stylesheet" href="/resources/css/main/footer.css">
<body>
 <div class="main_box">
  <div class="serviceTitleBackground">
			<div class="serviceTitle">
				<div class="titleNameLeft">
				<h3>${cvo.categoryName }</h3><br> <!-- 카테고리명 수정됨 -->
				<span>요청일</span> <p>${now}</p> <!-- 현재날짜로 수정됨 -->
				</div>
				<div class="titleNameRight">
					<button>내 요청서</button>
					<button>요청 마감</button>
				</div>
			</div>
		</div>
  <div class="allchat-list">
        <div id="container">            
        </div>
            <div class="pagebody">
            <!-- 채팅방리스트 들어가자리 -->
            <c:if test="${listEmpty eq 1}">
	            <div class="ezengo_pay_page" id="ezengo_pay_page">
	       
	
	            <div class="paycontent">
	                <div class="imgbox">
	                    <img src="/resources/image/거래내역icon.png" alt="">
	                </div>
	                <div class="conbox">
	                    <p>거래 내역이 없습니다.</p>
	                    <span>숨고페이 거래 내역이 없습니다.</span>
	                    <span>서비스 이용 후 다시 확인해 주세요!</span>
	                </div>
	            </div>
	        	</div>
            </c:if>
          <c:forEach items="${list }" var="list">
             <div class="chat-list-room">
          <a href="/" style="text-decoration: none;" id="chattag">
            <ul id="chat">
                <li id="chat-list">
<!--                     <section class="profilecontatiner"> -->
                        <div class="profileimg" style="background-color: black  ;"> 
                        </div>
                        <div>
                            <div id="master-name"><h5>${list.masterName }</h5></div>
                            <div id="master-info">
                                상위카테고리 : ${list.masterUpCategorycode  }
                                <span class="divider">|</span>
                                하위카테고리 : ${list.masterCategoryCode }
                            </div>
                        </div>
                    </section>
                    
                    <div id="last-msg">
                            <p>10회 고용됨</p><br>
                            <p>지역 : ${list.masterDesireregion }</p>
                    </div>
                    <div id="btnDiv">
                    <button type="button" id="serviceRead">견적서 보기</button>
                   <a href="/chat/room?chatroomSendid=${ses.userNum }&chatroomRecvid=${list.masterNum}"><button type="button" id="doChat">채팅하기</button></a>
                    </div>
                </li>
            </ul>
        </a>
        </div>
          </c:forEach>
           </div>
           </div>

</div>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>  

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