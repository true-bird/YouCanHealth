<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="<%=contextPath%>/css/routine.css?after">
</head>
<body>
	<br>
	<br>
	<br>
	<div class ="sectionWrapper leftAlign">
		<div class="section-background background-image"
		style="background-image:${url}"></div>
		<div class="section-background background-cover"></div>
		<div class="section">
			<p class="section-text title">${routineName}</p>
			<p class="section-text difficulty">
				난이도 
				<c:forEach begin="1" end="${routineDifficulty}">★</c:forEach><c:forEach begin="${routineDifficulty}" end="4">☆</c:forEach>
			</p>
		</div>
	</div>
	<br>
	<c:forEach var="array" items="${routineInfo}" varStatus="status">
		<div class ="sectionWrapper 
			<c:choose>
				<c:when test="${status.index%2==0}">leftAlign</c:when>
				<c:otherwise>rightAlign</c:otherwise>
			</c:choose>">
			<h3>
				<c:choose>
					<c:when test="${status.index eq 0}">월</c:when>
					<c:when test="${status.index eq 1}">화</c:when>
					<c:when test="${status.index eq 2}">수</c:when>
					<c:when test="${status.index eq 3}">목</c:when>
					<c:when test="${status.index eq 4}">금</c:when>
					<c:when test="${status.index eq 5}">토</c:when>
					<c:when test="${status.index eq 6}">일</c:when>
				</c:choose>
			</h3>
			<hr width="50%">
			<c:choose>
				<c:when test="${fn:length(array) == 0}">휴식</c:when>
				<c:otherwise>
					<c:forEach var="sports" items="${array}" varStatus="status">
						<table>
							<tr>
								<td>
									<img class="routineImg" src="<c:url value='/images/routine/routine1.png'/>" >		
								</td>
								<td>
									<span class="verticalTop">${sports.sportsName}</span>
									<span>${sports.sportsSet}세트 </span>/
									<span>${sports.sportsCount}회</span>
								</td>
							</tr>
						</table>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>
		<br>
	</c:forEach>


	<h1>루틴상세화면</h1>
	<div class="leftAlign">
		<h4>월</h4>
		
		
		
	</div>
	<div class="rightAlign">
		<h4>화</h4>
		<hr width="50%">
		<h4>쉬어</h4>
		<p>격렬히/3회</p>
	</div>
	<div class="rightAlign">
		<h4>수</h4>
		<hr width="50%">
		<img class="routineImg" src="<c:url value='/images/routine/routine1.png'/>" >
		<h4>가슴또땡겨</h4>
		<p>12세트/3회</p>
	</div>
	<a class="redtext" href="<c:url value='/user/userRoutineList' />">등록</a>
</body>
</html>