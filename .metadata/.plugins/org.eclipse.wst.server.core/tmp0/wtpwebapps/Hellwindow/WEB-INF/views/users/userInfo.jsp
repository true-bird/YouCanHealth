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
	<h1>내정보 화면</h1>
	내정보 관리| <a href="<c:url value='/' />">Home</a>
	<hr>
	아이디 
	<br>
	패스워드
	<br>
	이름
	<br>
	생년월일
	<br>
	성별
	<br>
	운동경력
	<br>
	등급
	<br>
	<br>
	<a href="<c:url value='/user/userFavoriteSports'/>">내가선택한 운동</a>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<c:url value='/user/userRoutineList' />">내가만든 루틴</a>
	<br>
	<br>
	<br>
	<input type="button" value="내정보 수정하기"
	onClick="location.href='<%=contextPath%>/user/updateUserInfo'">
	
</body>
</html>