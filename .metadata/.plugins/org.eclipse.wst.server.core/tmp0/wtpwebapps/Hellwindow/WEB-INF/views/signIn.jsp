<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	background-image: none;
	background-color: #1F2324;
	color: #FFFFFF;
}

input[type=text], [type=password] {
	width: 270px;
	border: 2px solod #ccc;
	color: blue;
	font-family: "나눔명조"; /* 폰트모양 */
	font-size: 30px; /* 폰트 크기 */
}

input[value=""] {
	width: 70px;
}

[type=number] {
	font-size: 20px;
}

input[type=button], [type=reset], [type=submit] {
	width: 200px;
	border: 2px solod #ccc;
	padding: 10px 20px;
	background-color: orange;
	color: white;
	font-family: "나눔명조"; /* 폰트모양 */
	font-size: 15px; /* 폰트 크기 */
	font-weight: bold;
}
</style>
<meta charset="UTF-8">
<title>야너헬</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/signIn.css?after'/>" />
</head>
<body>
	<c:if test="${msg eq 'NotMatching'}">
		<p style="color: red; text-align: center;">아이디나 비밀번호가 일치하지 않습니다</p>
	</c:if>
	<br>
	<br>
	<br>
	<br>
	<form action="<%=contextPath%>/loginCheck" method="post">
		<table style="background-color: #364156;">
		<tr>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp</td>
				<th style="font-size: 25px;">아이디 &nbsp&nbsp</th>
				<td><input type="text" name="userId"></td>
				<td>&nbsp&nbsp&nbsp</td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp</td>
				<th style="font-size: 25px;">비밀번호 &nbsp&nbsp</th>
				<td><input type="password" name="userPassword"></td>
				<td>&nbsp&nbsp&nbsp</td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp</td>
				<th colspan="2"><input type="submit" value="로그인"> <a
					href="<c:url value='/signUp' />"> <input type="button"
						value="회원가입">
				</a></th>
				<td>&nbsp&nbsp&nbsp</td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
			</tr>
		</table>
	</form>
</body>
</html>