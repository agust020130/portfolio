<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css"/>
<link rel="stylesheet" type="text/css" href="/resources/final_project/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<header>
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
</header>
<body>

<div class="main_box">
<div id="loginContent">

<h1>로그인</h1>

<div id=loginBox>
	<form action="login_auth">
	<div id=loginForm>
		
		<div id=email>
			<div id="emailName">
			이메일
			</div>
		<br>
		<input type="email" id="useremail" name="userEmail" placeholder="example@soomgo.com"><br>
			<span class="error-message" id="email-error">유효한 이메일 주소를 입력해주세요.</span>		</div>
		<div id=pw>
			<div id=pwName>
			비밀번호
			</div>
		<br>
		<input type="password" id="userpw" name="userPw" placeholder="비밀번호를 입력해주세요.">
		<div id="pwCheck">표시</div><br>
		</div>
		<button type="submit" id=loginButton>이메일 로그인</button>
	</form>
</div>
	<div id="sign">
		<a href="" id="pwFind">비밀번호 찾기</a>
		|
		<a href="signup" id="signUp">회원가입</a><br>
	</div>
	<div id="anotherLogin">
		<button id="kakao"><img src="/resources/image/kakao.png">카카오로 시작</button><br>
		<button id="naver"><img src="/resources/image/naver.png">네이버로 시작</button><br>
		<button id="fb"><img src="/resources/image/fb.png">페이스북으로 시작</button>
	</div>
</div>
</div>
	<jsp:include page="/resources/final_project/footer.jsp"></jsp:include>

<script type="text/javascript" src="/resources/js/login.js">
</script>
</body>
</html>