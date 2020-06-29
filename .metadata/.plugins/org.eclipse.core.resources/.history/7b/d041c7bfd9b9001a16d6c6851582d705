<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
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
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/community.css?after'/>" />
</head>
<body>
<div style="color: #ffffff; font-size: 30px;">내정보 화면</div>
	<hr>
	<br>
	<br>
	<table class="type08">
	<tr><th colspan="2">정보</th>
	<tr><th>아이디</th><td>${userDto.id}</td></tr>
	<tr><th>패스워드 </th><td>${userDto.password}</td></tr>
	<tr><th>이름</th><td> ${userDto.name}</td></tr>
	<tr><th>생년월일</th><td>${userDto.birth}</td></tr>
	<tr><th>성별</th><td> ${userDto.sex}</td></tr>


	<tr><th>운동경력</th><td>
	<c:choose>
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
	</c:choose></td></tr>


	<tr><th>등급</th><td>
	<c:choose>
		<c:when test="${userDto.rating eq 0 }">
		회원
		</c:when>
		<c:when test="${userDto.rating eq 1 }">
		매니져
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose></td></tr>
</table>
	<br>
	<br>
	<br>
	<br>
	<table><tr>
	<td style="font-size: 35px;"><a class="redtext" href="<c:url value='/user/userFavoriteSports'/>">내가선택한 운동</a></td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td style="font-size: 35px;">
	<a class="redtext" href="<c:url value='/user/userRoutineList' />">내 루틴</a></td></tr>
	</table>
	<br>
<br>
	
	<table>
	<tr><td>
	<form action="<%=contextPath%>/user/updateUserInfo">
		<input style="font-size: 30px;" type="submit" value="내정보 수정하기">
	</form>
	</td><td>&nbsp;&nbsp;&nbsp;</td>
	<td>
	<form action="<%=contextPath%>/user/userPasswordChange">
		<input style="font-size: 30px;" type="submit" value="비밀번호 변경하기">
	</form>
</td><td>&nbsp;&nbsp;&nbsp;</td><td>
	<form action="<%=contextPath%>/user/userDelete">
		<input type="hidden" name="seq" value="${userDto.seq}"> <input
			style="font-size: 30px;" type="submit" value="누르면 바로 탈퇴[신중히]">
	</form>
	</td>
</table>



</body>
</html>