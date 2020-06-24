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
<script type="text/javascript"
	src="<c:url value='/'/>js/routineDetails.js"></script>
</head>
<body>
	<div style="height: 70px"></div>
	<div id="title">
		<p>
			<span style="font-weight: bold">${routine.name}</span>
		</p>
	</div>
	<div id="url" style="display: none">${url}</div>
	<div class="sectionWrapper leftAlign">
		<div
			class="section-background background-image
			<c:if test="${empty url}"> myroutine-image</c:if>">

		</div>
		<div class="section-background background-cover"></div>
		<div class="section">
			<p class="section-text title rightAlign">
				${routine.category}
				<c:if test="${routine.category == ''}">그냥</c:if>
				<span> 루틴</span>
			</p>
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
				<h3 class="day">
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
				<hr class="dayHr" width="50%">
				<div class="sportsList">
					<c:choose>
						<c:when test="${fn:length(array) == 0}">
							<p class="rest">휴식</p>
						</c:when>
						<c:otherwise>
							<c:forEach var="sports" items="${array}" varStatus="status">
								<p class="sportsPart">
									<span>${sports.sportsPart}</span>
								</p>
								<table class="daySports">
									<tr>
										<td>
											<div class="seq" style="display: none;">${sports.seq}</div> <img
											class="routineImg" src="<c:url value='${sports.image}'/>">
										</td>
										<td>
											<div>
												<p>${sports.sportsName}</p>
												<p class="routineSet">
													<span>${sports.sportsSet}세트</span>/ <span>${sports.sportsCount}회</span>
												</p>
											</div>
										</td>
									</tr>
								</table>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<br>
		</c:forEach>
	</div>
	<br>
	<br>
	<br>
	<form id="sportsInfo" method="post"
		action="<c:url value='/'/>sports/sportsDetails">
		<input type="hidden" id="sportsSeq" name="seq">
	</form>
	<c:if test="${not empty msg}">
		<form id="routineEnroll" method="post"
			action="<c:url value='/'/>user/insertUserRoutine">
			<input type="hidden" name="routineId" value="${routine.id}">
			<input id="floatingButton" type="submit" value="루틴 확정">
		</form>
	</c:if>
</body>
</html>