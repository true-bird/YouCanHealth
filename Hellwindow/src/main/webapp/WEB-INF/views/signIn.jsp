<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="<%=contextPath%>/css/signIn.css">
</head>
<body>
	<h1>로그인 화면</h1>
	<form action="<%=contextPath%>/loginCheck" method="post">
		<table>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="myId">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" name="myPassword">
				</td>
			</tr>
			<tr>
				<th>
					<input type="submit" value="로그인">
				</th>
				<th>
					<a href="<c:url value='/signUp' />">
					<input type="button" value="회원가입">
					</a>
				</th>
			</tr>
		</table>
	</form> 
</body>
</html>