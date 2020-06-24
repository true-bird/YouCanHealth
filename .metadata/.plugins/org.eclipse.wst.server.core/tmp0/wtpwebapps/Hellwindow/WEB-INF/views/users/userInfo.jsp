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
	아이디  ${userinitDto.id}
	<br>
	패스워드 ${userinitDto.password}
	<br>
	이름 ${userinitDto.name}
	<br>
	생년월일${userinitDto.birth}
	<br>
	성별 ${userinitDto.sex}
	
	<br>
	운동경력
	<c:choose>
		<c:when test="${userinitDto.exerdate eq 0 }">
		초심자			
		</c:when>
		<c:when test="${userinitDto.exerdate eq 1 }">
		1~6개월		
		</c:when>
		<c:when test="${userinitDto.exerdate eq 2 }">
		6~12개월			
		</c:when>
		<c:when test="${userinitDto.exerdate eq 3 }">
		1년이상		
		</c:when>
		      <c:otherwise>
      </c:otherwise>
	</c:choose>	
	
	
	<br>
	등급
	<c:choose>
		<c:when test="${userinitDto.rating eq 0 }">
		회원
		</c:when>
		<c:when test="${userinitDto.rating eq 1 }">
		매니져
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>
	
	<br>
	<br>
	<a href="<c:url value='/user/userFavoriteSports'/>">내가선택한 운동</a>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<c:url value='/user/userRoutineList' />">내가만든 루틴</a>
	<br>
	<br>
	<br>
	<input type="button" value="내정보 수정하기"
	onClick="location.href='<%=contextPath%>/user/updateUserInfo'">
	<input type="button" value="내 루틴 보기"
	onClick="location.href='<%=contextPath%>/user/userRoutineList'">
</body>
</html>