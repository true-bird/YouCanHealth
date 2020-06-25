<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%-- JSTL Core --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><%-- JSTL Function --%>
<%
	String message = request.getParameter("message");
%>
<!DOCTYPE html>
<html>
<head>
<style>
.chkOk {
	color: black;
	background-color: green;
	border: 0;
	outline: 0;
}

.chkFail {
	background-color: none;
}

body {
	font-size: 25px;
	text-align: center;
	background-color: #1F2324;
	color: #ffffff;
}
</style>
<script type="text/javascript">
<%if (message != null) {%>
alert("<%=message%>
	");
<%}%>
	
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="color: #ffffff; font-size: 30px;">패스워드 변경하기</div>
	<hr>
	<br>
	<br>
	<br>
	<form action="<%=contextPath%>/user/userPasswordCheck" method="post">
		<input type="hidden" name="id" value="${userId}">
		<table style="background-color: #364156;">
			<tr>
				<td>&nbsp;</td>
				<td align="center" style="padding: 20px;">현재패스워드</td>
				<td><input style="font-size: 20px" type="password"
					name="password"></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td align="center" style="padding: 20px;">패스워드</td>
				<td><input style="font-size: 20px" type="password" name="newpw"></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td align="center" style="padding: 20px;">재확인</td>
				<td><input style="font-size: 20px" type="password" name="Repw"></td>
				<td>&nbsp;</td>
			</tr>
		</table>
		<br> <br>
		<table>
			<tr>
				<td><input style="font-size: 20px;" type="submit" value="변경하기"></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td><a href="<c:url value='/user/userInfo' />"> <input
						style="font-size: 20px;" type="button" value="취소"></a></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>

				<td><input style="font-size: 20px;" type="reset" value="초기화"></td>
			</tr>
		</table>
	</form>
</body>
</html>