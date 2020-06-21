<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/routine.css?after'/>" />
</head>
<body>
	<div style="height:70px"></div>
	<div id="title">
		<p>
			<span style="font-weight: bold">${routine.name}</span>
		</p>
	</div>
	<div class="sectionWrapper leftAlign">
		<div class="section-background background-image"
			style="background-image:${url}"></div>
		<div class="section-background background-cover"></div>
		<div class="section">
			<p class="section-text title rightAlign">
			${routine.category}
			<c:if test="${routine.category == ''}">그냥</c:if>
			<span> 루틴</span></p>
			<p class="section-text difficulty">
				난이도
				<c:forEach begin="1" end="${routine.difficulty}">★</c:forEach><c:forEach begin="${routine.difficulty}" end="4">☆</c:forEach>
			</p>
		</div>
	</div>
	<div id="routineDetail">
		<c:forEach var="array" items="${routineInfo}" varStatus="status">
			<div
				class="sectionWrapper 
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
									<td><img class="routineImg"
										src="<c:url value='${sports.image}'/>"></td>
									<td><span class="verticalTop">${sports.sportsName}</span>
										<span>${sports.sportsSet}세트 </span>/ <span>${sports.sportsCount}회</span>
									</td>
								</tr>
							</table>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<br>
		</c:forEach>
	</div>
	<input id="floatingButton" type="button" value="루틴 확정"
		onClick="location.href='<c:url value='/user/userRoutineList'/>'">
</body>
</html>