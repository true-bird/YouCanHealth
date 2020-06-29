<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%-- JSTL Core --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><%-- JSTL Function --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
	.chkOk {
    	color: black;
		background-color:green;
		border: 0;
		outline: 0;
	}
	.chkFail {
		background-color:none;
	}
	body {
	font-size: 30px;
		text-align:center;
		background-color: #1F2324;
		color: #ffffff;
	
}
</style>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/community.css?after'/>" />
</head>
<body>
	<h2>회원가입을 축하합니다!!</h2>
	<br>
	<br> 회원님이 만드신 정보
	<br><br>
	<table class="type08">

		<tr>
			<th>아이디</th>
			<th>패스워드</th>
			<th>이름</th>
			
		</tr>
		<tr>
			<td>${userinitDto.id}</td>
			<td>${userinitDto.password}</td>
			<td>${userinitDto.name}</td>
			
		</tr>
		
	</table>
	<br>
	<br> *현재 회원님의 포인트는 [ ] 점 이며, 향후 저희 페이지에 방문해 활동하시는만큼 누적됩니다.
	<br> 누적된 포인트는 모으시면 게시글에 아름다운 효과를 넣으실 수 있으니, 참고하시기 바랍니다.
	<br> 언제나 고객의 입장에서 정성을 다하는 야너헬이 되도록 노력하겠습니다.
	<br> 많은 애용부탁드립니다.*
	<br>
	<br>
	<h1>
		<a class="redtext" href="<c:url value='/' />">홈으로가기</a>
	</h1>
</body>
</html>