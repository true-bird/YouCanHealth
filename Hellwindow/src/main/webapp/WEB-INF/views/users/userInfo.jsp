<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>내정보 화면</h1>
	내정보 관리|
	<a href="<c:url value='/' />">Home</a>
	<hr>
	아이디 ${userDto.id}
	<br> 패스워드 ${userDto.password}
	<br> 이름 ${userDto.name}
	<br> 생년월일${userDto.birth}
	<br> 성별 ${userDto.sex}

	<br> 운동경력
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
	</c:choose>


	<br> 등급
	<c:choose>
		<c:when test="${userDto.rating eq 0 }">
		회원
		</c:when>
		<c:when test="${userDto.rating eq 1 }">
		매니져
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>

	<br>
	<br>
	<a href="<c:url value='/user/userFavoriteSports'/>">내가선택한 운동</a>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<c:url value='/user/userRoutineList' />">내가만든 루틴</a>

	<table border="4">

		<tr>
			<td>운동명</td>
			<td><c:forEach var="sportsLike" items="${sportsLike}"
					varStatus="status">

					<input type="hidden" name="userId" value="<%=id%>">
			${sportsLike.exName}
			
		</c:forEach></td>
		</tr>
	</table>


	<br>
	<br>
	<br>
	
	<form action="<%=contextPath%>/user/updateUserInfo">
		<input type="submit" value="내정보 수정하기">
	</form>
	<form action="<%=contextPath%>/user/userPasswordChange">
		<input type="submit" value="비밀번호 변경하기">
	</form>

	<form action="<%=contextPath%>/user/userDelete">
		<input type="hidden" name="seq" value="${userDto.seq}"> <input
			type="submit" value="누르면 바로 탈퇴[신중히]">
	</form>

	<input type="button" value="내 루틴 보기"
		onClick="location.href='<%=contextPath%>/user/userRoutineList'">



</body>
</html>