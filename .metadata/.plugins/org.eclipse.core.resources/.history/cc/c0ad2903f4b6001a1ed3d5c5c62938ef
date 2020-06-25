<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%-- JSTL Core --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><%-- JSTL Function --%>
<%
	Object sessionid = request.getSession().getAttribute("userId");
%>
<%
	String message = request.getParameter("message");
%>
<!DOCTYPE html>
<html>
<head>
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
	font-size: 25px;
		text-align:center;
		background-color: #1F2324;
		color: #ffffff;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
<%if (message != null) {%>
alert("<%=message%>");
<%}%>
	
</script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/community.css?after'/>" />
</head>

<body>
<div style="color: #ffffff; font-size: 30px;">내정보수정화면</div>
	<hr>
	<br>
	<form action="<%=contextPath%>/user/updateUserResult" method="post">
		<input type="hidden" name="seq" value="${userDto.seq}"> <input
			type="hidden" name="id1" value="${userDto.id}">
		<table  class="type08">
			<tr>
				<th>사용자의 아이디</th>
				<th>회원님이 선택한 운동경력</th>
				</tr><tr>
				<td>${userDto.id}</td>
				<td>운동경력 <c:choose>
						<c:when test="${userDto.exerdate eq 0 }">
		초심자			
		</c:when>
						<c:when test="${userDto.exerdate eq 1 }">
		1~6개월		
		</c:when>
						<c:when test="${userDto.exerdate eq 2 }">
		6~12개월			
		</c:when>
						<c:when test="${userDto.exerdate eq 3 }">
		1년이상		
		</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose></td></tr> <tr><th colspan="2"> 운동경력이 변하셨나요?</th></tr> <tr><td colspan="2"><input type="radio"
					name="exerdate" checked value="0"> 없음 <input type="radio"
					name="exerdate" value="1">1~6개월 <input type="radio"
					name="exerdate" value="2">6~12개월 <input type="radio"
					name="exerdate" value="3">1년 이상</td>
			</tr>
		</table>

		<br> 변경하시려면 비밀번호를 입력하여주십시오. <br>
		<br>
		<table>

			<tr>
				<td>사용자의 비밀번호</td>
<td>&nbsp;</td>
				<td><input style="font-size: 25px;" size="25px" type="password" name="password"></td>
			</tr>

		</table>
		<br>
		
		<input type="hidden" name="userPassword" value="${userDto.password}">
		<table><tr>
		<td><input style="font-size: 20px;" type="submit" size="20" value="수정하기"></td><td>&nbsp;</td>
		<td><input style="font-size: 20px;" type="reset" value="초기화"></td>
		</table>
	</form>
	

</body>
</html>