<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="<c:url value='/'/>js/routineContent.js"></script>
</head>
<body>
	<div id="title">
		<p>
			<span id="category" style="font-weight: bold">${category} </span> <span>루틴</span>
		</p>
	</div>
	<c:forEach var="routine" items="${routineList}" varStatus="status">
		<div class="sectionWrapper" style="cursor: pointer;"
			id="${routine.id}">
			<div class="section-background background-image"></div>
			<div class="section-background background-cover"></div>
			<div
				class="section
			<c:choose>
				<c:when test="${status.index%2==0}">rightAlign</c:when>
				<c:otherwise>leftAlign</c:otherwise>
			</c:choose>">
				<div class="category" style="display: none;">${routine.category}</div>
				<p class="section-text title">${routine.name}</p>
				<p class="section-text difficulty" id="${routine.difficulty}">
					난이도
					<c:forEach begin="1" end="${routine.difficulty}">★</c:forEach><c:forEach begin="${routine.difficulty}" end="4">☆</c:forEach>
				</p>
			</div>
		</div>
		<br>
	</c:forEach>
	<form id="routineDetails" method="post" action="<c:url value='/'/>routine/routineDetails">
		<input type="hidden" id="url" name="url"> <input type="hidden"
			id="msg" name="msg" value="possibleAdd"> <input type="hidden"
			id="routineCategory" name="routineCategory"> <input
			type="hidden" id="routineDifficulty" name="routineDifficulty">
		<input type="hidden" id="routineName" name="routineName"> <input
			type="hidden" id="routineId" name="routineId">
	</form>
</body>
</html>