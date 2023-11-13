<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대표서비스 선택</title>
<link rel="stylesheet" href="/resources/css/master/mastercategory.css">
</head>
<body>
	<div>
		<div>카테고리 선택</div>
		<form action="/master/categorySelect" method="post">
		<ul>
		<li> <input type="hidden" name="masterNum" value=${ses.masterNum}> </li>		
		<li><label> <input type="radio" name="masterCategorycode" value="1">방송댄스레슨</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="2">보컬레슨</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="3">골프레슨</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="4">기타레슨</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="5">중국어과외</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="6">비즈니스영어</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="7">퍼스널트레이닝</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="8">수학과외</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="9">영어과외</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="10">집인테리어</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="11">상업공간인테리어</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="12">타일시공</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="13">욕실/화장실리모델링</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="14">페인트시공</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="15">싱크대교체</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="16">도배장판시공</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="17">인테리어필름시공</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="18">조명인테리어</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="19">웨딩사진촬영</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="20">결혼식사회자</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="21">개인용영상촬영</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="22">영상편집</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="23">댄스공연</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="24">클래식공연</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="25">행사MC</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="26">헤어/메이크업</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="27">파티/행사기획</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="28">회계/사무</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="29">영상광고</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="30">블로그마케팅</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="31">일본어통역</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="32">중국어통역</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="33">BGM/사운드제작</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="34">명함인쇄</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="35">출판</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="36">출력/제본</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="37">프레젠테이선디자인</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="38">인쇄물디자인</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="39">앱디자인</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="40">일러스트디자인</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="41">제품디자인</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="42">패키지디자인</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="43">라벨디자인</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="44">간판디자인</label></li>
		<li><label> <input type="radio" name="masterCategorycode" value="45">소프트웨어개발</label></li>
		</ul>
		<button type="submit"> 선택 </button>
		</form>
	</div>
	

</body>
</html>