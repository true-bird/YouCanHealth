<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 화면</h1>
	<hr>
	<br>
	<a class="redtext" href="<c:url value='/' />">Home</a>|
	{회원가입}	|
	<a class="redtext" href="<c:url value='/signIn' />">로그인</a>
	<hr width="60%">

	<br>
	<form action="<%=contextPath%>/signUpResult" method="post">
		아이디 <input type="text" id="myId"name="myId" size="10" maxlength="10"> <br>
		패스워드 <input type="password" name="myPassword" size="20" maxlength="10">
		<br> 패스워드(확인) <input type="password" id="myPassword" name="remyPassword" size="20"
			maxlength="10"> 
			<br> 
			이름 <input type="text" name="MyName"size="20" maxlength="21"> 
			<br>
			생년월일<input type="date" value="2020-06-11" min="1960-01-01" max="2020-07-01">
			<br> 성별 <input type="radio"name="sex" value="남자" checked>남자 
			<input type="radio" name="sex" value="여자">여자 
			<br>
			운동경력
			<input type="radio" name="exerdate"checked value="처음">처음
			<input type="radio" name="exerdate" value="1~6개월">1~6개월
			<input type="radio" name="exerdate" value="6~12개월">6~12개월
			<input type="radio" name="exerdate" value="1년 이상">1년 이상
			
			<br>
		 	<input type="submit"id="login" size="20" value="등록"> 
		 	<input type="reset"value="초기화">
	</form>
</body>
</html>